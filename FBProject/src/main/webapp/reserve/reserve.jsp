<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

</script>

<style>

.container11{
	background-color: #DCDCDC;
	margin-top: 50px;
	padding-bottom: 100px;
	margin-left: 100px;
	margin-right:100px;
}

.mainImg{
  width: 100%;
  height: 100%;
  margin: 0px auto;

}

.content11 {
	display: flex;
	justify-content: space-around;
	.section-left {
		width: 60%;
	}
	
	.section-right {
		margin: 15px;
		height: 400px;
		text-align: center;
	}
	
	.box {
	
		padding: 40px;
		margin:15px;
		background-color: white;
		&.mx-0 {
			margin-left: 0;
			margin-right: 0;
		}
	}
}

.section-bottom {
	color:black;
	padding:40px;
	margin: 15px;
	height: auto;
	text-align: left;
	background-color: white;
}

.com {
	width:90%;
	height:auto;
	background-color: grey;
	display: flex;
	margin: 0 auto;
	padding: 16px;
	margin-bottom: 10px;
	border-top: 1px solid black;
	
}

.nickname {
	width:50px;
	display: flex;
	justify-content: space-around;
	margin-right: 10px;
}

.review {
	width:70%;
	height:auto;
	.title {
		margin-top: 0;
	}
}

#map {
	display: inline-block;
}

#resBtn {
	width:80%;
	height:50px;
	margin:15px;
	color:white;
	background-color: blue;
	border-radius: 10px;
	font-size: 20px;
	border:none;
}

#revBtn {
	font-size:13px;
	color:black;
	background-color:red;
	border-radius: 10px;
	border:none;
	margin-left: 1000px;
	margin-bottom:20px;
}

#revTitle {
	display: flex;
	justify-content: space-around;
	  margin: 0px auto;
}

#score {
	margin-left: 20px;
	
}
</style>

<!-- 지도 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=354e8d1599001215c257e974091bc45c&libraries=services"></script>	



</head>
<body>

<div class="container11">

	<!-- 메인 이미지 -->
	<div class="section-main" style="width:100%; height:500px">
		<img src="4.jpg" class="mainImg">
	</div>

	<div class="content11">
		<!-- left -->
		<div class="section-left">
			<div class="box">
				<div class="row" style="border-bottom: 1px solid grey; padding-bottom: 20px; border">
					<h3>7월 9일 일요일 13:00</h3>
					<h2>플랩 스타디움 수원 1구장</h2>
					경기 수원시 권선구 오목천로 121
				</div>
				<div class="row">
					<h3>10,000원 / 2시간</h3>
					매치 시작 10분 전 신청이 마감돼요
				</div>
			</div>
			<div class="box">
				<div class="row" style="border-bottom: 1px solid grey; padding-bottom: 20px; border">
					<h2>경기장 정보</h2>
					무료 주차
					음료 판매
					화장실
				</div>
				<div class="row">
					<h3>구장 특이사항</h3>
					<pre>
■주차
타 업장, 구장 앞 골목 주차로 인근 상권 및 주민 민원이 크게 발생되고 있어,
타 업장과 구장 앞 골목은 절대 주차 불가입니다.
					
또, 타 업장 주차 시 예고 없이 견인 되거나 주차 금지 스티커 부착 됩니다.
					
■흡연: 흡연 구역 외 절대 금연
3구장 뒤편 흡연 시 화재발생 위험이 있습니다.
					
■화장실: O (남성: 실내 / 여성: 구장 정면 '최미삼 순대국' 화장실 이용)
					
■샤워실/탈의실: 이용 중단 (남성 전용)
					
■음료 자판기 고장으로 사용 불가
					
■기타
물기에 젖은 신발로 인도어 구장 출입 금지
					</pre>
				</div>
			</div>
		</div>
		
		<div class="section-right">
			<input type=button value="예약하기" id="resBtn"/>
			<div>
				
				<div id="map" style="width:400px;height:350px;"></div>
				<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = {
					center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					level: 3 // 지도의 확대 레벨
					};  
											
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(mapContainer, mapOption); 
											
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new kakao.maps.services.Geocoder();
											
					// 주소로 좌표를 검색합니다
					geocoder.addressSearch('경기도 부천시 중동로 71번길 39', function(result, status) {
											
					// 정상적으로 검색이 완료됐으면 
					if (status === kakao.maps.services.Status.OK) {
											
					var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
											
					// 결과값으로 받은 위치를 마커로 표시합니다
					var marker = new kakao.maps.Marker({
					map: map,
					position: coords
					});
											
					// 인포윈도우로 장소에 대한 설명을 표시합니다
					var infowindow = new kakao.maps.InfoWindow({
					content: '<div style="width:150px;text-align:center;padding:6px 0;">장소 표시</div>'
					});
					infowindow.open(map, marker);
											
					// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					map.setCenter(coords);
					} 
					});    
				</script>
			</div>
	
			<div class="box mx-0">
				날씨
			</div>
		</div>
	</div>
	
	<div class="section-bottom">
		<table id="revTitle">
			<tr>
				<th colspan="2" class="text-center" style="font-size:30px">리뷰</th>
			</tr>
			<tr>
				<th colspan="2" class="text-center" style="font-size:28px">평균 별점 ${totalReviewAvg }</th>
			</tr>
			<tr>
				<td style="font-size:18px;color:grey">전체 리뷰 (${totalReview })</td> &nbsp;
				<td style="font-size:18px;color:grey">리뷰 정책</td>
			</tr>
		</table>
		
		
		<%-- login 한 사람만 리뷰 달기 --%>
	<%-- 	<c:if test="${sessionScope.id!=null }"> --%>
			<form method="post" action="../reserve/review_insert.do">
				<input type=submit value="리뷰 작성" id="revBtn" name="rvno">
					<table style="undefined;table-layout: fixed; width: 76px">
						<colgroup>
						<col style="width: 100px">
						<col style="width: 400px">
						<col style="width: 100px">
						</colgroup>
						<thead>
						  <tr>
						    <th>id</th>
						    <th>제목</th>
						    <th>별점
						    	<select id="score" name="score">
						    		<option>0.5</option>
						    		<option>1.0</option>
						    		<option>1.5</option>
						    		<option>2.0</option>
						    		<option>2.5</option>
						    		<option>3.0</option>
						    		<option>3.5</option>
						    		<option>4.0</option>
						    		<option>4.5</option>					    		
						    		<option>5.0</option>	    		
						    	</select> 
						    </th>
						  </tr>
						</thead>
						<tbody>
						  <tr>
						    <td></td>
						    <td><textarea style="width:800px;height300px" name="content"></textarea></td>
						  </tr>
						</tbody>
					</table>	
			</form>		
			
			
<%-- 		</c:if>	 --%>	
<%--    			<c:forEach var="vo" items="list">
			리뷰 출력
				<div class="com">
					<table style="undefined;table-layout: fixed; width: 76px">
						<colgroup>
						<col style="width: 100px">
						<col style="width: 400px">
						<col style="width: 100px">
						</colgroup>
						<thead>
						  <tr>
						    <th>${vo.id }</th>
						    <th>제목</th>
						    <th>${vo.score }</th>
						  </tr>
						</thead>
						<tbody>
						  <tr>
						    <td></td>
						    <td><textarea style="width:800px;height300px" name="content">${vo.content }</textarea></td>
						  </tr>
						</tbody>
					</table>
				</div>	
		</c:forEach>  --%>

	</div>
</div>

</body>
</html>