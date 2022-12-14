<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	$("#passwordCheck").keyup(function() {
		if($(this).val() == $("#password").val()) {
			$(pw2Msg).text("비밀번호가 일치합니다.");
			$(pw2Msg).css("color", "blue");
		} else {
			$(pw2Msg).text("비밀번호가 일치하지 않습니다.");
			$(pw2Msg).css("color", "red");
		}
	})
</script>

<div class="user-nameInfo">
	<span>회원정보 수정</span>
</div>
<form name="form1" action="UpdateUserInfoController" method="post">
	<table class="table">
		<tr>
			<td>이름</td>
			<td colspan="4"><input type="text" style="width: 100px"
				class="form-control m-input" name="name" id="name" placeholder="이름"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td colspan="4">
				<input type="password" style="width: 200px; display: inline" class="form-control m-input" maxlength=12 name="pwd" id="password"/> 
				<em style="color: #696969">4~12자리의 영문 대소문자와 숫자로만 입력</em>
				<span id="pwMsg"></span>
			</td>
			
		</tr>
		<tr>
			<td>비밀번호확인</td>
			<td colspan="4">
				<input type="password" style="width: 200px" class="form-control m-input" maxlength=12 name="pwdCheck" id="passwordCheck"/>
				<span id="pw2Msg"></span>	
			</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td colspan="4">
				<input type="text" style="width: 200px" class="form-control m-input" name="phone" id="phone"/>
			</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td colspan="4">
				<input type="text" style="width: 400px" class="form-control m-input" name="email" id="email" placeholder="example@mycompany.com"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td colspan="4">
				<input type="text" class="form-control m-input" name="year" id="year" style="width: 100px; display: inline"/>년 
				<input type="text" class="form-control m-input" name="month" id="month" style="width: 100px; display: inline"/> 월 
				<input type="text" class="form-control m-input" name="day" id="day" style="width: 100px; display: inline"/> 일
			</td>
		</tr>
		<tr>
			<td>주소</td>
			<td colspan="4">
				<div class="container address-box">
					<div class="row d-flex flex-row">
						<div class="mr-3">
							<input type="text" class="form-control m-input" name="postcode"
								id="postcode" placeholder="우편번호" readonly />
						</div>
						<div>
							<button type="button" class="btn btn-info m-btn--air"
								onclick="execDaumPostcode()">우편번호 찾기</button>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-12 offset-md-12">
							<input type="text" class="form-control mt-1" name="address"
								id="address" placeholder="도로명 주소" style="width: 400px" readonly />
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 offset-md-12" style="float: left">
							<input type="text" class="form-control mt-1" name="detailAddress"
								placeholder="상세 주소" style="width: 400px" required />
						</div>
					</div>
				</div>
			</td>
		</tr>
	</table>
	<p align="center">
		<button type="submit" class="btn btn-dark">수정</button>
		<button type="reset" class="btn btn-light">다시입력</button>
	</p>
</form>