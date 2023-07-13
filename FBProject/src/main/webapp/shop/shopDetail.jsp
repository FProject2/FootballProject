<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		margin-left: 65px;
	}
	
	.nav-item {
		margin-left: 20px;
		margin-right: 20px;
	}
	
	.nav-link {
		font-size : 15px;
		color : white;
	}
	
	h3 {
		font-size: 24px;
	}
	
	.detail-data {
		margin-left: 50px;
		color: #3C3C3C;
	}
	
	#goods_image {
		padding: 30px;
	}
	
	.selected-goods {
		padding: 10px 20px 10px 20px;
		background-color: #f5f5f5;
		font-weight: 600;
	}
	
	.goods_detail_image {
		text-align: center;
		margin-top: 70px;
	}
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('.selected-goods').hide()
	$('#account').change(function() {
		$('.selected-goods').show()
		let price = $('#price').attr("data-price")
		let account = $(this).val()
		let total = price * account;
		let size = $('.size').val()
		$('#total').text(total)
		$('#size').text(size)
	})
})
</script>
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
						<a class="nav-link" href="../shop/shop.do?cno=${scvo.cno }&page=${curpage }">${scvo.category_name }</a>
					</li>
				</c:forEach>
				</ul>
			</nav>
		</div>
		
		<div class="row" style="margin-top: 80px">
			<table class="detail-data" style="margin-bottom: 30px;">
				<tr>
					<td width="50%" rowspan=10 id="goods_image">
						<img src="${vo.goods_image }" style="width: 100%">
					</td>
					<td width="50%"><h3>${vo.goods_name }</h3></td>
				</tr>
				<tr>
					<td width="50%">제조사 : ${vo.brand }</td>
				</tr>
				<tr>
					<td width="50%">원산지 : ${vo.origin }</td>
				</tr>
				<tr>
					<td width="50%">소비자가 : <span style="text-decoration:line-through;">${vo.dbcprice }원</span></td>
				</tr>
				<tr>
					<td width="50%">판매가 : <span id="price" data-price="${vo.price }">${vo.dbprice }</span>원</td>
				</tr>
				<tr>
					<td width="50%">브랜드 : ${vo.brand }</td>
				</tr>
				<tr>
					<td width="50%">사이즈&nbsp;&nbsp;
						<select class="form-select" style="width: 400px;">
							<option selected>&nbsp;- [필수] 옵션을 선택해 주세요 -&nbsp;</option>
							<c:forEach var="svo" items="${sList }">
							<option class="size">${svo.gsize }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td width="50%">수량&nbsp;&nbsp;
						<select class="form-select" style="width: 60px;" id="account">
							<c:forEach var="i" begin="1" end="10">
								<option value="${i }">&nbsp;${i }개</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<div class="selected-goods" style="display: none">
							<span>${vo.goods_name }</span>
							<br>
							<div class="text-right">사이즈 : <span id="size"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;총 금액 : <span id="total"></span>&nbsp;원</div>
						</div>
					</td>
				</tr>
				<tr class="text-center">
					<td width="60%">
						<a href="#" class="btn btn-lg btn-success" style="width: 200px;">바로구매</a>
						<a href="#" class="btn btn-lg btn-default" style="width: 200px;">장바구니</a>
					</td>
				</tr>
			</table>
		</div>
		<hr>
		
		<div style="height: 50px;"></div>
		
		<div class="goods_detail_image">
			<h3 style="margin-bottom: 20px;"> 상품 상세 정보 </h3>
			<c:choose>
                <c:when test="${empty vo.goods_detail}">
                    <img src="../main/assets/images/pp.jpg">
                </c:when>
                <c:otherwise>
                    <img src="${vo.goods_detail}">
                </c:otherwise>
            </c:choose>
		</div>
		
	</div>
</div>
		


</body>
</html>