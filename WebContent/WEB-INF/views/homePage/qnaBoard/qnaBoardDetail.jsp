<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>QnA Board Detail</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
		
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />
		<script>
			function deleteBoard() {

				var result = window.confirm("게시물을 삭제하시겠습니까?");
				if(result) {
					var result = window.prompt("비밀번호를 입력하세요.", "비밀번호"); 
					if(result=='12345'){ //${loginPwd}) {												
						location.href="QnaDeleteContoller?qna_board_id=${qboard.qna_board_id}";
						window.alert("삭제가 완료되었습니다.");
					} else {
						window.alert("정보가 일치하지 않습니다.");
					}					
				} else {
					window.alert("삭제가 취소되었습니다.");
				}
				window.open("QnaBoardListContoller", "_self"); 
			}			
		</script>
		<style>
			body{
			  background:#f5f5f5;
			  margin-top:20px;
			}
			/*------- portfolio -------*/
			.project {
			  margin: 15px 0;
			}
			
			.no-gutter .project {
			  margin: 0 !important;
			  padding: 0 !important;
			}
			
			.has-spacer {
			  margin-left: 30px;
			  margin-right: 30px;
			  margin-bottom: 30px;
			}
			
			.has-spacer-extra-space {
			  margin-left: 30px;
			  margin-right: 30px;
			  margin-bottom: 30px;
			}
			
			.has-side-spacer {
			  margin-left: 30px;
			  margin-right: 30px;
			}
			
			.project-title {
			  font-size: 1.25rem;
			}
			
			.project-skill {
			  font-size: 0.9rem;
			  font-weight: 400;
			  letter-spacing: 0.06rem;
			}
			
			.project-info-box {
			  margin: 15px 0;
			  background-color: #fff;
			  padding: 30px 40px;
			  border-radius: 5px;
			}
			
			.project-info-box p {
			  margin-bottom: 15px;
			  padding-bottom: 15px;
			  border-bottom: 1px solid #d5dadb;
			}
			
			.project-info-box p:last-child {
			  margin-bottom: 0;
			  padding-bottom: 0;
			  border-bottom: none;
			}
			
			.rounded {
			    border-radius: 5px !important;
			}
			.btn-xs.btn-icon {
			    width: 34px;
			    height: 34px;
			    max-width: 34px !important;
			    max-height: 34px !important;
			    font-size: 10px;
			    line-height: 34px;
			}
			/* facebook button */
			.btn-facebook, .btn-facebook:active, .btn-facebook:focus {
			  color: #fff !important;
			  background: #4e68a1;
			  border: 2px solid #4e68a1;
			}
			
			.btn-facebook:hover {
			  color: #fff !important;
			  background: #3b4f7a;
			  border: 2px solid #3b4f7a;
			}
			
			.btn-facebook-link, .btn-facebook-link:active, .btn-facebook-link:focus {
			  color: #4e68a1 !important;
			  background: transparent;
			  border: none;
			}
			
			.btn-facebook-link:hover {
			  color: #3b4f7a !important;
			}
			
			.btn-outline-facebook, .btn-outline-facebook:active, .btn-outline-facebook:focus {
			  color: #4e68a1 !important;
			  background: transparent;
			  border: 2px solid #4e68a1;
			}
			
			.btn-outline-facebook:hover {
			  color: #fff !important;
			  background: #4e68a1;
			  border: 2px solid #4e68a1;
			}
			
			/* twitter button */
			.btn-twitter, .btn-twitter:active, .btn-twitter:focus {
			  color: #fff !important;
			  background: #65b5f2;
			  border: 2px solid #65b5f2;
			}
			
			.btn-twitter:hover {
			  color: #fff !important;
			  background: #5294c6;
			  border: 2px solid #5294c6;
			}
			
			.btn-twitter:hover {
			  color: #fff !important;
			  background: #5294c6;
			  border: 2px solid #5294c6;
			}
			
			.btn-twitter-link, .btn-twitter-link:active, .btn-twitter-link:focus {
			  color: #65b5f2 !important;
			  background: transparent;
			  border: none;
			}
			
			.btn-twitter-link:hover {
			  color: #5294c6 !important;
			}
			
			.btn-outline-twitter, .btn-outline-twitter:active, .btn-outline-twitter:focus {
			  color: #65b5f2 !important;
			  background: transparent;
			  border: 2px solid #65b5f2;
			}
			
			.btn-outline-twitter:hover {
			  color: #fff !important;
			  background: #65b5f2;
			  border: 2px solid #65b5f2;
			}
			
			/* google button */
			.btn-google, .btn-google:active, .btn-google:focus {
			  color: #fff !important;
			  background: #e05d4b;
			  border: 2px solid #e05d4b;
			}
			
			.btn-google:hover {
			  color: #fff !important;
			  background: #b94c3d;
			  border: 2px solid #b94c3d;
			}
			
			.btn-google-link, .btn-google-link:active, .btn-google-link:focus {
			  color: #e05d4b !important;
			  background: transparent;
			  border: none;
			}
			
			.btn-google-link:hover {
			  color: #b94c3d !important;
			}
			
			.btn-outline-google, .btn-outline-google:active, .btn-outline-google:focus {
			  color: #e05d4b !important;
			  background: transparent;
			  border: 2px solid #e05d4b;
			}
			
			.btn-outline-google:hover {
			  color: #fff !important;
			  background: #e05d4b;
			  border: 2px solid #e05d4b;
			}
			
			/* linkedin button */
			.btn-linkedin, .btn-linkedin:active, .btn-linkedin:focus {
			  color: #fff !important;
			  background: #2083bc;
			  border: 2px solid #2083bc;
			}
			
			.btn-linkedin:hover {
			  color: #fff !important;
			  background: #186592;
			  border: 2px solid #186592;
			}
			
			.btn-linkedin-link, .btn-linkedin-link:active, .btn-linkedin-link:focus {
			  color: #2083bc !important;
			  background: transparent;
			  border: none;
			}
			
			.btn-linkedin-link:hover {
			  color: #186592 !important;
			}
			
			.btn-outline-linkedin, .btn-outline-linkedin:active, .btn-outline-linkedin:focus {
			  color: #2083bc !important;
			  background: transparent;
			  border: 2px solid #2083bc;
			}
			
			.btn-outline-linkedin:hover {
			  color: #fff !important;
			  background: #2083bc;
			  border: 2px solid #2083bc;
			}
			
			/* pinterest button */
			.btn-pinterest, .btn-pinterest:active, .btn-pinterest:focus {
			  color: #fff !important;
			  background: #d2373b;
			  border: 2px solid #d2373b;
			}
			
			.btn-pinterest:hover {
			  color: #fff !important;
			  background: #ad2c2f;
			  border: 2px solid #ad2c2f;
			}
			
			.btn-pinterest-link, .btn-pinterest-link:active, .btn-pinterest-link:focus {
			  color: #d2373b !important;
			  background: transparent;
			  border: none;
			}
			
			.btn-pinterest-link:hover {
			  color: #ad2c2f !important;
			}
			
			.btn-outline-pinterest, .btn-outline-pinterest:active, .btn-outline-pinterest:focus {
			  color: #d2373b !important;
			  background: transparent;
			  border: 2px solid #d2373b;
			}
			
			.btn-outline-pinterest:hover {
			  color: #fff !important;
			  background: #d2373b;
			  border: 2px solid #d2373b;
			}
			
			/* dribble button */
			.btn-dribbble, .btn-dribbble:active, .btn-dribbble:focus {
			  color: #fff !important;
			  background: #ec5f94;
			  border: 2px solid #ec5f94;
			}
			
			.btn-dribbble:hover {
			  color: #fff !important;
			  background: #b4446e;
			  border: 2px solid #b4446e;
			}
			
			.btn-dribbble-link, .btn-dribbble-link:active, .btn-dribbble-link:focus {
			  color: #ec5f94 !important;
			  background: transparent;
			  border: none;
			}
			
			.btn-dribbble-link:hover {
			  color: #b4446e !important;
			}
			
			.btn-outline-dribbble, .btn-outline-dribbble:active, .btn-outline-dribbble:focus {
			  color: #ec5f94 !important;
			  background: transparent;
			  border: 2px solid #ec5f94;
			}
			
			.btn-outline-dribbble:hover {
			  color: #fff !important;
			  background: #ec5f94;
			  border: 2px solid #ec5f94;
			}
			
			/* instagram button */
			.btn-instagram, .btn-instagram:active, .btn-instagram:focus {
			  color: #fff !important;
			  background: #4c5fd7;
			  border: 2px solid #4c5fd7;
			}
			
			.btn-instagram:hover {
			  color: #fff !important;
			  background: #4252ba;
			  border: 2px solid #4252ba;
			}
			
			.btn-instagram-link, .btn-instagram-link:active, .btn-instagram-link:focus {
			  color: #4c5fd7 !important;
			  background: transparent;
			  border: none;
			}
			
			.btn-instagram-link:hover {
			  color: #4252ba !important;
			}
			
			.btn-outline-instagram, .btn-outline-instagram:active, .btn-outline-instagram:focus {
			  color: #4c5fd7 !important;
			  background: transparent;
			  border: 2px solid #4c5fd7;
			}
			
			.btn-outline-instagram:hover {
			  color: #fff !important;
			  background: #4c5fd7;
			  border: 2px solid #4c5fd7;
			}
			
			/* youtube button */
			.btn-youtube, .btn-youtube:active, .btn-youtube:focus {
			  color: #fff !important;
			  background: #e52d27;
			  border: 2px solid #e52d27;
			}
			
			.btn-youtube:hover {
			  color: #fff !important;
			  background: #b31217;
			  border: 2px solid #b31217;
			}
			
			.btn-youtube-link, .btn-youtube-link:active, .btn-youtube-link:focus {
			  color: #e52d27 !important;
			  background: transparent;
			  border: none;
			}
			
			.btn-youtube-link:hover {
			  color: #b31217 !important;
			}
			
			.btn-outline-youtube, .btn-outline-youtube:active, .btn-outline-youtube:focus {
			  color: #e52d27 !important;
			  background: transparent;
			  border: 2px solid #e52d27;
			}
			
			.btn-outline-youtube:hover {
			  color: #fff !important;
			  background: #e52d27;
			  border: 2px solid #e52d27;
			}
			.btn-xs.btn-icon span, .btn-xs.btn-icon i {
			    line-height: 34px;
			}
			.btn-icon.btn-circle span, .btn-icon.btn-circle i {
			    margin-top: -1px;
			    margin-right: -1px;
			}
			.btn-icon i {
			    margin-top: -1px;
			}
			.btn-icon span, .btn-icon i {
			    display: block;
			    line-height: 50px;
			}
			a.btn, a.btn-social {
			    display: inline-block;
			}
			.mr-5 {
			    margin-right: 5px !important;
			}
			.mb-0 {
			    margin-bottom: 0 !important;
			}
			.btn-facebook, .btn-facebook:active, .btn-facebook:focus {
			    color: #fff !important;
			    background: #4e68a1;
			    border: 2px solid #4e68a1;
			}
			.btn-circle {
			    border-radius: 50% !important;
			}
			.project-info-box p {
			    margin-bottom: 15px;
			    padding-bottom: 15px;
			    border-bottom: 1px solid #d5dadb;
			}
			p {
			    font-family: "Barlow", sans-serif !important;
			    font-weight: 300;
			    font-size: 1rem;
			    color: #686c6d;
			    letter-spacing: 0.03rem;
			    margin-bottom: 10px;
			}
			b, strong {
			    font-weight: 700 !important;
			}
			.checked {
			  color: orange;
			}
			
			
			#body{
			    background:#f3f3f3;
			    margin-top:20px;
			    color: #616f80;
			}
			.card {
			    border: none;
			    margin-bottom: 24px;
			    -webkit-box-shadow: 0 0 13px 0 rgba(236,236,241,.44);
			    box-shadow: 0 0 13px 0 rgba(236,236,241,.44);
			}
			
			.avatar-xs {
			    height: 2.3rem;
			    width: 2.3rem;
			}
			
			#myModal table {
				width:100%;
			}
			#myModal th {
				width:20%; 
			}
			#myModal tr, td {
				border: 1px solid #ccc;
			}
			#inquiryTitleName{
				width:100%;
			}
			#myModal textarea {
				width:100%;
			}
			
		</style>
	</head>
	<body>
		<div>
		<div class="card-header">
     	 	문의 게시판> 문의글 상세 보기
   		</div>
   		<div class="card-body"> 
			<div class="container">
			        <div>
			           
			           <!-- / project-info-box -->
			
			            <div class="project-info-box row">
			            	<div class="col-md-3"><h1>Q</h1></div>
			            	<div class="col-md-9">
			            		<p><b>게시물 번호:</b> ${qboard.qna_board_id}</p>
				           		<p><b>문의 유형:</b> 상품 관련 문의</p>
				           		<p><b>제목:</b> ${qboard.qna_board_title}</p>
				           		<p><b>내용:</b> ${qboard.qna_board_content}</p>
				                <p><b>작성자:</b> ${qboard.users_id}</p>
				                <p><b>작성 일자: </b><fmt:formatDate value="${qboard.qna_board_date}" pattern="yyyy-MM-dd"/></p>	
				                
				                
				                <div class="text-right">
		                    		<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">수정</button>
			                        <button onclick="deleteBoard()" class="btn btn-info btn-sm">삭제</button> 
		                   		 </div>
				                  <!-- The Modal -->
									<div class="modal fade" id="myModal">
										<div class="modal-dialog modal-lg">
											<div class="modal-content">
							
												<!-- Modal Header -->
												<div class="modal-header bg-secondary" >
													<h4 class="modal-title text-white">상품 문의 수정</h4>
													<button type="button" class="close btn-light"  data-dismiss="modal">&times;</button>
												</div>
							
												<!-- Modal body -->
												<div class="modal-body">
													<h4>문의 유형을 선택하시고, 내용을 수정해 주세요.</h4>
							
													<form id="frmQuestDetail" name="frmQuestDetail" method="get" action="QnaUpdateContoller" enctype="multipart/form-data">
						
														<div class="qna">
															<table>
																<tbody>
																	<tr>
																		<th >문의유형</th>
																		<td>
																			<input type="checkbox" id="product" checked>
						  													<label for="product">상품관련 문의</label><br>
						  													
						  													<input type="checkbox" id="delivery">
						  													<label for="delivery">배송관련 문의</label><br>
							
																		</td>
																	</tr>
							
																	<tr>
																		<th >제목</th>
																		<td>
																			<div class="titWrite">
																				<input type="text" id="inquiryTitleName"
																					name="inquiryTitleName" maxlength="51"
																					placeholder="제목을 입력해 주세요. (50자 이내)">
							
																			</div>
																		</td>
																	</tr>
							
																	<tr>
																		<th >문의내용</th>
																		<td class="QnaTxt"><textarea rows="8" cols="20"
																				name="inquiryContent" id="inquiryContent"
																				placeholder="문의 내용을 입력해 주세요. (500자 이내)"></textarea>
																				<input type="hidden" name="inquiryNo" id="inquiryNo" value="${qboard.qna_board_id}">
																				<input type="hidden" name="inquiryUid" id="inquiryUid" value="${qboard.users_id}">
																		</td>
																	</tr>
							
																</tbody>
															</table>
														</div>
														<div class="qnaNoti">
															<p>개인정보 수집 및 이용에 대한 안내</p>
															<table >
																<tbody>
																	<tr>
																		<th>수집 항목</th>
																		<td>휴대폰 번호 및 상품 Q&amp;A 제목, 문의 내용 등 개인이 직접 입력한 내용</td>
																	</tr>
																	<tr>
																		<th >수집 목적</th>
																		<td>문의 접수 및 결과 회신</td>
																	</tr>
																	<tr>
																		<th >이용 기간</th>
																		<td>원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.<br>
																			단, 관계 법령의 규정에 의하여 보존할 필요가 있는 경우 아래와 같이 관계 법령에서 정한 일정 기간 동안
																			개인정보를 보관할 수 있습니다.<br> - 소비자의 불만 또는 분쟁처리에 관한 기록 :
																			3년(전자상거래등에서의 소비자보호에 관한 법률)
																		</td>
																	</tr>
																</tbody>
															</table>
							
														</div>
															<!-- 로그인 아이디, 제품 아이디 넣기 -->	
															
														<div class="modal-footer">
															<button type="submit" class="btn btn-secondary">수정</button>						
															<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>								
														</div>								
													</form>
							
												</div>
												<!-- Modal footer -->
					
											</div>
										</div>
					                </div>
				                	
									 
									<!--  <a href="javaScript:function()"></a>-->
				               	
			            	</div>
			            		                
			                
			            </div><!-- / project-info-box -->
			
			            <div class="project-info-box mt-0 mb-0 row">
			            	<div class="col-md-3"><h1 style="color: red">A</h1></div>
			            	 <c:if test="${qboard.qna_board_answer != 'N'}">
				            	<div class="col-md-9">
					           		<p><b>답변내용:</b> 안녕하세요. 상품문의 담당자입니다.<br/>	
										${qboard.qna_board_answer} <br/>
										감사합니다.</p>
					                <p><b>작성자:</b> 관리자</p>
					                <p><b>작성 일자:</b> 2022.12.09</p>		
				            	</div>			            		                
			                </c:if>
			                <c:if test="${qboard.qna_board_answer == 'N'}">
				            	<div class="col-md-9">
					           		<p><b>답변내용:</b> 답변이 등록되지 않았습니다.<br/>										
										</p>
					                	
				            	</div>			            		                
			                </c:if>
			            </div><!-- / project-info-box -->
			        </div><!-- / column -->
 
			</div>
			</div>
			<div id="footer"></div>
		</div>
	</body>
</html>