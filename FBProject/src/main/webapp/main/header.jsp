<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Start Top Search -->
<div id="header">
<nav class="navbar navbar-default bootsnav navbar-fixed">

	<div class="top-search">
		<div class="container">
		    <div class="input-group">
			    <span class="input-group-addon"><i class="fa fa-search"></i></span>
		        <input type="text" class="form-control" placeholder="Search">
		        <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
	        </div>
	    </div>
	</div>
 
	<!-- End Top Search -->
	<div class="container"> 
		

	<!-- Start Header Navigation -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
			<i class="fa fa-bars"></i>
		</button>
		
		<a class="navbar-brand" href="../main/main.do">
			<!-- <img src="assets/images/logo.png" class="logo" alt=""> --><h4><b>Football-Play</b></h4>
		</a>
	</div>
	<!-- End Header Navigation -->


	<!-- navbar menu -->
	<div class="collapse navbar-collapse" id="navbar-menu">
		<ul class="nav navbar-nav navbar-right">
			<a href="#contact"><img src="../main/assets/images/shop_icon.png" style="padding-top: 13px"></a>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="../main/main.do">구장예약</a></li>              
			<li><a href="#features">공지사항</a></li>
			<li><a href="#features">문의하기</a></li>
			<li><a href="#business">마이페이지</a></li>
			<li><a href="../member/login.do">로그인</a></li>
		</ul>
	</div><!-- /.navbar-collapse -->
	</div>
	
</nav>
<!-- div id top -->
</div>

</body>
</html>