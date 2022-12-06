<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<script>
	function handleCheckData() {
		var result = true;

		//ID 유효성 검사
		var uid = document.querySelector("#uid");
		//var uid = document.joinForm.uid;
		var uidValue = uid.value;
		var uidPattern = /^(?=.*\d)(?=.*[a-z]).{6,10}$/;
		var uidTest = uidPattern.test(uidValue);
		if (uidTest) {
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
		if (emailTest) {
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
		if (passwordTest) {
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
		if (phoneTest) {
			phone.classList.remove("bg-danger");
		} else {
			phone.classList.add("bg-danger");
			resultCheckData = false;
		}

		return result;
	}
</script>



<div class="cotainer">
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">Register</div>
				<div class="card-body">
					<form id="joinForm" name="joinForm" class="validation-form"
						action="http://localhost:8080/shopping/product/productList3.html"
						onsubmit="return handleCheckData()" novalidate>
						<div class="mb-3">
							<label for="uid">아이디</label> <input type="text"
								class="form-control" id="uid" placeholder="소문자 포함한 6~10글자" value="" required>
						</div>
						<div class="mb-3">
							<label for="password">비밀번호</label> <input type="password"
								class="form-control" id="password" placeholder="대, 소문자포함 8~15글자" value=""
								required>
						</div>

						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="name">이름</label> <input type="text"
									class="form-control" id="name" placeholder="홍길동" value="" required>
								<div class="invalid-feedback">이름을 입력해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="phone">전화번호</label> <input type="text"
									class="form-control" id="phone" placeholder="000-0000-0000" value=""
									required>
								<div class="invalid-feedback">010-1234-1234</div>
							</div>
						</div>

						<label for="name">생년월일</label>
						<div class="row">
							<div class="col-md-4 mb-3">
								<input type="text" class="form-control" id="year"
									placeholder="년(4자리)" value="" required>
							</div>
							<div class="col-md-4 mb-3">
								<input type="text" class="form-control" id="month"
									placeholder="월" value="" required>
							</div>
							<div class="col-md-4 mb-3">
								<input type="text" class="form-control" id="day" placeholder="일"
									value="" required>
							</div>
						</div>


						<div class="mb-3">
							<label for="email">이메일</label> <input type="email"
								class="form-control" id="email" placeholder="you@example.com"
								required>
							<div class="invalid-feedback">이메일을 입력해주세요.</div>
						</div>

						<div class="mb-3">
							<label for="address">주소</label> <input type="text"
								class="form-control" id="address" placeholder="서울특별시 강남구"
								required>
							<div class="invalid-feedback">주소를 입력해주세요.</div>
						</div>


						<hr class="mb-4">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="aggrement" required> <label
								class="custom-control-label" for="aggrement">개인정보 수집 및
								이용에 동의합니다.</label>
						</div>
						<div class="mb-4"></div>
						<button class="btn btn-danger btn-lg btn-block" type="submit">가입
							완료</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>