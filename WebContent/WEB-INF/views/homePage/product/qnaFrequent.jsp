<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	

		<script>
			 $(document).ready(function(){
				 $("#answer1").hide();
			 	 $("#answer2").hide();
			 	 $("#answer3").hide();
			 	 $("#answer4").hide();
			  	 $("#answer5").hide();
			 });
		 
			$(document).ready(function(){
			  $("#plus1").click(function(){
			    $("#answer1").slideToggle();
			  });
			});
			
			$(document).ready(function(){
				  $("#plus2").click(function(){
				    $("#answer2").slideToggle();
				  });
				});
			
			$(document).ready(function(){
				  $("#plus3").click(function(){
				    $("#answer3").slideToggle();
				  });
				});
			
			$(document).ready(function(){
				  $("#plus4").click(function(){
				    $("#answer4").slideToggle();
				  });
				});
			
			$(document).ready(function(){
				  $("#plus5").click(function(){
				    $("#answer5").slideToggle();
				  });
				});
		</script>
		<script>
		function alert(){
			window.confirm("로그인 후 이용해주세요.");
		}
		</script>
		
		<style>
			body{margin-top:20px;}
			.accordion-style .card {
			    background: transparent;
			    box-shadow: none;
			    margin-bottom: 15px;
			    margin-top: 0 !important;
			    border: none;
			}
			.accordion-style .card:last-child {
			    margin-bottom: 0;
			}
			.accordion-style .card-header {
			    border: 0;
			    background: none;
			    padding: 0;
			    border-bottom: none;
			}
			.accordion-style .btn-link {
			    color: #ffffff;
			    position: relative;
			    background: #15395a;
			    border: 1px solid #15395a;
			    display: block;
			    width: 100%;
			    font-size: 18px;
			    border-radius: 3px;
			    border-bottom-left-radius: 0;
			    border-bottom-right-radius: 0;
			    text-align: left;
			    white-space: normal;
			    box-shadow: none;
			    padding: 15px 55px;
			    text-decoration: none;
			}
			.accordion-style .btn-link:hover {
			    text-decoration: none;
			}
			.accordion-style .btn-link.collapsed {
			    background: #ffffff;
			    border: 1px solid #15395a;
			    color: #1e2022;
			    border-radius: 3px;
			}
			.accordion-style .btn-link.collapsed:after {
			    background: none;
			    border-radius: 3px;
			    content: "+";
			    left: 16px;
			    right: inherit;
			    font-size: 20px;
			    font-weight: 600;
			    line-height: 26px;
			    height: 26px;
			    transform: none;
			    width: 26px;
			    top: 15px;
			    text-align: center;
			    background-color: #15395a;
			    color: #fff;
			}
			.accordion-style .btn-link:after {
			    background: #fff;
			    border: none;
			    border-radius: 3px;
			    content: "-";
			    left: 16px;
			    right: inherit;
			    font-size: 20px;
			    font-weight: 600;
			    height: 26px;
			    line-height: 26px;
			    transform: none;
			    width: 26px;
			    top: 15px;
			    position: absolute;
			    color: #15395a;
			    text-align: center;
			}
			.accordion-style .card-body {
			    padding: 20px;
			    border-top: none;
			    border-bottom-right-radius: 3px;
			    border-bottom-left-radius: 3px;
			    border-left: 1px solid #15395a;
			    border-right: 1px solid #15395a;
			    border-bottom: 1px solid #15395a;
			}
			@media screen and (max-width: 767px) {
			    .accordion-style .btn-link {
			        padding: 15px 40px 15px 55px;
			    }
			}
			@media screen and (max-width: 575px) {
			    .accordion-style .btn-link {
			        padding: 15px 20px 15px 55px;
			    }
			}
			.card-style1 {
			    box-shadow: 0px 0px 10px 0px rgb(89 75 128 / 9%);
			}
			.border-0 {
			    border: 0!important;
			}
			.card {
			    position: relative;
			    display: flex;
			    flex-direction: column;
			    min-width: 0;
			    word-wrap: break-word;
			    background-color: #fff;
			    background-clip: border-box;
			    border: 1px solid rgba(0,0,0,.125);
			    border-radius: 0.25rem;
			}
			
			section {
			    padding: 20px 0 0 0;
			    overflow: hidden;
			    background: #fff;
			}
			.mb-2-3, .my-2-3 {
			    margin-bottom: 2.3rem;
			}
			
			.section-title {
			    font-weight: 600;
			    letter-spacing: 2px;
			    text-transform: uppercase;
			    margin-bottom: 10px;
			    position: relative;
			    display: inline-block;
			}
			.text-primary {
			    color: #ceaa4d !important;
			}
			
			
			body{
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
			.qna tr, .qna td, .qnaNoti tr, .qnaNoti td {
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
		<section class="bg-white ">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-10">
                        <div class="card card-style1 border-0 bg-white">
                            <div class="card-body p-4 p-md-5 p-xl-6">
                                <div class="text-center mb-2-3 mb-lg-6">
                                    <span class="section-title text-primary">FAQ's</span>
                                    <h2 class="h1 mb-0 text-secondary">자주 묻는 질문</h2>
                                </div>
                                <div id="accordion" class="accordion-style">
                                    <div class="card mb-3">
                                        <div class="card-header" id="headingOne">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link" id="plus1"><span class="text-theme-secondary me-2">Q.</span> 교환 환불이 가능한가요?</button>
                                            </h5>
                                        </div>
                                        <div id="collapseOne" class="collapse show">
                                            <div class="card-body" id="answer1">
                                             	   안타깝게도 현재로서는 교환이나 환불 기능을 제공하고 있지 않습니다. 그냥 사용해 보시는 건 어떨까요?:)
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card mb-3">
                                        <div class="card-header" id="headingOne">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link" id="plus2"><span class="text-theme-secondary me-2">Q.</span> 보상제도에는 어떤 것들이 있나요?</button>
                                            </h5>
                                        </div>
                                        <div id="collapseOne" class="collapse show">
                                            <div class="card-body" id="answer2">
                                             	   구매하신 배송 상품이 가품으로 밝혀진 경우, 구매금액 100% 환불+구매 금액의 10%를 적립금으로 보상 지급해 드립니다. 상품배송정보에 품절보상 문구가 있는 상품 구매 후 품절되어 배송이 불가할 경우, 품절로 환불된 상품 금액 합계에 따라 최대 500원을 적립금으로 보상해 드립니다.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card mb-3">
                                        <div class="card-header" id="headingOne">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link" id="plus3"><span class="text-theme-secondary me-2">Q.</span> 특정한 날짜에 상품을 받고 싶습니다. 가능한가요?</button>
                                            </h5>
                                        </div>
                                        <div id="collapseOne" class="collapse show">
                                            <div class="card-body" id="answer3">
                                             	   상품의 배송은 판매자의 재고 및 배송 준비 기간, 배송 경로와 택배사의 배송물량에 따라 방문 시간대가 달라질 수있기 때문에 배송날짜 및 방문 시간 지정은 어렵습니다.
                                            </div>
                                        </div>
                                    </div>
                                     <div class="card mb-3">
                                        <div class="card-header" id="headingOne">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link" id="plus4"><span class="text-theme-secondary me-2">Q.</span> 상품 구매를 취소하려면 어떻게 해야 하나요?</button>
                                            </h5>
                                        </div>
                                        <div id="collapseOne" class="collapse show">
                                            <div class="card-body" id="answer4">
                                             	 [마이페이지 > 구매내역]에서 '구매취소' 버튼을 통해 직접 신청하실 수 있습니다. 
                                            </div>
                                        </div>
                                    </div>
                                     <div class="card mb-3">
                                        <div class="card-header" id="headingOne">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link" id="plus5"><span class="text-theme-secondary me-2">Q.</span> 리뷰 사진 등록이 안돼요.</button>
                                            </h5>
                                        </div>
                                        <div id="collapseOne" class="collapse show">
                                            <div class="card-body" id="answer5">
                                             	  리뷰 등록 시 사진은 최대 1장 (용량 3MB), 파일 형식은 JPG, JPEG로 130X130 픽셀 이상인 경우만 등록 가능합니다. 사진용량이 클 경우 등록이 불가하오니 용량을 축소하여 등록 해 주시기 바랍니다. 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
          <!-- The Modal -->
						<div class="modal fade" id="myModal">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
				
									<!-- Modal Header -->
									<div class="modal-header bg-secondary" >
										<h4 class="modal-title text-white">상품 문의 작성</h4>
										<button type="button" class="close btn-light"  data-dismiss="modal">&times;</button>
									</div>
				
									<!-- Modal body -->
									<div class="modal-body">
										<h4>문의 유형을 선택하시고, 내용을 작성해 주세요.</h4>
				
										<form id="frmQuestDetail" name="frmQuestDetail" method="get" action="QnaWriteContoller" enctype="multipart/form-data">
			
											<div class="qna">
												<table>
													<tbody>
														<tr>
															<th >문의 유형</th>
															<td>
																<input type="checkbox" id="product" checked>
			  													<label for="product">상품 관련 문의</label><br>
			  													
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
															<th >문의 내용</th>
															<td class="QnaTxt"><textarea rows="8" cols="20"
																	name="inquiryContent" id="inquiryContent"
																	placeholder="문의 내용을 입력해 주세요. (500자 이내)"></textarea>
																	<input type="hidden" name="inquiryUid" id="inquiryUid" value="${loginId}">
																	<input type="hidden" name="inquiryPid" id="inquiryPid" value="${productDTO.product_id}">
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
															<td>원칙적으로, 개인정보 수집 및 이용 목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.<br>
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
												<button type="submit" class="btn btn-secondary">등록</button>						
												<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>								
											</div>								
										</form>
				
									</div>
									<!-- Modal footer -->
		
								</div>
							</div>
		                </div>
            	
	</body>
