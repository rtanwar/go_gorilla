<HTML lang="en">
  <BODY>
    <head>
      <title><<< .title >>></title>
      <link rel="stylesheet" href="/static/css/bootstrap.css">
      <!-- added for 386 effect
      <link rel="stylesheet" href="<?php echo base_url(); ?>css/bootstrap.386.css"> -->

      <link rel="stylesheet" href="/static/css/font-awesome.css" />
      <link rel="stylesheet" href="/static/css/style.css" />
      
      


      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <meta charset="utf-8">
      <title>Login Page</title>    
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <![endif]-->    
    </head>
    <body>
      <!--login modal-->
      <div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">              
              <h1 class="text-center">Login</h1>
            </div>
            <div class="modal-body">            
              <form action="" method="post" class="form col-md-12 center-block">
                <div class="input-group">
                  <span class="input-group-addon glyphicon glyphicon-user"></span>
                  <input autofocus type="text" id="identity"  name="identity" class="form-control input-lg" placeholder="Email">
                </div>
                <div class="input-group">
                <span class="input-group-addon glyphicon glyphicon-lock"></span>
                  <input type="password" id="password"  name="password" class="form-control input-lg" placeholder="Password">
                </div>
                <div class="form-group">
                  <button class="btn btn-primary btn-lg btn-block">Sign In</button>
                  <span class="pull-right"><a href="#">Register</a></span><span><a href="/login/forgot_password">Need help?</a></span>
                </div>
              </form>
            </div>
            <div class="modal-footer">
            Hellow <<<.identity>>>
            </div>
          </div>
        </div>
      </div>
      <!-- script references -->
      <script src="/static/js/jquery.js"></script>
      <script src="/static/js/bootstrap.min.js"></script>      
    </body>
    </html>