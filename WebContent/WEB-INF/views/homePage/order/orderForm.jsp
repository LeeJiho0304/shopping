<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		
		<script>
		function activeBasicClass() {
			var basicinfo = $("#basicInfo");
			basicinfo.addClass("active");
			var newinfo= $("#newInfo");
			newinfo.removeClass("active");
			var inputName = $("#inputName");
			inputName.attr("value", "이지호");		
			var inputTel = $("#inputTel");
			inputTel.attr("value", "010-1234-1234");
			var inputAddress = $("#inputAddress");
			inputAddress.attr("value", "서울시 종로구 창경궁로 254");
		}
		
		function activeNewClass() {
			var basicinfo = $("#basicInfo");
			basicinfo.removeClass("active");
			var newinfo= $("#newInfo");
			newinfo.addClass("active");			
			var inputName = $("#inputName");
			inputName.attr("value", "");
			var inputTel = $("#inputTel");
			inputTel.attr("value", "");
			var inputAddress = $("#inputAddress");
			inputAddress.attr("value", "");
		}

		</script>
		
		<style>
			*,
			*:after,
			*:before {
			  box-sizing: border-box;
			}
			
			ul {
			  padding-left: 10px;
			}
			
			body {
			  font-family: "Josefin Sans", sans-serif;
			  color: #0a0a0a;
			  line-height: 1.4;
			}
			
			a {
			  color: #000;
			}
			
			.content {
			  z-index: 9999;
			}
			
			.secure,
			.backBtn {
			  display: flex;
			}
			.secure span,
			.backBtn span {
			  margin-left: 5px;
			}
			
			.backBtn {
			  margin-top: 20px;
			}
			
			.secure {
			  color: #afb5c0;
			  align-items: flex-end;
			}
			.secure .icon {
			  font-size: 20px;
			  line-height: 20px;
			}
			
			.logo {
			  font-size: 20px;
			  font-weight: bold;
			  display: flex;
			  justify-content: center;
			  align-items: flex-end;
			}
			.logo .icon {
			  font-size: 32px;
			  line-height: 32px;
			  margin-right: 5px;
			}
			
			#productimg {
			  width: 100%;
			  border-radius: 8px 0 0 8px;
			}
			
			.details {
			  max-width: 800px;
			  min-height: 300px;
			  margin-left: auto;
			  margin-right: auto;
			  margin-top: -200px;
			  background: #fff;
			  border-radius: 8px;
			  display: flex;
			  flex-direction: column;
			  position: relative;
			}
			.details__item {
			  display: flex;
			}
			.details__user {
			  background: #f6f9fc;
			  padding: 20px;
			  border-radius: 8px;
			  border: 1px solid #dadada;
			}
			
			.item__quantity {
			  position: absolute;
			  right: 50px;
			  top: 30px;
			  font-size: 20px;
			}
			.item__image {
			  display: flex;
			  align-items: center;
			  justify-content: center;
			}
			.item__image .iphone {
			  margin-left: 10px;
			  margin-right: 10px;
			  width: 200px;
			}
			.item__details {
			  padding: 30px;
			}
			.item__title {
			  font-size: 28px;
			  font-weight: 600;
			}
			.item__price {
			  font-size: 22px;
			  color: #bec3cb;
			}
			
			.icon {
			  font-size: 16px;
			  vertical-align: middle;
			}
			
			header {
			  background-color: #f6f9fc;
			  min-height: 500px;
			  background-image: url("../images/pattern.png");
			}
			
			.navigation {
			  display: flex;
			  align-items: center;
			  justify-content: space-between;
			  padding: 50px 0 80px 0;
			  color: navy;
			  font-size: 14px;
			  text-transform: uppercase;
			  letter-spacing: 1px;
			  font-weight: 700;
			}
			
			.container {
			  width: 960px;
			  margin: 0 auto;
			}
			
			.shadow {
			  box-shadow: 0 15px 35px rgba(50, 50, 93, 0.1), 0 5px 15px rgba(0, 0, 0, 0.07);
			}
			
			.row {
			  display: flex;
			}
			
			.txt {
			  border-color: #e1e8ee;
			  width: 100%;
			}
			
			.input {
			  border-radius: 5px;
			  border-style: solid;
			  border-width: 2px;
			  height: 48px;
			  padding-left: 15px;
			  font-weight: 600;
			  font-size: 14px;
			  color: #5e6977;
			}
			
			input[type="text"] {
			  display: initial;
			  padding: 15px;
			}
			
			.text-validated {
			  border-color: #7dc855;
			  background-image: url("../images/JH.png");
			  background-repeat: no-repeat;
			  background-position: right 18px center;
			}
			
			.ddl {
			  border-color: #f0f4f7;
			  background-color: #f0f4f7;
			  width: 200px;
			  margin-right: 10px;
			}
			
			.title {
			  font-size: 14px;
			  padding-bottom: 8px;
			}
			
			.field {
			  padding-top: 15px;
			  padding-right: 30px;
			  padding-left: 20px;
			  width: 50%;
			}
			.field.small {
			  width: auto;
			}
			
			.notification {
			  text-align: center;
			  font-size: 28px;
			  font-weight: 600;
			  display: flex;
			  justify-content: center;
			}
			.notification .icon {
			  font-size: 28px;
			  color: #7dc855;
			  line-height: 28px;
			  margin-right: 10px;
			}
			
			.actions {
			  display: flex;
			  align-items: center;
			  justify-content: center;
			  flex-direction: column;
			  padding: 60px 0 40px 0;
			}
			
			.payment {
			  padding: 20px 0 0 0;
			}
			.payment__title {
			  margin: 40px 0 20px 0;
			  font-size: 18px;
			  display: flex;
			  text-align: left;
			}
			.payment__title .icon {
			  margin-right: 10px;
			}
			
			.btn {
			  font-family: "Josefin Sans", sans-serif;
			  border-radius: 8px;
			  border: 0;
			  letter-spacing: 1px;
			  color: #fff;
			  background: navy;
			  padding: 20px 60px;
			  white-space: nowrap;
			  font-size: 16px;
			  line-height: 1;
			  text-transform: uppercase;
			  transition: all 0.15s ease;
			  text-decoration: none;
			}
			.btn .icon {
			  margin-left: 10px;
			  font-size: 20px;
			}
			.btn:hover {
			  -webkit-transform: translateY(-1px);
			          transform: translateY(-1px);
			  background: #4984ea;
			}
			.btn.action__back {
			  background: transparent;
			  color: #a0a0a0;
			}
			
			.payment__types {
			  display: flex;
			  justify-content: center;
			  align-items: center;
			}
			
			.payment__info {
			  display: flex;
			}
			
			.payment__cc {
			  flex: 60%;
			}
			
			.payment__shipping {
			  flex: 40%;
			}
			
			.shipping__info {
			  background: #f6f9fc;
			  padding: 10px;
			  border-radius: 8px;
			}
			
			.payment__type {
			  display: flex;
			  border: 2px solid #d9d9d9;
			  border-radius: 8px;
			  padding: 20px 40px;
			  width: 100%;
			  justify-content: center;
			  align-items: center;
			  cursor: pointer;
			  color: #d9d9d9;
			  transition: all 0.15s ease;
			}
			.payment__type:hover {
			  -webkit-transform: translateY(-1px);
			          transform: translateY(-1px);
			}
			.payment__type.active {
			  color: #0a0a0a;
			  background: #f6f9fc;
			  border-color: navy;
			}
			.payment__type .icon {
			  font-size: 32px;
			  margin-right: 10px;
			}
			.payment__type + .payment__type {
			  margin-left: 10px;
			}
			
			.icon-xl {
			  font-size: 48px;
			  line-height: 48px;
			}
			
			.content {
			  display: block;
			}
			
			.thankyou {
			  display: block;
			}
			.thankyou .details {
			  opacity: 1;
			  justify-content: center;
			  align-items: center;
			}
			.thankyou .details h3 {
			  font-weight: 600;
			}
			.thankyou .details__item {
			  display: flex;
			  flex-direction: column;
			  justify-content: center;
			  align-items: center;
			}
			.thankyou .details__item .icon-xl {
			  font-size: 32px;
			  color: #7dc855;
			  line-height: 32px;
			}
			
			.loading {
			  position: relative;
			}
			.loading:after {
			  -webkit-animation: spinAround .5s infinite linear;
			          animation: spinAround .5s infinite linear;
			  border: 4px solid #7dc855;
			  border-radius: 290486px;
			  border-right-color: transparent;
			  border-top-color: transparent;
			  content: "";
			  height: 5em;
			  width: 5em;
			  position: absolute;
			}
			.loading .details__item {
			  opacity: 0;
			}
			
			@-webkit-keyframes spinAround {
			  from {
			    -webkit-transform: rotate(0);
			    transform: rotate(0);
			  }
			  to {
			    -webkit-transform: rotate(359deg);
			    transform: rotate(359deg);
			  }
			}
			
			@keyframes spinAround {
			  from {
			    -webkit-transform: rotate(0);
			    transform: rotate(0);
			  }
			  to {
			    -webkit-transform: rotate(359deg);
			    transform: rotate(359deg);
			  }
			}
			
		</style>
		
	</head>
	<body>
		 <header>
		    <div class="container">
		      <div class="navigation">
		
		        <div class="logo">
		          <i class="icon icon-basket"></i>Oti 전자</div>
		        <div class="secure">
		          <i class="icon icon-shield"></i>
		          <span>Order Product</span>
		
		        </div>
		      </div>
		      <div class="notification">
		       	 주문 결제
		      </div>
		    </div>
		  </header>
		  <section class="content">
		
		    <div class="container">
		
		    </div>
		    <div class="details shadow">
		      <div class="details__item">
		
		        <div class="item__image">
		          <img class="iphone" id="productimg" src="../images/티비5.png" alt="">
		        </div>
		        <div class="item__details">
		          <div class="item__title">
		            LG Oled Objet Collection
		          </div>
		          <div class="item__price">
		            \2,832,000
		          </div>
		          <div class="item__quantity">
		           	 수량: 1
		          </div>
		          <br/>
		          <div class="item__description">
		            <ul style="">
		              <li>어떤 공간에도 자유롭게</li>
		              <li>어디서 봐도 아름다운</li>
		              <li>높여진 공간의 완성도를 높여주는</li>
		              <li>프리미엄 화질과 사운드</li>
		              <li>보지 않을 때도 계속되는 예술적 경험</li>
		            </ul>
		
		          </div>
		
		        </div>
		      </div>
		
		    </div>
		    <div class="discount"></div>
		
		    <div class="container">
		      <div class="payment">
		        <div class="payment__title">
		         	 배송지 선택
		        </div>
		        <div class="payment__types">
		          <div class="payment__type payment__type--cc active" onclick="activeNewClass()" id="newInfo"> 신규 입력</div>
		          <div class="payment__type payment__type--paypal" onclick="activeBasicClass()" id="basicInfo"> 기본 정보</div>	
		        </div>
		
		        <div class="payment__info">
		          <div class="payment__cc">
		            <div class="payment__title"> 정보 입력 </div>
		            <form>
		              <div class="form__cc">
		                <div class="row">
		                  <div class="field">
		                    <div class="title">받는 사람
		                    </div>
		                    <input type="text" class="input txt text" placeholder="이름" id="inputName"/>
		                  </div>
		                </div>
		                <div class="row">
		                
		                <div class="field sm">
		                    <div class="title">전화 번호
		                    </div>
		                    <input type="text" class="input txt" placeholder="000-0000-0000" id="inputTel"/>
		                  </div>
		                
		                  <div class="field small">
		                    <div class="title">요청 사항
		                    </div>
		                    <select class="input ddl">
		                      <option selected>빠른 배송</option>
		                      <option>로켓 배송</option>
		                      <option>보통 배송</option>
		                      <option>거북이 배송</option>
		                      
		                    </select>
		                    <select class="input ddl">
		                      <option>문 앞에 놔주세요.</option>
		                      <option>안전 배송 부탁해요.</option>
		                      <option>택배함에 놔주세요.</option>
		                      <option>부재 시 연락주세요.</option>
		                      <option selected>배송 전 연락 바랍니다.</option>
		                 
		                    </select>
		                  </div>
		                  
		                </div>
		                <div class="row">
		                  <div class="field">
		                    <div class="title">배송 주소
		                    </div>
		                    <input type="text" class="input txt" placeholder="00도 00시 00구 00로 00" id="inputAddress"/>
		                  </div>
		                </div>
		                
		                 <br/>
		                 <input type="checkbox" name="confirm"/> 상기 구매 정보를 확인하였으며 결제 진행에 동의합니다.
		
		              </div>
		            </form>
		          </div>
		          <div class="payment__shipping">
		            <div class="payment__title">  주문자 정보 </div>
		            <div class="details__user">
		              <div class="user__name">이지호
		                <br> 2022.11.23</div>
		              <div class="user__address">이메일: LeeJiHo0304@oti.com
		                <br>전화번호: 010-1234-1234</div>
		            </div>
		            
		            <br/>
		            <div >
		                <div class="payment__title">  총 주문 금액  </div>
		                <div class="item__price"> \2,832,000 </div>
		            </div>
		
		          </div>
		        </div>
		      </div>
		    </div>
		    <div class="container">
		      <div class="actions">
		
		        <a href="#" class="btn action__submit">결제 하기</a>
		        <a href="#" class="backBtn">홈으로 돌아가기</a>
		
		      </div>
		      </div>
		  </section>
		
	</body>
</html>