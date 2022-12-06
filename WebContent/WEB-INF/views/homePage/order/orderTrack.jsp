<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>My Order Track</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		<style>
			@import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');
			body{font-family: 'Open Sans',serif}
			.container{margin-top:50px;margin-bottom: 50px}
			.card{position: relative;display: -webkit-box;display: -ms-flexbox;display: flex;-webkit-box-orient: vertical;-webkit-box-direction: normal;-ms-flex-direction: column;flex-direction: column;min-width: 0;word-wrap: break-word;background-color: #fff;background-clip: border-box;border: 1px solid rgba(0, 0, 0, 0.1);border-radius: 0.10rem}
			.card-header:first-child{border-radius: calc(0.37rem - 1px) calc(0.37rem - 1px) 0 0}
			.card-header{padding: 0.75rem 1.25rem;margin-bottom: 0;background-color: #fff;border-bottom: 1px solid rgba(0, 0, 0, 0.1)}
			.track{position: relative;background-color: #ddd;height: 7px;display: -webkit-box;display: -ms-flexbox;display: flex;margin-bottom: 60px;margin-top: 50px}
			.track .step{-webkit-box-flex: 1;-ms-flex-positive: 1;flex-grow: 1;width: 25%;margin-top: -18px;text-align: center;position: relative}
			.track .step.active:before{background: navy}
			.track .step::before{height: 7px;position: absolute;content: "";width: 100%;left: 0;top: 18px}
			.track .step.active .icon{background: navy;color: #fff}
			.track .icon{display: inline-block;width: 40px;height: 40px;line-height: 40px;position: relative;border-radius: 100%;background: #ddd}
			.track .step.active .text{font-weight: 400;color: #000}
			.track .text{display: block;margin-top: 7px}
			.itemside{position: relative;display: -webkit-box;display: -ms-flexbox;display: flex;width: 100%}
			.itemside .aside{position: relative;-ms-flex-negative: 0;flex-shrink: 0}
			.img-sm{width: 80px;height: 80px;padding: 7px}ul.row, ul.row-sm{list-style: none;padding: 0}
			.itemside .info{padding-left: 15px;padding-right: 7px}
			.itemside .title{display: block;margin-bottom: 5px;color: #212529}p{margin-top: 0;margin-bottom: 1rem}
			.btn-warning{color: #ffffff;background-color: navy;border-color: navy;border-radius: 1px}
			.btn-warning:hover{color: #ffffff;background-color: #ff2b00;border-color: #ff2b00;border-radius: 1px}
		</style>
		
	</head>
	<body>
		<div class="container">
		    <article class="card">
		        <header class="card-header"> 나의 주문 / 배송 조회 </header>
		        <div class="card-body">
		            <h6>주문 ID: OD45345345435</h6>
		            <article class="card">
		                <div class="card-body row">
		                    <div class="col"> <strong>주문 일자: </strong> <br>2022.12.06 </div>
		                    <div class="col"> <strong>예상 배송 일자:</strong> <br> 2022.12.12 </div>
		                    <div class="col"> <strong>배송 상태:</strong> <br> 출고 중</div>
		                    <div class="col"> <strong>운송장 번호:</strong> <br> 6104-4060-12345 </div>
		                </div>
		            </article>
		            <div class="track">
		                <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">배송 준비 중</span> </div>
		                <div class="step active"> <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> 출고 중</span> </div>
		                <div class="step"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> 배송 중 </span> </div>
		                <div class="step"> <span class="icon"> <i class="fa fa-archive"></i> </span> <span class="text">배송 완료</span> </div>
		            </div>
		            <hr>
		            <ul class="row">
		                <li class="col-md-4">
		                    <figure class="itemside mb-3">
		                        <div class="aside"><img src="../images/티비4.png" class="img-sm border"></div>
		                        <figcaption class="info align-self-center">
		                            <p class="title">Lg Oled Objet Collection<br> 55LX1QKNB</p> <span class="text-muted">2,832,000 </span>
		                        </figcaption>
		                    </figure>
		                </li>
		                <li class="col-md-4">
		                    <figure class="itemside mb-3">
		                        <div class="aside"><img src="../images/티비5.png" class="img-sm border"></div>
		                        <figcaption class="info align-self-center">
		                            <p class="title">LG Oled Evo <br> 55LX1QKNB</p> <span class="text-muted">1,750,0000 </span>
		                        </figcaption>
		                    </figure>
		                </li>
		                <li class="col-md-4">
		                    <figure class="itemside mb-3">
		                        <div class="aside"><img src="../images/티비6.png" class="img-sm border"></div>
		                        <figcaption class="info align-self-center">
		                            <p class="title">LG Oled TV <br> 55LX1QKNB</p> <span class="text-muted">1,390,000 </span>
		                        </figcaption>
		                    </figure>
		                </li>
		            </ul>
		            <hr>
		            <a href="#" class="btn btn-warning" data-abc="true"> <i class="fa fa-chevron-left"></i> 주문 내역 보기</a>
		        </div>
		    </article>
		</div>
		
	</body>
</html>