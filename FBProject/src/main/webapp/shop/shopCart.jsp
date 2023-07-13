<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.row {
		margin: 0px auto;
	}
	
	.shopping-cart {
		padding: 30px;
	}
	
	
</style>
</head>
<body>

<div style="height: 150px;"></div>
	
<div class="container">
	<div class="row">
		<div class="shopping-cart">
			<h3 style="margin-bottom: 10px;">장바구니</h3>
			<table class="table">
				<tr class="success">
					<th width=20%></th>
					<th width=40% class="text-center">상품명</th>
					<th width=10% class="text-center">가격</th>
					<th width=10% class="text-center">수량</th>
					<th width=10% class="text-center">Total</th>
					<th width=10%></th>
				</tr>
			</table>
			
			<div class="total" style="text-align: right;">
			
			<input type=button class="btn btn-lg btn-default" value="구매하기" style="width: 150px;">
			</div>
			
		</div>
		
		<div style="height: 50px;"></div>
	</div>
</div>
</body>
</html>