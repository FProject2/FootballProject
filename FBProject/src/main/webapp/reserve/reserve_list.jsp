<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 구장리스트 출력 reserve_list -->
<div id="reserve_day"></div>
	<c:forEach var="vo" items="${list }" varStatus="s">
		<div class="ground_select" data-gname="${vo.gname }" data-gno="${vo.gno }" data-gaddr="${vo.gaddr }">
		
		<div class="card border-left-success shadow h-100 reserve">
			<div class="card-body">
	            <div class="col-md-1 time">
	                   ${vo.gno }
	            </div>
	            
				<div class="col-md-9 content text-left">
					${vo.gname }<br>
							<sub style="color: gray;font-size: 0.6em">●${vo.gaddr }</sub>
				</div>
					
				<div class="col-md-1 button-align state">
					<input type="button" class="btn btn-sm btn-design" value="예약가능">
				</div>	
			</div>
		</div>
		
		<div style="height:5px;"></div> 
		
		</div>
	</c:forEach> 
<div style="height:3px;"></div>
</body>
</html>