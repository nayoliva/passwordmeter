<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Avaliador de segurança para senhas.</title>

<!-- CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link type="text/css" href="resources/css/pwdmeter.css" media="screen" rel="stylesheet" />

<!-- javascript -->
<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js" language="javascript"></script>
<script type="text/javascript" src="resources/js/pwdmeter.js" language="javascript"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-show-password/1.0.3/bootstrap-show-password.min.js"></script>

</head>
<body>

	<div class="container">

      <form class="form-signin" id="formPassword" name="formPassword" action="/" method="post">
        <h2 class="form-signin-heading">Avaliador de senhas</h2> 
        <label for="inputPassword" class="sr-only">Senha</label>
        <input type="password" id="passwordPwd" class="form-control" placeholder="Password" required name="passwordPwd" autocomplete="off" onkeyup="chkPass(this.value);">
        <input type="text" id="passwordTxt" name="passwordTxt" autocomplete="off" onkeyup="chkPass(this.value);" class="hide" />
		<div class="checkbox">
          <label>
            <input type="checkbox" id="mask" name="mask" value="1" checked="checked" onclick="togPwdMask();"> Esconder
          </label>
        </div>     
        <div class="row">
			<div class="col-lg-6">
				<div id="scorebarBorder">
					<div id="score">0%</div>
					<div id="scorebar">&nbsp;</div>
                </div>
			</div>
            <div class="col-lg-6">
            	<label id="complexity">Muito curta</label>
            </div>       
       </div>		
      </form>
  	</div>
</body>
</html>