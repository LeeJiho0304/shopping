<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

   <div id="content" class="container-fluid border">
      <div class="row">
         <div class="nav-side-menu col-xs-0 col-md-2" style="height: 3000px">
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


         <div class="main col-xs-12 col-md-10 border">
         <div class = "row border" > 
               <h5><a href="/shopping/product/productList.html">홈 </a> 
               ></h5>
               <h5><a href="/shopping/product/productList.html">   냉장고</a> 
               </h5>  
         </div>
            <div class="row">
               <table>
                  <tbody class="table table-borderless">
                     <tr>
                        <td><a href="/shopping/product/productDetail.html">
                              <div class="card">
                                 <div class="card-header">
                                    <img src="../images/티비4.png">
                                 </div>
                                 <div class="card-body">
                                    <h4>LG 올레드 오브제컬렉션</h4>
                                    <p>보지 않을 때도 계속되는 예술적 경험</p>
                                    <p>2,832,000원 ~ 9,400,000원</p>
                                 </div>
                              </div>
                        </a></td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비5.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 올레드 evo</h4>
                                 <p>5세대 인공지능 알포9과 화질 알고리즘으로 더 진화한 올레드</p>
                                 <p>1,750,0000원 ~ 41,800,000원</p>
                              </div>
                           </div>
                        </td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비6.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 올레드 TV</h4>
                                 <p>10년 차의 기술과 노하우, 혁신적인 자발광 기술로 완성</p>
                                 <p>1,390,000원 ~ 8,890,000원</p>
                              </div>
                           </div>
                        </td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비7.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 울트라 HD TV</h4>
                                 <p>4K 울트라 화질이 보여주는 선명함의 차이</p>
                                 <p>890,000원 ~ 3,590,000원</p>
                              </div>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <td><a href="/shopping/product/productDetail.html">
                              <div class="card">
                                 <div class="card-header">
                                    <img src="../images/티비4.png">
                                 </div>
                                 <div class="card-body">
                                    <h4>LG 올레드 오브제컬렉션</h4>
                                    <p>보지 않을 때도 계속되는 예술적 경험</p>
                                    <p>2,832,000원 ~ 9,400,000원</p>
                                 </div>
                              </div>
                        </a></td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비5.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 올레드 evo</h4>
                                 <p>5세대 인공지능 알포9과 화질 알고리즘으로 더 진화한 올레드</p>
                                 <p>1,750,0000원 ~ 41,800,000원</p>
                              </div>
                           </div>
                        </td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비6.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 올레드 TV</h4>
                                 <p>10년 차의 기술과 노하우, 혁신적인 자발광 기술로 완성</p>
                                 <p>1,390,000원 ~ 8,890,000원</p>
                              </div>
                           </div>
                        </td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비7.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 울트라 HD TV</h4>
                                 <p>4K 울트라 화질이 보여주는 선명함의 차이</p>
                                 <p>890,000원 ~ 3,590,000원</p>
                              </div>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <td><a href="/shopping/product/productDetail.html">
                              <div class="card">
                                 <div class="card-header">
                                    <img src="../images/티비4.png">
                                 </div>
                                 <div class="card-body">
                                    <h4>LG 올레드 오브제컬렉션</h4>
                                    <p>보지 않을 때도 계속되는 예술적 경험</p>
                                    <p>2,832,000원 ~ 9,400,000원</p>
                                 </div>
                              </div>
                        </a></td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비5.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 올레드 evo</h4>
                                 <p>5세대 인공지능 알포9과 화질 알고리즘으로 더 진화한 올레드</p>
                                 <p>1,750,0000원 ~ 41,800,000원</p>
                              </div>
                           </div>
                        </td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비6.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 올레드 TV</h4>
                                 <p>10년 차의 기술과 노하우, 혁신적인 자발광 기술로 완성</p>
                                 <p>1,390,000원 ~ 8,890,000원</p>
                              </div>
                           </div>
                        </td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비7.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 울트라 HD TV</h4>
                                 <p>4K 울트라 화질이 보여주는 선명함의 차이</p>
                                 <p>890,000원 ~ 3,590,000원</p>
                              </div>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <td><a href="/shopping/product/productDetail.html">
                              <div class="card">
                                 <div class="card-header">
                                    <img src="../images/티비4.png">
                                 </div>
                                 <div class="card-body">
                                    <h4>LG 올레드 오브제컬렉션</h4>
                                    <p>보지 않을 때도 계속되는 예술적 경험</p>
                                    <p>2,832,000원 ~ 9,400,000원</p>
                                 </div>
                              </div>
                        </a></td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비5.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 올레드 evo</h4>
                                 <p>5세대 인공지능 알포9과 화질 알고리즘으로 더 진화한 올레드</p>
                                 <p>1,750,0000원 ~ 41,800,000원</p>
                              </div>
                           </div>
                        </td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비6.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 올레드 TV</h4>
                                 <p>10년 차의 기술과 노하우, 혁신적인 자발광 기술로 완성</p>
                                 <p>1,390,000원 ~ 8,890,000원</p>
                              </div>
                           </div>
                        </td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비7.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 울트라 HD TV</h4>
                                 <p>4K 울트라 화질이 보여주는 선명함의 차이</p>
                                 <p>890,000원 ~ 3,590,000원</p>
                              </div>
                           </div>
                        </td>
                     </tr>
                     
                     <tr>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비8.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 울트라 HD TV</h4>
                                 <p>4K 울트라 화질이 보여주는 선명함의 차이</p>
                                 <p>890,000원 ~ 3,590,000원</p>
                              </div>
                           </div>
                        </td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비9.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 일반 LED TV</h4>
                                 <p>보는 즐거움이 다른 생생한 화질</p>
                                 <p>540,000원 ~ 640,000원</p>
                              </div>
                           </div>
                        </td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비10.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG 나노셀 TV</h4>
                                 <p>나노 입자로 완성한 퓨어 컬러</p>
                                 <p>2,890,000원 ~ 4,090,000원</p>
                              </div>
                           </div>
                        </td>
                        <td>
                           <div class="card">
                              <div class="card-header">
                                 <img src="../images/티비11.png">
                              </div>
                              <div class="card-body">
                                 <h4>LG QNED TV(Mini LED)</h4>
                                 <p>빛을 섬세하게 제어하는 미니 LED에 퀀텀닷+나노셀로 완성</p>
                                 <p>7,490,000원 ~ 12,000,000원</p>
                              </div>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <td colspan="6" class="text-center">
                           <div>
                              <a href="ContentController?pageNo=1" class="btn btn-outline-primary btn-sm">처음</a>
                              
                              <c:if test="${pager.groupNo > 1}">
                                 <a href="ContentController?pageNo=${pager.startPageNo-1}" class="btn btn-outline-info btn-sm">이전</a>
                              </c:if>
                              
                              <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
                                 <c:if test="${pager.pageNo != i}">
                                    <a href="ContentController?pageNo=${i}" class="btn btn-outline-success btn-sm">${i}</a>
                                 </c:if>
                                 <c:if test="${pager.pageNo == i}">
                                    <a href="ContentController?pageNo=${i}" class="btn btn-outline-danger btn-sm">${i}</a>
                                 </c:if>
                              </c:forEach>
                              
                              <c:if test="${pager.groupNo < pager.totalGroupNo}">
                                 <a href="ContentController?pageNo=${pager.endPageNo+1}" class="btn btn-outline-info btn-sm">다음</a>
                              </c:if>
                              
                              <a href="ContentController?pageNo=${pager.totalPageNo}" class="btn btn-outline-primary btn-sm">맨끝</a>
                              
                           </div>
                        </td>
                     </tr>
                  </tbody>
               </table>
            </div>
            
         </div>
      </div>
   </div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>