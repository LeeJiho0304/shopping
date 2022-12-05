<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
       <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
         <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        
      <script>
      function ElectronicProducts(evt, ProductsName) {
           var i, tabcontent, tablinks;
           tabcontent = document.getElementsByClassName("tabcontent");
           for (i = 0; i < tabcontent.length; i++) {
             tabcontent[i].style.display = "none";
           }
           tablinks = documenst.getElementsByClassName("tablinks");
           for (i = 0; i < tablinks.length; i++) {
             tablinks[i].className = tablinks[i].className.replace(" active", "");
           }
           document.getElementById(ProductsName).style.display = "block";
           evt.currentTarget.className += " active";
         }
      function selectAll(selectAll)  {
           const checkboxes 
                = document.getElementsByName('product');
           
           checkboxes.forEach((checkbox) => {
             checkbox.checked = selectAll.checked;
           })
         }
      </script>
      <style>
         * {box-sizing: border-box}
      body {font-family: "Lato", sans-serif;}
      
      /* Style the tab */
      .tab {
       overflow: hidden;
        border: 1px solid #ccc;
        background-color: #f1f1f1;
      }
      
      /* Style the buttons inside the tab */
      .tab button {
          background-color: inherit;
           float: left;
           border: none;
           outline: none;
           cursor: pointer;
           padding: 14px 16px;
           transition: 0.3s;
           font-size: 17px;
      }
      
      /* Change background color of buttons on hover */
      .tab button:hover {
        background-color: #ddd;
      }
      
      /* Create an active/current "tab button" class */
      .tab button.active {
        background-color: #ccc;
      }
      
      /* Style the tab content */
      .tabcontent {
        float: top;
        padding: 0px 12px;
        border: 1px solid #ccc;
        width: 70%;
        border-left: none;
        height: 300px;
        display: none;
      }
      
      /* Clear floats after the tab */
      .clearfix::after {
        content: "";
        clear: both;
        display: table;
      }
      .card {
         width:295px;
         height:470px;
         margin-left: 10px;
         margin-right: 10px;
      }
      
      .card-header {
         background-color: white;
      }
      .card-header > img {
         width:250px;
      }
      
      
      button {
         font-size: 12px;
         margin:5px;
          width: 120px;
          height: 50px;
      }
      
      .w-btn {
          position: relative;
          border: none;
          display: inline-block;
          padding: 10px 15px;
          border-radius: 15px;
          font-family: "paybooc-Light", sans-serif;
          
          text-decoration: none;
          font-weight: 600;
          transition: 0.25s;
      }
      
      .w-btn-gray {
          background-color: #a3a1a1;
          color: #e3dede;
      }
      .w-btn-gray-outline {
          border: 3px solid #a3a1a1;
          color: #6e6e6e;
      }
      .w-btn-gray-outline:hover {
          background-color: #a3a1a1;
          color: #e3dede;
      }
      .w-btn-red {
    background-color: #ff5f2e;
    color: #e1eef6;
}
      
      .w-btn:hover {
          letter-spacing: 1px;
          transform: scale(1.1);
          cursor: pointer;
      }
      
      .w-btn-outline:hover {
          letter-spacing: 1px;
          transform: scale(1.1);
          cursor: pointer;
      }
      
      .
      
      </style>
      </head>
      <body>
      <nav class="navbar navbar-expand-lg navbar-light">
         <a class="navbar-brand" href="/shopping/product/productList.html"> <img src="../images/JH.png"
               width="35px" height="35px"/> 지호전자
            </a>
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
   
         <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent" >

         <ul class="navbar-nav" >
            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" ><i class="fa fa-user"></i></a>
               <div class="dropdown-menu">
                  <a class="dropdown-item" href="/shopping/user/loginForm.html">로그인</a> 
                  <a class="dropdown-item" href="/shopping/user/joinForm.html">회원가입</a> 
                  <a class="dropdown-item" href="/shopping/user/orderList.html">주문내역</a>
               </div>
            </li>

            <li class="nav-item"><a class="nav-link" href="/shopping/product/productList2.html"><i class="fa fa-shopping-cart"></i></a></li>
            <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-question-circle"></i></a></li>
         </ul>
         <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search"
               placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="background-color:white; font-color:black;">Search</button>
         </form>

      </div>
      </nav>
      <div class="tab">
         <button class="tablinks" onmouseover="ElectronicProducts(event, 'TV')">TV</button>
         <button class="tablinks" onmouseover="ElectronicProducts(event, 'PC')">PC</button>
         <button class="tablinks" onmouseover="ElectronicProducts(event, 'Refrigerator')">냉장고</button>
         <button class="tablinks" onmouseover="ElectronicProducts(event, 'Airconditioner')">에어컨</button>
         <button class="tablinks" onmouseover="ElectronicProducts(event, 'Washingmachine')">세탁기</button>
      </div>
      <div id="TV" class="tabcontent">
         <h3>TV</h3>
         <hr/>
         <h5><a href="/shopping/product/productDetail2.html">OLED</a></h5> <hr/>
         <h5><a href="/shopping/product/productDetail2.html">벽걸이형</a></h5><hr/>
         <h5><a href="/shopping/product/productDetail2.html">스탠드형</a></h5><hr/>
      </div>
   
      <div id="PC" class="tabcontent">
         <h3>PC</h3>
         <hr/>
         <h5><a href="/shopping/product/productDetail2.html">노트북</a></h5><hr/>
         <h5><a href="/shopping/product/productDetail2.html">모니터</a></h5><hr/>
         <h5><a href="/shopping/product/productDetail2.html">컴퓨터</a></h5><hr/>
      </div>
   
      <div id="Refrigerator" class="tabcontent">
         <h3>냉장고</h3>
         <hr/>
         <h5><a href="/shopping/product/productDetail2.html">정수기형</a></h5><hr/>
         <h5><a href="/shopping/product/productDetail2.html"">양문형</a></h5><hr/>
         <h5><a href="/shopping/product/productDetail2.html">일반형</a></h5><hr/>
         <h5><a href="/shopping/product/productDetail2.html">김치냉장고</a></h5><hr/>
      </div>
      <div id="Airconditioner" class="tabcontent">
         <h3>에어컨</h3>
         <hr/>
         <h5><a href="/shopping/product/productDetail2.html">스탠드형</a></h5><hr/>
         <h5><a href="/shopping/product/productDetail2.html">이동식</a></h5><hr/>
         <h5><a href="/shopping/product/productDetail2.html">벽걸이형</a></h5><hr/>
      </div>
      <div id="Washingmachine" class="tabcontent">
         <h3>세탁기</h3>
         <hr/>
         <h5><a href="/shopping/product/productDetail2.html">통돌이</a></h5><hr/>
         <h5><a href="/shopping/product/productDetail2.html">드럼</a></h5><hr/>
         <h5><a href="/shopping/product/productDetail2.html">워시타워</a></h5><hr/>
      </div>
      <div>
      <section class="h-100 h-custom">
        <div class="container h-100 py-5">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col">
      
            <div class="container-sm " style="width:1200px">
               <div class="main row ">
            
               <a href="/shopping/product/productList.html">홈 </a> 
               >
               <a href="/shopping/product/productList.html">   tv   /   냉장고      /   세탁기      /   건조기      </a> 
               >
               <a href="/shopping/product/productList.html">tv</a> 
                
            </div>
          
            <div class = "row" >
            
            <table id="table" >
              <tr style="border-bottom: 2px solid black">
                <th colspan="2" style="text-align: start ">
                   <h1>올레드 오브제컬렉션 55LX1QKNB.AKR</h1>
                   
                </th>
                
              </tr>
             <tr style="border-bottom: 1px solid gray">
                <th rowspan="4"><img src="../images/올레드1.jpg" width="700px" /></th>
                <td width="500px" >모델명 : 55LX1QKNB.AKR</td>
              </tr>
              <tr style="border-bottom: 1px solid gray">
                <td>판매가 3,390,000</td>
              </tr>
              <tr style="border-bottom: 1px solid gray">
                <td>평점: 5</td>
              </tr>
               <tr>
                <td >
                      구매수량: <input class="ml-5" id="form1" min="0" name="quantity" value="1" type="number"
                      style="width: 50px; height: 30px" />
                
                </td>
              </tr>
              
              
            </table>
            </div>
            <div class="row d-flex justify-content-end mb-3 mr-5">
               <a href="/shopping/product/order4-2.html">
                <button class="w-btn w-btn-red" type="button">
                    바로구매
                </button>
                </a>
                    
              <!-- Button to Open the Modal -->
              <button type="button" class="w-btn-outline w-btn-red-outline" data-toggle="modal" data-target="#myModal">
               장바구니
              </button>
            
              <!-- The Modal -->
              <div class="modal fade" id="myModal" >
                <div class="modal-dialog">
                  <div class="modal-content">
                  
                    <!-- Modal Header -->
                    <div class="modal-header">
                         장바구니 담기 완료
                      <button type="button" class="close" data-dismiss="modal" >&times;</button>
                    </div>
                    
                    <!-- Modal body -->
                    <div class="modal-body">
                        장바구니 담기 완료되었습니다.
                    </div>
                    
                    <!-- Modal footer -->
                    <div class="modal-footer">
                      <a href="/shopping/product/cartDetail2.html">
                         <button type="button" class="btn btn-danger" >넹</button>
                      </a>
                    </div>
                    
                  </div>
                </div>
              </div>
         
            </div>
            <div class="row" style="height:100px">
            
            </div>
            
            <nav class="nav nav-pills nav-fill" style="border-bottom: 1px solid gray">
                  <a class="nav-item nav-link" href="#">상품 정보</a> <a
                     class="nav-item nav-link" href="#">상품평</a> <a
                     class="nav-item nav-link" href="#">질문</a> <a
                     class="nav-item nav-link" href="#">배송</a>
            </nav>
            
            <div class = "row">
            
               <img src="../images/올레드2.jpg" width="100%"/>   
               
               <img src="../images/올레드4.jpg" width="100%"/>
               <img src="../images/올레드6.jpg" width="100%"/>
               <img src="../images/올레드7.jpg" width="100%"/>
               <img src="../images/올레드8.jpg" width="100%"/>
               <img src="../images/올레드9.jpg" width="100%"/>
               <img src="../images/올레드10.jpg" width="100%"/>
               <img src="../images/올레드12.jpg" width="100%"/>
               <img src="../images/올레드13.jpg" width="100%"/>
               
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
      
              
      
            </div>
          </div>
        </div>
      </section>
      </div>
   
      


   
   </body>
</html>