<?php
namespace restful\modules\v1\controllers;

use restful\modules\v1\models\LoginForm;
use restful\modules\v1\models\SignupForm;
use restful\modules\v1\models\User;
use Yii;
use yii\rest\ActiveController;

class UserController extends ActiveController
{
    public $modelClass = 'common\models\User';

    /**
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {
        $model = new LoginForm();
        if ($model->load(Yii::$app->getRequest()->getBodyParams(), '') && $model->login()) {
            return ['status' => 0, 'msg' => 'success', 'data' => ['token' => $this->createToken(Yii::$app->user->id)]];
        } else {
            return ['status' => 1, 'msg' => '登录失败'];
        }
    }

    public function actionRegist()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->getRequest()->getBodyParams(), '') && $model->signup()) {
            Yii::$app->session->setFlash('success', 'Thank you for registration. Please check your inbox for verification email.');
            return ['status' => 0, 'msg' => 'success'];
        }
        return ['status' => 1, 'msg' => 'faild', 'errors' => $model->getErrors()];
    }

    private function createToken($uid)
    {
        $jwt = Yii::$app->jwt;
        $signer = $jwt->getSigner('HS256');
        $key = $jwt->getKey();
        $time = time();

        $token = $jwt->getBuilder()
            ->issuedBy(Yii::$app->params['jwt']['issuedBy']) // Configures the issuer (iss claim)
            ->permittedFor(Yii::$app->params['jwt']['permittedFor']) // Configures the audience (aud claim)
            ->identifiedBy(Yii::$app->params['jwt']['identifiedBy'], true) // Configures the id (jti claim), replicating as a header item
            ->issuedAt($time) // Configures the time that the token was issue (iat claim)
        // ->canOnlyBeUsedAfter($time) // Configures the time that the token can be used (nbf claim)
            ->expiresAt($time + Yii::$app->params['jwt']['expiresAt']) // Configures the expiration time of the token (exp claim)
            ->withClaim('uid', $uid) // Configures a new claim, called "uid"
            ->getToken($signer, $key); // Retrieves the generated token

        // $token->getHeaders(); // Retrieves the token headers
        // $token->getClaims(); // Retrieves the token claims

        return (string) $token;
    }

    public function actionParseToken()
    {
        $token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJub25lIiwianRpIjoiNGYxZzIzYTEyYWEifQ.eyJpc3MiOiJodHRwOlwvXC9leGFtcGxlLmNvbSIsImF1ZCI6Imh0dHA6XC9cL2V4YW1wbGUub3JnIiwianRpIjoiNGYxZzIzYTEyYWEiLCJpYXQiOjE1NzEwMjQ5MTMsIm5iZiI6MTU3MTAzMDkxMywiZXhwIjoxNTcxMDI4NTEzLCJ1aWQiOjF9.";
        $token = Yii::$app->jwt->getParser()->parse($token); // Parses from a string
        $token->getHeaders(); // Retrieves the token header
        $token->getClaims(); // Retrieves the token claims

        return [
            $token->getHeader('jti'), // will print "4f1g23a12aa"
            $token->getClaim('iss'), // will print "http://example.com"
            $token->getClaim('uid'), // will print "1"
        ];
    }

    public function actionValidateToken()
    {
        $token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJub25lIiwianRpIjoiNGYxZzIzYTEyYWEifQ.eyJpc3MiOiJodHRwOlwvXC9leGFtcGxlLmNvbSIsImF1ZCI6Imh0dHA6XC9cL2V4YW1wbGUub3JnIiwianRpIjoiNGYxZzIzYTEyYWEiLCJpYXQiOjE1NzEwMjUwMjUsIm5iZiI6MTU3MTAyNTA4NSwiZXhwIjoxNTcxMDI4NjI1LCJ1aWQiOjF9.";
        $token = Yii::$app->jwt->getParser()->parse($token);

        $data = Yii::$app->jwt->getValidationData(); // It will use the current time to validate (iat, nbf and exp)
        $data->setIssuer('http://example.com');
        $data->setAudience('http://example.org');
        $data->setId('4f1g23a12aa');

        var_dump($token->validate($data)); // false, because we created a token that cannot be used before of `time() + 60`

        $data->setCurrentTime(time() + 61); // changing the validation time to future

        var_dump($token->validate($data)); // true, because validation information is equals to data contained on the token

        $data->setCurrentTime(time() + 4000); // changing the validation time to future

        var_dump($token->validate($data)); // false, because token is expired since current time is greater than exp
    }
}
