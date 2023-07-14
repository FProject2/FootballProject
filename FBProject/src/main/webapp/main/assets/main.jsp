<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <style type="text/css">
	.hello_slid img{
		border-radius: 30px;
	}
</style> -->
<style type="text/css">
	.hello_slid img{
			border-radius: 30px;
		}
	#reserve .reserve td {
		padding-top : 15px;
	    padding-bottom: 20px;
	}
	#reserve .reserve .time, #reserve .reserve .content, #reserve .reserve .state{
		font-size: 20px;
		vertical-align:middle;
		color: black;
		font-family: 'Noto Sans KR', sans-serif;
	}
	#reserve .content{
		line-height: 17px;
	}
	#reserve .button-align{
		text-align: center;
		font-size: 15px;
		vertical-align:middle;
	}
	#reserve .top-space{
		max-height: 400px;
		overflow: auto;
		margin-top: 10px;
	}
	#reserve .top-space::-webkit-scrollbar {
	    width: 10px;
	}
	#reserve .top-space::-webkit-scrollbar-thumb {
	    background-color: rgb(180, 180, 180);
	    border-radius: 10px;
	}
	#reserve .top-space::-webkit-scrollbar-track {
	    background-color: #F5F5F5;
	}
	#reserve .state .btn-design{
		border-radius:5px;
		font-size: 13px;
		background-color:rgb(64,128,96);
		color:white;
	}
       		
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
  
<script type="text/javascript">
$(function() {
	let area;
	
/* 	let date;
	$('#calendar').click(function() {
		let x=(document.body.offsetWidth/2)-(500/2)
		let y=(window.screen.height/2)-(500/2)
		window.open("../reserve/calendar.do","",'width=320, height=410, left='+x+', top='+y)
	}) */

    $( "#calendar" ).datepicker();
	
	
	$('.area').click(function(){
		area=$(this).text()
		
		$.ajax({
			type:'post',
			url:'../reserve/reserve_list.do',
			data:{"area":area},
			success:function(result){
				$('#top-space').html(result);
			}
		})
	})
	$('.date').click(function(){
		date=$(this).text()
		
		$.ajax({
			type:'post',
			url:'../reserve/reserve_list.do',
			data:{"area": area, "date":date},
			success:function(result){
				$('#top-space').html(result);
			}
		})
	})
})

</script>

</head>
<body>

<section id="home" class="home bg-black fix">
	<div class="overlay"></div>

	<div class="container">
		<div class="row">
			<div class="main_home text-center">
				<div class="col-md-12">
					<div class="hello_slid">
					<c:forEach var="i" begin="1" end="5">
					<div class="slid_item">
						<div class="home_text ">
							<img src="../main/assets/images/${i }.jpg" style="width:1920px;height:600px" class="homeslide">
						</div>
					</div><!-- End off slid item -->
					</c:forEach>  
					</div>
				</div>
			</div>
		</div><!--End off row-->
	</div><!--End off container -->
</section> <!--End off Home Sections-->

            <!--Business Section-->
            <section id="business" class="business bg-grey roomy-70">
            <!-- reserve-start -->
        	<div class="container"  style="text-align: center;" id="reserve">
                <div class="head_title text-center fix" name="reserveTitle">
                    <h2 class="text-uppercase">구장 예약</h2>
                    <h5>날짜와 지역을 선택하고 구장을 예약하세요</h5>
                </div>
                <div class=text-left>
					<li class="dropdown" style="margin-right: 20px;"><span class="btn btn-sm btn-default">지역 선택</span>
						<ul class="dropdown-content">
							<li><a class="area">서울</a></li>
							<li><a class="area">경기</a></li>
							<li><a class="area">인천</a></li>
							<li><a class="area">강원</a></li>
							<li><a class="area">대전</a></li>
							<li><a class="area">충남</a></li>
							<li><a class="area">세종</a></li>
							<li><a class="area">충북</a></li>
							<li><a class="area">대구</a></li>
							<li><a class="area">경북</a></li>
							<li><a class="area">부산</a></li>
							<li><a class="area">울산</a></li>
							<li><a class="area">경남</a></li>
							<li><a class="area">광주</a></li>
							<li><a class="area">전남</a></li>
							<li><a class="area">전북</a></li>
							<li><a class="area">제주</a></li>
						</ul>
					</li>
					
		
		 			<input type="button" class="btn btn-sm btn-default" id="calendar" value="날짜 선택">

		
        		</div>
	        		
        		<div class="top-space" id=top-space>
						
        		</div>	
      		</div>
	      
        <!-- reserve-end -->
            </section><!-- End off Business section -->

