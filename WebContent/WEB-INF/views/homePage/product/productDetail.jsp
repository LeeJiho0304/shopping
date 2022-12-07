<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
     
      
      
      
        <div class="container  h-100" style="width:1000px">
          <div class="row d-flex justify-content-center my-5 align-items-center h-100">
           
            <div class="col pb-3">
                <span class="sub-img">
                     <img src="ProductImgController?pid=${productDTO.product_id}" height=100%>
                </span>
            </div>
            <div class="col " style="justify-content: flex-end;">
                <div class=" border p-5 m-0" >
                    <div class="row">
                        <div class="col-lg-12">
                            <h4><strong><span>${productDTO.product_name} </span></strong></h4>
                            <hr class="p-0 mb-3">
                            
                        </div>
                        <div class="col-lg-12">
                            <p class="m-0 p-0 price-pro">별점: ${productDTO.product_totalpoint} </p>
                            <hr class="p-0 m-0">
                        </div>
                        <div class="col-lg-12 pt-2">
                            <strong>가격: ${productDTO.product_price} </strong>
                            
                            <hr class="m-0 pt-2 mt-2">
                        </div>
                        <div class="col-lg-12">
                            <p class="tag-section"><strong>${productDTO.product_company}</strong></p>
                        </div>
                        <div class="col-lg-12">
                            <h6>수량 :</h6>
                            <input type="number" class="form-control text-center w-25" value="1">
                        </div>
                        <div class="col-lg-12 mt-3">
                            <div class="row">
                                <div class="col-lg-6 pb-2">
                                    <a href="#" class="btn btn-danger w-100">장바구니</a>
                                </div>
                                <div class="col-lg-6">
                                    <a href="#" class="btn btn-success w-100">바로 구매</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
    
            <div class="row sticky-top bg-white">
            <nav class="nav nav-pills nav-fill" style="border-bottom: 3px solid gray; width:100%;">
                  <a class="nav-item nav-link" href="#" style="color:gray">상품 정보</a> 
                  <a class="nav-item nav-link" href="#" style="color:gray">상품평</a>                    
                  <a class="nav-item nav-link" href="#" style="color:gray">질문</a>                     
                  <a class="nav-item nav-link" href="#" style="color:gray">배송</a>
                     
            </nav>
            </div>
            <div class = "row">          
               <img src="DetailImgController?pid=${productDTO.product_id}" width=100% >
            </div>
            <div class = "row border">상품 정보
            </div>
            <div class = "row border">상품명
            </div>
            <div class = "row border">질문
            </div>
            <div class = "row border">배송
   
            </div>
         
          </div>
      
             
      
              
    
          
     
   
      


   
<%@ include file="/WEB-INF/views/common/footer.jsp" %>