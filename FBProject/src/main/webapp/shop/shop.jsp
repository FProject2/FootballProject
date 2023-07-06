<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Football-Play 온라인 스토어</title>
<link rel="icon" type="image/png" href="../main/favicon.png">
<style type="text/css">
	#menu {
		margin: 0px auto;
		background-color: #538053;
		border-radius: 30px;
	}
	
	#navbar {
		text-align: center;
		margin-top: 25px;
		margin-left: 50px;
	}
	
	.nav-item {
		margin-left: 20px;
		margin-right: 20px;
	}
	
	.nav-link {
		font-size : 15px;
		color : white;
	}
	
</style>
</head>
<body>
<!-- 
		주니어/여성
		축구화/풋살화
		트레이닝화
		축구공
		축구용품
		골피커용품
		기능성웨어
		유니폼
		의류
		타종목
 -->

<!-- 여백 -->
<div style="height: 100px;"></div>
 
<div class="container">
	<div class="row" id="menu">
		<nav class="navbar bg-light navbar-light">
			<ul class="navbar-nav justify-content-center" id="navbar">
			
			<!-- scvo → shopCategoryVo -->
			<c:forEach var="scvo" items="${scList }">
				<li class="nav-item">
					<a class="nav-link" href="#">${scvo.category_name }</a>
				</li>
				
			</c:forEach>
			</ul>
		</nav>
	</div>
	
	<div style="height: 30px;"></div>
	
	<div class="row">
		
	</div>
</div>

</body>
</html>