<!--product section-->
<section id="product" class="product">
    <div class="container">
        <div class="main_product roomy-80">
            <div class="head_title text-center fix">
                <h2 class="text-uppercase">이번 주 인기상품</h2>
                <h5>인기 폭발! 이번 주 가장 인기 있는 상품 TOP 12</h5>
            </div>
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <div class="container">
                            <div class="row">
                           	<c:forEach var="svo" items="${sList }" begin="0" end="3">
                                <div class="col-sm-3">
                                    <div class="port_item xs-m-top-30">
                                        <div class="port_img">
                                        	<a href="../shop/shop_detail.do?gno=${svo.gno }">
                                            <img src="${svo.goods_image }" alt="" width="290" height="250"/>
                                            </a>
                                        </div>
                                        <div class="port_caption m-top-20 text-center">
                                            <h5>${svo.brand }</h5>
                                            <h6>${svo.goods_name }</h6>
                                        </div>
                                    </div>
                                </div>
                               </c:forEach>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="container">
                            <div class="row">
                            <c:forEach var="svo" items="${sList }" begin="4" end="7">
                                <div class="col-sm-3">
                                    <div class="port_item xs-m-top-30">
                                        <div class="port_img">
                                        	<a href="../shop/shop_detail.do?gno=${svo.gno }">
                                            <img src="${svo.goods_image }" alt="" width="290" height="250"/>
                                            </a>
                                        </div>
                                        <div class="port_caption m-top-20 text-center">
                                            <h5>${svo.brand }</h5>
                                            <h6>${svo.goods_name }</h6>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach> 
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="container">
                            <div class="row">
                            <c:forEach var="svo" items="${sList }" begin="8" end="11">
                                <div class="col-sm-3">
                                    <div class="port_item xs-m-top-30">
                                        <div class="port_img">
                                        	<a href="../shop/shop_detail.do?gno=${svo.gno }">
                                            <img src="${svo.goods_image }" alt="" width="290" height="250"/>
                                            </a>
                                        </div>
                                        <div class="port_caption m-top-20 text-center">
                                            <h5>${svo.brand }</h5>
                                            <h6>${svo.goods_name }</h6>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <i class="fa fa-angle-left" aria-hidden="true"></i>
                    <span class="sr-only">Previous</span>
                </a>

                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div><!-- End off row -->
    </div><!-- End off container -->
</section><!-- End off Product section -->



            <!--Test section-->
            <section id="test" class="test bg-grey roomy-60 fix">
                <div class="container">
                    <div class="main_product roomy-80">
                        <div class="head_title text-center fix">
                            <h2 class="text-uppercase">지역별 맛집</h2>
                            <h5>현지의 맛을 만나다: 지역별 맛집 추천</h5>
                        </div>

                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img1.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img1.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img2.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img2.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img3.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img3.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img4.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img4.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img1.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img1.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img2.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img2.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img3.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img3.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img4.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img4.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img1.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img1.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img2.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img2.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img3.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img3.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="assets/images/work-img4.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="assets/images/work-img4.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                <i class="fa fa-angle-left" aria-hidden="true"></i>
                                <span class="sr-only">Previous</span>
                            </a>

                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                <i class="fa fa-angle-right" aria-hidden="true"></i>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off test section -->
</body>
</html>