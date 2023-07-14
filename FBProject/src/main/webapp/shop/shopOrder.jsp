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
	.row1 {
		margin: 0px auto;
		width: 900px;
	}
	
	.table > th {
		vertical-align: middle;
		text-align: center;
	}
</style>
</head>
<body>

<div style="height: 100px;"></div>

<div class="container">
	<div class="row" id="buy">
		
		<div class="row1" style="margin-bottom: 100px;">
			<h3 style="margin-bottom: 20px">주문 상품</h3>
			<table class="table">
				<tr class="success">
					<th width=20%></th>
					<th width=40% class="text-center">상품명</th>
					<th width=10% class="text-center">가격</th>
					<th width=10% class="text-center">수량</th>
					<th width=10% class="text-center">Total</th>
					<th width=10%></th>
				</tr>
				<tr style="padding: 10px;">
					<td width=20%></td>
					<td width=40% class="text-center">상품명</td>
					<td width=10% class="text-center">가격</td>
					<td width=10% class="text-center">수량</td>
					<td width=10% class="text-center">Total</td>
					<td width=10%></td>
				</tr>
			</table>
		</div>
		
		<div class="row1 buyForm" >
			<h3 style="margin-bottom: 20px">주문자 정보</h3>
			<table class="table">
				<tr>
					<th width=10% class="success text-center">이름</th>
					<td width=40%>
						<input type="text" class="form-control-sm" name=name id=name>
					</td>
					<th width=10% class="success text-center">연락처</th>
					<td width=40%>
						<select name=phone1>
		  					<option>010</option>
		  				</select>
						<input type="text" class="form-control-sm" name=phone id=phone placeholder=" -를 제외하고 입력하세요">
					</td>
				</tr>
				<tr>
					<th width=10% class="success text-center">우편번호</th>
					<td width=90% colspan="3">
						<input type="text" class="form-control-sm" name=post id=post style="margin-right: 10px;display: inline;">
						<input type="button" class="btn btn-sm btn-default" value="우편번호 검색">
					</td>
				</tr>
				<tr>
					<th width=10% class="success text-center">주소</th>
					<td width=90% colspan="3">
						<input type="text" class="form-control-sm" name=addr1 id=addr1 size=100 readonly>
					</td>
				</tr>
				<tr>
					<th width=10% class="success text-center">상세주소</th>
					<td width=90% colspan="3">
						<input type="text" class="form-control-sm" name=addr2 id=addr2>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>