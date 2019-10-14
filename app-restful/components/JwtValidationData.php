<?php
namespace restful\components;

class JwtValidationData extends \sizeg\jwt\JwtValidationData
{

    /**
     * @inheritdoc
     */
    public function init()
    {
        $this->validationData->setIssuer(\Yii::$app->params['jwt']['issuedBy']);
        $this->validationData->setAudience(\Yii::$app->params['jwt']['permittedFor']);
        $this->validationData->setId(\Yii::$app->params['jwt']['identifiedBy']);

        parent::init();
    }
}
