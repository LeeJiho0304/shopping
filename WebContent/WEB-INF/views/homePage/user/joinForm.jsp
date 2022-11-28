<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="../css/joinForm.css">
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link href="/shopping/css/sidebar.css" rel="stylesheet" id="bootstrap-css">
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			function handleCheckData() {
				var result = true;
				
				//ID 유효성 검사
				var uid = document.querySelector("#uid");
				//var uid = document.joinForm.uid;
				var uidValue = uid.value;
				var uidPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}$/;
				var uidTest = uidPattern.test(uidValue);
				if(uidTest) {
					uid.classList.remove("bg-danger");
				} else {
					uid.classList.add("bg-danger");
					result = false;
				}
				
				//Email 유효성 검사
				var email = document.querySelector("#email");
				var emailValue = email.value;
				var emailPattern = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
				var emailTest = emailPattern.test(emailValue);
				if(emailTest) {
					email.classList.remove("bg-danger");
				} else {
					email.classList.add("bg-danger");
					result = false;
				}
				
				//Password 유효성 검사 
				var password = document.querySelector("#password")
				var passwordValue = password.value;
	            var passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$/; 
	            var passwordTest = passwordPattern.test(passwordValue);
	            if(passwordTest) {
	            	password.classList.remove("bg-danger");
	            } else {
	            	password.classList.add("bg-danger");
	                resultCheckData = false;
	            }
	            
	            //Phone 유효성 검사
	            var phone = document.querySelector("#phone");
	            var phoneValue = phone.value;
	            var phonePattern = /^010-\d{3,4}-\d{4}$/;
	            var phoneTest = phonePattern.test(phoneValue);
	            if(phoneTest) {
	            	phone.classList.remove("bg-danger");
	            } else {
	            	phone.classList.add("bg-danger");
	                resultCheckData = false;
	            }
	            
				return result;
			}
		</script>
		
		<style>
			nav {
			font-size:20px;
			}
		</style>
	</head>
	<body>
		<div id="menu" class="container-fluid">
		
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand" href="/shopping/product/productList.html"> <img src="../images/JH.png" width="35px" height="35px" /> 지호전자
				</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
					<ul class="nav nav-pills nav-fill">
						<li class="nav-item"><a class="nav-link" href="/shopping/product/productList.html"><i class="fa fa-home"></i>Home</a></li>
						<li class="nav-item"><a class="nav-link" href="/shopping/user/loginForm.html">
						<i class="fa fa-user"></i>로그인</a></li>
						<li class="nav-item"><a class="nav-link" href="/shopping/user/joinForm.html"> <i class="fa fa-user-plus"></i>회원가입</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-shopping-cart"></i>장바구니</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-question-circle"></i>고객센터</a></li>
					</ul>
				</div>
			</nav>
	
	</div>
		
		<div class="container">
			<div class="input-form-backgroud row">
		      <div class="input-form col-md-12 mx-auto">
		        <h4 class="mb-3">회원가입</h4>
		        <form id="joinForm" name="joinForm" class="validation-form" action="http://localhost:8080/shopping/product/productList3.html" onsubmit="return handleCheckData()" novalidate>
		          <div class="mb-3">
		          	<label for="uid">아이디</label>
		          	<input type="text" class="form-control" id="uid" placeholder="" value="" required>
		          </div>
		          <div class="mb-3">
		          	<label for="password">비밀번호</label>
		          	<input type="password" class="form-control" id="password" placeholder="" value="" required>
		          </div>
		          
		          <div class="row">
		            <div class="col-md-6 mb-3">
		              <label for="name">이름</label>
		              <input type="text" class="form-control" id="name" placeholder="" value="" required>
		              <div class="invalid-feedback">
		                	이름을 입력해주세요.
		              </div>
		            </div>
		            <div class="col-md-6 mb-3">
		              <label for="phone">전화번호</label>
		              <input type="text" class="form-control" id="phone" placeholder="" value="" required>
		              <div class="invalid-feedback">
		                010-1234-1234
		              </div>
		            </div>
		          </div>
		          
		          <label for="name">생년월일</label>
		          <div class="row">
		          	<div class="col-md-4 mb-3">
		              <input type="text" class="form-control" id="year" placeholder="년(4자리)" value="" required>
		            </div>
		            <div class="col-md-4 mb-3">
		              <input type="text" class="form-control" id="month" placeholder="월" value="" required>
		            </div>
		            <div class="col-md-4 mb-3">
		              <input type="text" class="form-control" id="day" placeholder="일" value="" required>
		            </div>
		          </div>
		
					
		          <div class="mb-3">
		            <label for="email">이메일</label>
		            <input type="email" class="form-control" id="email" placeholder="you@example.com" required>
		            <div class="invalid-feedback">
		             	 이메일을 입력해주세요.
		            </div>
		          </div>
		
		          <div class="mb-3">
		            <label for="address">주소</label>
		            <input type="text" class="form-control" id="address" placeholder="서울특별시 강남구" required>
		            <div class="invalid-feedback"> 주소를 입력해주세요.
		            </div>
		          </div>
		
		         
		          <hr class="mb-4">
		          <div class="custom-control custom-checkbox">
		            <input type="checkbox" class="custom-control-input" id="aggrement" required>
		            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
		          </div>
		          <div class="mb-4"></div>
		          <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
		        </form>
		      </div>
		    </div>
		    <footer class="my-3 text-center text-small">
		      <p class="mb-1">&copy; 2022 지호전자</p>
		    </footer>
		</div>
	</body>
</html>