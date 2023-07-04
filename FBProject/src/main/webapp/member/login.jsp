<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Football-Play! 로그인</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="../main/favicon.png">
	
<!--Google Font link-->
<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<link rel="stylesheet" href="../main/assets/css/slick/slick.css"> 
<link rel="stylesheet" href="../main/assets/css/slick/slick-theme.css">
<link rel="stylesheet" href="../main/assets/css/animate.css">
<link rel="stylesheet" href="../main/assets/css/iconfont.css">
<link rel="stylesheet" href="../main/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="../main/assets/css/bootstrap.css">
<link rel="stylesheet" href="../main/assets/css/magnific-popup.css">
<link rel="stylesheet" href="../main/assets/css/bootsnav.css">

<!--Theme custom css -->
<link rel="stylesheet" href="../main/assets/css/style.css">
<!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="../main/assets/css/responsive.css" />

<script src="../main/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<style type="text/css">
	#logincont .row {
		margin: 0px auto;
		height: 80vh;
		padding-top: 200px;
		
	}
	#login {
		margin: 0px auto;
		width: 500px;
		background-color: #DCDCDC;
		border-radius: 30px;
		padding: 50px;
	}
	#join {
		color: #d9534f;
	}
	#join.hover {
		text-decoration: underline;
	}
</style>
</head>
<body>

	<div class="container" id=logincont>
		<div class="row">
		
		<div class="form-group" id="login">
		<form>	
			
				<div class="form-group">
					<label class="form-label mt-4 text-left">아이디</label>
					<input type="text" class="form-control" name=id>
				</div>
				
				<div class="form-group">
					<label class="form-label mt-4 text-left">비밀번호</label>
					<input type="password" class="form-control" name=pwd>
				</div>
				
				<div class="d-grip gap-2 text-center" style="margin-top: 10px;">
					<button class="btn btn-danger btn-lg">로그인</button>
				</div>
				
				<div class="form-group text-center" style="margin-top: 10px;">
					<label class="form-label">아직 회원이 아니시라면? <a href="../member/join.do" id="join">회원가입</a></label>
				</div>
			
		</form>
		</div>

		</div>
	</div>
	
</body>
</html>