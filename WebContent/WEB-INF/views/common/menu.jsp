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

								</div>
							</div>
							<div class="filterMenu" id="divStar">
								<div class="filterMenuItem">
									별점
									<hr />
									<ul class="depth list-unstyled">
										<li>
											<div class="inpRadio">
												<input type="radio" name="starRatingRb" id="starRatingAll"
													onclick="javascript:search.btn.starSearch(this.id, '');">
												<label for="starRatingAll"> <span class="text">전체</span>
												</label>
											</div>
										</li>
										<li>
											<div class="inpRadio">
												<input type="radio" name="starRatingRb" id="starRating1"
													onclick="javascript:search.btn.starSearch(this.id, '40');">
												<label for="starRating1">
													<div class="star_sc starSm">
														<span style="width: 80%;"></span>
													</div> <span class="text">4점 이상</span>
												</label>
											</div>
										</li>
										<li>
											<div class="inpRadio">
												<input type="radio" name="starRatingRb" id="starRating2"
													onclick="javascript:search.btn.starSearch(this.id, '30');">
												<label for="starRating2">
													<div class="star_sc starSm">
														<span style="width: 60%;"></span>
													</div> <span class="text">3점 이상</span>
												</label>
											</div>
										</li>
										<li>
											<div class="inpRadio">
												<input type="radio" name="starRatingRb" id="starRating3"
													onclick=""> <label for="starRating3">
													<div class="star_sc starSm">
														<span style="width: 40%;"></span>
													</div> <span class="text">2점 이상</span>
												</label>
											</div>
										</li>
										<li>
											<div class="inpRadio">
												<input type="radio" name="starRatingRb" id="starRating4"
													onclick="javascript:search.btn.starSearch(this.id, '10');">
												<label for="starRating4">
													<div class="star_sc starSm">
														<span style="width: 20%;"></span>
													</div> <span class="text">1점 이상</span>
												</label><hr/>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="filterMenu" id="divComment">
								<div class="filterMenuItem">
									상품평
									<hr />
									<ul class="depth list-unstyled">
										<li><div class="inpRadio">
												<input type="radio" name="Comment" id="highComment"
													onclick="javascript:search.btn.checkedComment(this.id,'high');">
													<label for="highComment">많은 순</label>
											</div></li>
										<li><div class="inpRadio">
												<input type="radio" name="Comment" id="lowComment"
													onclick="javascript:search.btn.checkedComment(this.id,'low');">
													<label for="lowComment">적은 순</label>
												<hr />
											</div></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
