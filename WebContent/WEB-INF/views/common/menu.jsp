<%@ page contentType="text/html; charset=UTF-8"%>
<div class="nav-side-menu col-xs-0 col-md-2"
				style="height: 3000px">
				<hr />
				<div class="InbGroup sticky-top" style="margin-top: 10px" >
					<div class="smartFilter" id="smartFilter">
						<div class="scroll" style="max-height: 100px;">
							<div class="filterMenu" id="divBrand">
								<div class="filterMenuItem">
									브랜드
									<hr />
									<div class="depth">
										<ul id="filterBrandList" class="list-unstyled">
											<li data-dic="1삼성전자" data-cnt="157">
												<div class="inpCheck">
													<input type="checkbox" name="brnd_G10000" id="brnd_G10000"
														value="삼성전자_G10000" onclick=""><label
														for="brnd_G10000">삼성전자</label>(157)
												</div>
											</li>
											<li data-dic="2LG전자" data-cnt="138">
												<div class="inpCheck">
													<input type="checkbox" name="brnd_G10020" id="brnd_G10020"
														value="LG전자_G10020"
														onclick="javascript:search.btn.brand('LG전자_G10020');"><label
														for="brnd_G10020">LG전자</label>(138)
												</div>
											</li>
											<li data-dic="2MIDOTECH" data-cnt="138">
												<div class="inpCheck">
													<input type="checkbox" name="brnd_12336024"
														id="brnd_12336024" value="MIDOTECH_12336024"
														onclick="javascript:search.btn.brand('MIDOTECH_12336024');"><label
														for="brnd_12336024">MIDOTECH</label>(138)
													<hr />
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="filterMenu" id="divPrice">
								<div class="filterMenuItem">
									가격
									<hr />
									<ul class="depth list-unstyled" id="divSearchPrice">
										<li><div class="inpRadio">
												<input type="radio" name="priceValue" id="priceAll"
													onclick="javascript:search.btn.checkedPrice(this.id,'','');"
													checked="checked" data-price="가격 전체"><label
													for="priceAll">전체</label>
											</div></li>
										<li><div class="inpRadio">
												<input type="radio" name="priceValue" id="priceMin"
													onclick="javascript:search.btn.checkedPrice(this.id,'110000','630000');"
													data-price="63만원이하"><label for="priceMin">63만원이하</label>
											</div></li>
										<li><div class="inpRadio">
												<input type="radio" name="priceValue" id="priceMinMid"
													onclick="javascript:search.btn.checkedPrice(this.id,'630000','1100000');"
													data-price="63만원~110만원"><label for="priceMinMid">63만원~110만원</label>
											</div></li>
										<li><div class="inpRadio">
												<input type="radio" name="priceValue" id="priceMid"
													onclick="javascript:search.btn.checkedPrice(this.id,'1100000','2100000');"
													data-price="110만원~210만원"><label for="priceMid">110만원~210만원</label>
											</div></li>
										<li><div class="inpRadio">
												<input type="radio" name="priceValue" id="priceMaxMid"
													onclick="javascript:search.btn.checkedPrice(this.id,'2100000','3200000');"
													data-price="210만원이상"><label for="priceMaxMid">210만원이상</label>
												<hr />
											</div></li>
									</ul>

<ul class="nav flex-column">
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<span class="mr-2">Exam01.</span>
			<a class="text-white" href="/servletjsp/exam01/ContentController">JSP와 Servlet 차이점</a>
		</h6>
	</li>
	
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<span class="mr-2">Exam02.</span>
			<a class="text-white" href="/servletjsp/exam02/ContentController">요청 방식(GET/POST)</a>
		</h6>
	</li>
	
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<span class="mr-2">Exam03.</span>
			<a class="text-white" href="/servletjsp/exam03/ContentController">서블릿 라이프사이클(callback 메소드)</a>
		</h6>
	</li>
	
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<span class="mr-2">Exam04.</span>
			<a class="text-white" href="/servletjsp/exam04/ContentController">응답 생성</a>
		</h6>
	</li>
	
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<span class="mr-2">Exam05.</span>
			<a class="text-white" href="/servletjsp/exam05/ContentController">요청 정보 얻기</a>
		</h6>
	</li>
	
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<span class="mr-2">Exam06.</span>
			<a class="text-white" href="/servletjsp/exam06/ContentController">상태 유지 - 쿠키(클라이언트측 저장)</a>
		</h6>
	</li>
	
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<span class="mr-2">Exam07.</span>
			<a class="text-white" href="/servletjsp/exam07/ContentController">상태 유지 - HttpSession(서버측 저장, 해당 클라이언트)</a>
		</h6>
	</li>
	
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<span class="mr-2">Exam08.</span>
			<a class="text-white" href="/servletjsp/exam08/ContentController">상태 유지 - ServletContext(서버측 저장, 모든 클라이언트)</a>
		</h6>
	</li>
	
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<span class="mr-2">Exam09.</span>
			<a class="text-white" href="/servletjsp/HomeController">필터 테스트</a>
		</h6>
	</li>
	
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<span class="mr-2">Exam10.</span>
			<a class="text-white" href="/servletjsp/exam10/ContentController">예외 처리</a>
		</h6>
	</li>
	
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<span class="mr-2">Exam11.</span>
			<a class="text-white" href="/servletjsp/exam11/ContentController">EL</a>
		</h6>
	</li>
</ul>