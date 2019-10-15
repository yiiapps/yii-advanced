<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/bootstrap3.4.1/favicon.ico">

    <title>登录</title>

    <!-- Bootstrap core CSS -->
    <link href="/bootstrap3.4.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="/bootstrap3.4.1/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/bootstrap3.4.1/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="/bootstrap3.4.1/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <form class="form-signin" id="login-form" action="/user/login" method="post">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="loginform-username" class="sr-only">Email address</label>
        <input type="text" id="loginform-username" class="form-control" name="LoginForm[username]" placeholder="用户名" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="loginform-password" class="form-control" name="LoginForm[password]" value="" placeholder="Password" required>
        <div class="checkbox">
          <label for="loginform-rememberme">
            <input name="LoginForm[rememberMe]" value="1" id="loginform-rememberme" type="checkbox" value="remember-me" checked=""> 记住我
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="/bootstrap3.4.1/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
