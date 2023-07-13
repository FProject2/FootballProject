<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<style>
.m0 {
	margin: 0
}
.container11 {
	background-image: url('1.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	height: 100vh;
	width: 100%;
	text-align: center;
	justify-content: center;
  	align-items: center;
}

img {
	filter: brightness(50%);
}
.content {
	height: 60%;
	width: 100%;
	text-align: center;
	
}

.table11 {
	margin: 0 auto;
	text-align: center;
    border-collapse: separate;
    border-spacing: 0 16px;
	>tbody {
		>tr {
			>th {
				border-top: none;
				text-align: left;
				color: #fff;
			}
			>td {
				padding-left: 12px;
				text-align: left;
			}
		}
	}
}

#Btn {
	font-size: 1.5rem;
    display: block;
    letter-spacing: 1.2rem;
    height: 80px;
    margin-top: 0.8rem;
    margin-left: auto;
    margin-right: auto;
    width: 35%;
    background: #7c3b08;
    color: #FFFFFF;
    border:none;
}

th {
	margin: 0 auto;
}
.input-text {
 	width:300px;
 	height:20px;
}

#refundInfo {
 	width:300px;
 	height:auto;
 	background-color:white;
 	color:black;
 	padding:5px;
}

.rowInfo {
 	width:300px;
  	height:20px;
 	background-color:white;
 	color:black;
 	padding:5px;
}

</style>

</head>
<body class="m0">

<div class="container11">

	<div class="content">
		<h1 style="color:#7c3b08; font-family: 'montserrat-bold', sans-serif; font-size: 2rem; padding-top:100px; margin-top: 0;">Reservation</h1>
		<h2 style="color: white; font-family: 'librebaskerville-bold', serif; font-size: 4.8rem; margin:0">match now!</h2>
		<div style="height:30px"></div>
		
		<form method="post" action="payment.jsp">
			<table class="table11">
				<tr>
					<th scope="row">Name</th>
					<td><input type=text class="input-text" name="name" required></td>
				</tr>
				<tr>
					<th scope="row">Tel</th>
					<td><input type=text class="input-text" name="tel" required></td>
				</tr>
				<tr>
					<th scope="row">Date</th>
					<td><div class="rowInfo" name="date">2023-07-07</div></td>
				</tr>
				<tr>
					<th scope="row">Address</th>
					<td><div class="rowInfo" name="address">서울시 마포구</div></td>
				</tr>
				<tr>
					<th scope="row">Price</th>
					<td><div class="rowInfo" name="price">20,000</div></td>
				</tr>
				<tr>
					<th scope="row">Information</th>
					<td>
						<div id="refundInfo">
						● 결제 후 30분 이내에는 하루 1회에 한해 무료 취소가 가능합니다.<br>
						● 쿠폰 신청자는 매치 시작 90분 전까지 취소 시 쿠폰이 반환됩니다.<br>
						● 결제 시 실 결제금액(쿠폰 제외)을 기준으로 위 규정에 따라 환급됩니다.<br>
						● 매치 시작 90분 전까지 최소 인원이 모이지 않을 시 카카오톡 혹은 LMS으로 안내되며, 자동 전액 환불됩니다.<br>

						</div>
					</td>
				</tr>
			</table>
		<input type=submit value="submit" id="Btn">
		</form>


	</div>
</div>

</body>
</html>