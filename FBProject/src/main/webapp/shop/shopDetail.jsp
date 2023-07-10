<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div style="height: 100px;"></div>

<div class="container">
	<div class="row" id="list">
		<div class="row" id="menu">
			<nav class="navbar bg-light navbar-light">
				<ul class="navbar-nav justify-content-center" id="navbar">
				
				<!-- scvo → shopCategoryVo -->
				<c:forEach var="scvo" items="${scList }">
					<li class="nav-item">
						<a class="nav-link" href="../shop/shop_clist.do?cno="${scvo.cno }>${scvo.category_name }</a>
					</li>
				</c:forEach>
				</ul>
			</nav>
		</div>
		
		
	</div>
</div>
		


</body>
</html>