<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Football-Play! 회원가입</title>
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
<style type="text/css">
	.row {
		margin: 0px auto;
		height: 140vh;
		padding-top: 120px;
		
	}
	#login {
		margin: 0px auto;
		width: 500px;
		background-color: #DCDCDC;
		border-radius: 30px;
		padding: 50px;
	}
</style>
<script src="../main/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
Shadowbox.init({
	players:['iframe']
})
$(function(){
	$('#idCheckBtn').click(function(){
		/* Shadowbox.open({
			content:'../member/idcheck.do',
			player:'iframe',
			width:370,
			height:180,
			title:'아이디 중복체크'
		}) */
		window.open("../member/idcheck.do","","width=500, height=300")
	})
	
	$('#postBtn').click(function(){
		Shadowbox.open({
			content:'../member/postfind.do',
			
				player:'iframe',
				width:520,
				height:350,
				title:'우편번호 검색'
		})
	})
	
	$('#joinBtn').click(function(){
		$('#joinFrm').submit();
	})
})
</script>
</head>
<body>
<jsp:include page="../main/header.jsp"></jsp:include>

<section>
	<div class="container py-4">
		<div class="row">
		
		<div class="form-group" id="login">
		<form method=post action="../member/join_ok.do" name="joinFrm" id="joinFrm">	
			
				<div class="form-group">
					<label class="form-label mt-4 text-left">이름</label>
					<input type="text" class="form-control" name=name>
				</div>
			
				<div class="form-group">
					<label class="form-label mt-4 text-left">아이디</label>
					<input type="text" class="form-control" name=id>
					<input type=button value="아이디 중복체크" class="btn btn-sm btn-danger" id="idCheckBtn">
				</div>
				
				<div class="form-group">
					<label class="form-label mt-4 text-left">닉네임</label>
					<input type="text" class="form-control" name=nickname>
				</div>
				
				<div class="form-group">
					<label class="form-label mt-4 text-left">비밀번호</label>
					<input type="password" class="form-control" name=pwd>
				</div>
				
				<div class="form-group">
					<label class="form-label mt-4 text-left">성별</label>
					<input type=radio name=sex value=남자 checked>남자
	  				<input type=radio name=sex value=여자>여자
				</div>
				
				<div class="form-group">
					<label class="form-label mt-4 text-left">생년월일</label>
					<input type="date" name=birthday class="form-control">
				</div>
				
				<div class="form-group">
					<label class="form-label mt-4 text-left">이메일</label>
					<input type=text name=email id=email size=55 class="input-sm form-control">
	  				<input type=button value="이메일 중복 체크"  class="btn btn-sm btn-danger" id=emailBtn>
				</div>
				
				<div class="form-group">
					<label class="form-label mt-4 text-left">우편번호</label>
					<input type=text name=post id=post size=10 class="input-sm form-control">
	  				<input type=button value="우편번호검색" class="btn btn-sm btn-info" id=postBtn>
				</div>
				
				<div class="form-group">
					<label class="form-label mt-4 text-left">주소</label>
					<input type=text name=addr1 id=addr1 size=55 class="input-sm form-control" readonly>
				</div>
				
				<div class="form-group">
					<label class="form-label mt-4 text-left">상세주소</label>
					<input type=text name=addr2 id=addr2 size=55 class="input-sm form-control">
				</div>
				
				<div class="form-group">
					<label class="form-label mt-4 text-left">전화번호</label>
					<select name=phone1>
	  					<option>010</option>
	  				</select>
	  				<input type=text name=phone id=phone size=12 class="input-sm">
	  				<input type=button value="전화체크" class="btn btn-sm btn-warning" id=phoneBtn>
				</div>
				
				<div class="d-grip gap-2 text-center">
					<button class="btn btn-danger btn-lg" id="joinBtn">회원가입</button>
					<button class="btn btn-danger btn-lg">취소</button>
				</div>
		</form>
		</div>

		</div>
	</div>
</section>

<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>