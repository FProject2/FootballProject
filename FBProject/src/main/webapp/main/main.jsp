<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>

<section id="home" class="home bg-black fix">
	<div class="overlay"></div>

	<div class="container">
		<div class="row">
			<div class="main_home text-center">
				<div class="col-md-12">
					<div class="hello_slid">
					
						<div class="slid_item">
							<div class="home_text ">
								<img src="../main/assets/images/3.jpg" style="width:1920px;height:600px" class="homeslide">
							</div>
						</div><!-- End off slid item -->
					
					<div class="slid_item">
						<div class="home_text ">
							<img src="../main/assets/images/5.jpg" style="width:1920px;height:600px" class="homeslide">
						</div>
					</div><!-- End off slid item -->
					
					<div class="slid_item">
						<div class="home_text ">
							<img src="../main/assets/images/6.jpg" style="width:1920px;height:600px" class="homeslide">
						</div>
					</div><!-- End off slid item -->
					
					<div class="slid_item">
						<div class="home_text ">
							<img src="../main/assets/images/7.jpg" style="width:1920px;height:600px" class="homeslide">
						</div>
					</div><!-- End off slid item -->
					
					<div class="slid_item">
						<div class="home_text ">
							<img src="../main/assets/images/8.jpg" style="width:1920px;height:600px" class="homeslide">
						</div>
					</div><!-- End off slid item -->
					        
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
	        		<input type="button" value="날짜선택" class="btn btn-sm btn-outline-secondary" style="border-radius: 10px;padding: 0.5rem 1rem;">
	        		<input type="button" value="지역선택" class="btn btn-sm btn-outline-secondary" style="border-radius: 10px;padding: 0.5rem 1rem;">
	        		<!-- search는 시간 남으면 -->
	        		<input type="button" class="btn btn-sm" value="검색" style="float: right;margin-left: 5px;background-color: rgb(64,128,96);color: white;">
	        		<input type="search" style="float: right">
        		</div>
	        		
        		<div class="top-space">
	        		<!-- <table class="table">
	        			<tr>
	        				<td width=10% class="time">15:00</td>
	        				<td width=80% style="line-height: 20px;" class="content text-left">
	        					서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
	        				</td>
	        				<td width=10% class="button-align state">
	        					<input type="button" class="btn btn-sm btn-design" value="예약가능">
	        				</td>
	        			</tr>
	        			<tr>
	        				<td width=10% class="time">15:00</td>
	        				<td width=80% style="line-height: 20px;" class="content text-left">
	        					서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
	        				</td>
	        				<td width=10% class="button-align state">
	        					<span style="font-weight: lighter;color: gray;font-size: 0.8em;">마감</span>
	        				</td>
	        			</tr>
	        			
	        		</table> -->
	        			
	        				<div class="card border-left-success shadow h-100 reserve">
                                <div class="card-body">
                                    <div class="col-md-1 time">
                                    15:00
                                    </div>
					        		<div class="col-md-10 content text-left">
					        		서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
					        		</div>	
					        		<div class="col-md-1 button-align state">
					        		<input type="button" class="btn btn-sm btn-design" value="예약가능">
					        		</div>	
                                </div>
                           	</div>
	        				<div style="height:3px;"></div>
	        			
	        				<div class="card border-left-success shadow h-100 reserve">
                                <div class="card-body">
                                    <div class="col-md-1 time">
                                    15:00
                                    </div>
					        		<div class="col-md-10 content text-left">
					        		서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
					        		</div>	
					        		<div class="col-md-1 button-align state">
					        		<input type="button" class="btn btn-sm btn-design" value="예약가능">
					        		</div>	
                                </div>
                           	</div>
	        				<div style="height:3px;"></div>
	        			
	        				<div class="card border-left-success shadow h-100 reserve">
                                <div class="card-body">
                                    <div class="col-md-1 time">
                                    15:00
                                    </div>
					        		<div class="col-md-10 content text-left">
					        		서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
					        		</div>	
					        		<div class="col-md-1 button-align state">
					        		<input type="button" class="btn btn-sm btn-design" value="예약가능">
					        		</div>	
                                </div>
                           	</div>
	        				<div style="height:3px;"></div>
	        			
	        				<div class="card border-left-success shadow h-100 reserve">
                                <div class="card-body">
                                    <div class="col-md-1 time">
                                    15:00
                                    </div>
					        		<div class="col-md-10 content text-left">
					        		서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
					        		</div>	
					        		<div class="col-md-1 button-align state">
					        		<input type="button" class="btn btn-sm btn-design" value="예약가능">
					        		</div>	
                                </div>
                           	</div>
	        				<div style="height:3px;"></div>
	        			
	        				<div class="card border-left-success shadow h-100 reserve">
                                <div class="card-body">
                                    <div class="col-md-1 time">
                                    15:00
                                    </div>
					        		<div class="col-md-10 content text-left">
					        		서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
					        		</div>	
					        		<div class="col-md-1 button-align state">
					        		<input type="button" class="btn btn-sm btn-design" value="예약가능">
					        		</div>	
                                </div>
                           	</div>
	        				<div style="height:3px;"></div>
	        			
	        				<div class="card border-left-success shadow h-100 reserve">
                                <div class="card-body">
                                    <div class="col-md-1 time">
                                    15:00
                                    </div>
					        		<div class="col-md-10 content text-left">
					        		서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
					        		</div>	
					        		<div class="col-md-1 button-align state">
					        		<input type="button" class="btn btn-sm btn-design" value="예약가능">
					        		</div>	
                                </div>
                           	</div>
	        				<div style="height:3px;"></div>
	        			
	        				<div class="card border-left-success shadow h-100 reserve">
                                <div class="card-body">
                                    <div class="col-md-1 time">
                                    15:00
                                    </div>
					        		<div class="col-md-10 content text-left">
					        		서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
					        		</div>	
					        		<div class="col-md-1 button-align state">
					        		<input type="button" class="btn btn-sm btn-design" value="예약가능">
					        		</div>	
                                </div>
                           	</div>
	        				<div style="height:3px;"></div>
	        			
	        				<div class="card border-left-success shadow h-100 reserve">
                                <div class="card-body">
                                    <div class="col-md-1 time">
                                    15:00
                                    </div>
					        		<div class="col-md-10 content text-left">
					        		서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
					        		</div>	
					        		<div class="col-md-1 button-align state">
					        		<input type="button" class="btn btn-sm btn-design" value="예약가능">
					        		</div>	
                                </div>
                           	</div>
	        				<div style="height:3px;"></div>
	        			
	        				<div class="card border-left-success shadow h-100 reserve">
                                <div class="card-body">
                                    <div class="col-md-1 time">
                                    15:00
                                    </div>
					        		<div class="col-md-10 content text-left">
					        		서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
					        		</div>	
					        		<div class="col-md-1 button-align state">
					        		<input type="button" class="btn btn-sm btn-design" value="예약가능">
					        		</div>	
                                </div>
                           	</div>
	        				<div style="height:3px;"></div>
	        			
	        				<div class="card border-left-success shadow h-100 reserve">
                                <div class="card-body">
                                    <div class="col-md-1 time">
                                    15:00
                                    </div>
					        		<div class="col-md-10 content text-left">
					        		서울 영등포 더에프 필드 A구장<br>
	        					<sub style="color: gray;font-size: 0.6em">● 서울특별시 영등포구 선유로 138</sub>
					        		</div>	
					        		<div class="col-md-1 button-align state">
					        		<input type="button" class="btn btn-sm btn-design" value="예약가능">
					        		</div>	
                                </div>
                           	</div>
	        				<div style="height:3px;"></div>
	        			
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
                            <h5>인기 폭발! 이번 주 가장 인기 있는 상품 TOP 10</h5>
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
                                                        <img src="https://plab-football.s3.amazonaws.com/media/%E1%84%83%E1%85%A2%E1%84%80%E1%85%AE_%E1%84%8B%E1%85%A6%E1%84%91%E1%85%B3%E1%84%8B%E1%85%A6%E1%84%8B%E1%85%B5_%E1%84%91%E1%85%B5%E1%86%AF%E1%84%83%E1%85%B3_%E1%84%8B%E1%85%B2%E1%86%AF%E1%84%92%E1%85%A1%E1%84%8C%E1%85%A5%E1%86%B7_1.jpg" alt="" width="290" height="225"/>
                                                        
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