<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
   <title>Shopping Mall</title>
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
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
        <style>
        @import url("https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap");

      * {
          margin: 0;
          padding: 0;
          box-sizing: border-box;
      }
        .card {
           width: 306px;
           height: 458px;
           
        }
        .w-btn-red {
          background-color: #ff5f2e;
          color: #e1eef6;
      }
      
      button {
         font-size: 30px;
          margin: 20px;
          width: 200px;
          height: 100px;
      }
      
      .w-btn {
          position: relative;
          border: none;
          display: inline-block;
          padding: 15px 30px;
          border-radius: 15px;
          font-family: "paybooc-Light", sans-serif;
          box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
          text-decoration: none;
          font-weight: 600;
          transition: 0.25s;
      }
      
      .w-btn-outline {
          position: relative;
          padding: 15px 30px;
          border-radius: 15px;
          font-family: "paybooc-Light", sans-serif;
          box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
          text-decoration: none;
          font-weight: 600;
          transition: 0.25s;
      }
      
      .w-btn-red-outline {
          border: 3px solid #ff5f2e;
          color: #6e6e6e;
      }
      .w-btn-red-outline:hover {
          background-color: #ff5f2e;
          color: #e1eef6;
      }
      .w-btn:hover {
          letter-spacing: 2px;
          transform: scale(1.2);
          cursor: pointer;
      }
      
      .w-btn-outline:hover {
          letter-spacing: 2px;
          transform: scale(1.2);
          cursor: pointer;
      }
      
      .w-btn:active {
          transform: scale(1.5);
      }
      
      .w-btn-outline:active {
          transform: scale(1.5);
      }
      
      table{
         font-family: "Audiowide", sans-serif;
         font-size: 30px;
         width:100%;
         
      }
      
      input[type=text] {
         width: 1680px;
         box-sizing: border-box;
         border: 2px solid #ccc;
         border-radius: 4px;
         font-size: 16px;
         background-color: white;
         background-image: url('searchicon.png');
         background-position: 10px 10px;
         background-repeat: no-repeat;
         padding: 12px 20px 12px 40px;
      }
      
      nav {
      font-size:20px;
      }
      
       
      
      .modal{
      font-size :25px;
      }
      
      
        </style>
   </head>
   <body>
      <div id="menu" class="container-fluid">
      
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="/shopping/product/productList.html"> <img src="../images/JH.png"
               width="35px" height="35px" /> 지호전자
            </a>
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarNavDropdown">
               <ul class="nav nav-pills nav-fill">
                  <li class="nav-item"><a class="nav-link" href="/shopping/product/productList.html"><i class="fa fa-home"></i>Home</a></li>
                  <li class="nav-item"><a class="nav-link" href="/shopping/user/loginForm.html"><i class="fa fa-user"></i>로그인</a></li>
                  <li class="nav-item"><a class="nav-link" href="/shopping/user/joinForm3.html"> <i class="fa fa-user-plus"></i>회원가입</a></li>
                  <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-shopping-cart"></i>장바구니</a></li>
                  <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-question-circle"></i>고객센터</a></li>
               </ul>
            </div>
         </nav>
   
         <form class="form-inline">
              <input type="text" name="search" placeholder="Search..">
         </form>
      
   </div>
   
   <div id="content" class="container-fluid border">
      <div class="row">
         <div id ="sidebar" class="nav-side-menu col-xs-0 col-md-2 border" style="height: 600px">
            <div class="brand">All Categories</div>
            <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>

            <div class="menu-list">
<!--             TV -----------------------------------------------------------------------------------------------------------z
 -->               <ul id="menu-content" class="menu-content collapse out">
                  <li data-toggle="collapse" data-target="#TV" class="collapsed">
                     <a href="#"><i class="fa fa-television fa-lg"></i> TV <span class="arrow"></span></a>
                  </li>
                  <ul class="sub-menu collapse" id="TV">
                     <li class="active"><a href="https://www.lge.co.kr/tvs?subCateId=CT50000028">OLED</a></li>
                     <li><a href="https://www.lge.co.kr/search/result?search=%EB%B2%BD%EA%B1%B8%EC%9D%B4%ED%98%95&force=false#iihntcky">Wall Type</a></li>
                     <li><a href="https://www.lge.co.kr/search/result?search=%EC%8A%A4%ED%83%A0%EB%93%9C%ED%98%95&force=false#0jnjw2bq">Stand Type</a></li>
                  </ul>
<!--                   pc ----------------------------------------------------------------------------------------------------------------------
 -->                  <li data-toggle="collapse" data-target="#PC" class="collapsed">
                     <a href="#"><i class="fa fa-desktop fa-lg"></i> PC <span class="arrow"></span></a>
                  </li>
                  <ul class="sub-menu collapse" id="PC">
                     <li class="active"><a href="https://www.lge.co.kr/notebook">Laptop</a></li>
                     <li><a href="https://www.lge.co.kr/monitors">Monitor</a></li>
                     <li><a href="https://www.lge.co.kr/all-in-one-pc-and-desktop">Desktop</a></li>
                  </ul>

<!--                 냉장고 ------------------------------------------------------------------------------------------------------------------------
 -->                  <li data-toggle="collapse" data-target="#Refrigerator" class="collapsed">
                     <a href="#"><i class="fa fa-snowflake-o fa-lg"></i> Refrigerator <span class="arrow"></span></a>
                  </li>
                  <ul class="sub-menu collapse" id="Refrigerator">
                     <li class="active"><a href="https://www.lge.co.kr/refrigerators?subCateId=CT50000070">Water Purifier Type</a></li>
                     <li><a href="https://www.lge.co.kr/refrigerators?subCateId=CT50000066">Double Door</a></li>
                     <li><a href="https://www.lge.co.kr/refrigerators?subCateId=CT50000067">Standard</a></li>
                     <li><a href="https://www.lge.co.kr/kimchi-refrigerators">Kimchi Refrigerator</a></li>
                  </ul> 

<!--                   세탁기 --------------------------------------------------------------------------------------------------------------------
 -->                  <li data-toggle="collapse" data-target="#washingmachine" class="collapsed">
                     <a href="#"><i class="fa fa-tint fa-lg"></i> washing machine <span
                        class="arrow"></span></a>
                  </li>
                  <ul class="sub-menu collapse" id="washingmachine">
                     <li class="active"><a href="https://www.lge.co.kr/refrigerators?subCateId=CT50000070">Roundabout</a></li>
                     <li><a href="https://www.lge.co.kr/washing-machines?subCateId=CT50000102">Drum</a></li>
                     <li><a href="https://www.lge.co.kr/washing-machines?subCateId=CT50000105">Wash Tower</a></li>
                  </ul>
<!--                   에어컨 ----------------------------------------------------------------------------------------------------------------------------
 -->                  <li data-toggle="collapse" data-target="#airconditioner" class="collapsed">
                     <a href="#"><i class="fa-thin fa-air-conditioner"></i> air conditioner <span
                        class="arrow"></span></a>
                  </li>
                  <ul class="sub-menu collapse" id="airconditioner">
                     <li class="active"><a href="https://www.lge.co.kr/air-conditioners?subCateId=CT50000134">Stand Type</a></li>
                     <li><a href="https://www.lge.co.kr/search/result?search=%EC%9D%B4%EB%8F%99%EC%8B%9D%20%EC%97%90%EC%96%B4%EC%BB%A8&force=false#3t05wsb7">Portable</a></li>
                     <li><a href="https://www.lge.co.kr/air-conditioners?subCateId=CT50000135">Wall Type</a></li>
                  </ul>

               </ul>
            </div>
         </div>
         
         <div class="main col-xs-12 col-md-10 border">
            <div class = "row border" > 
               <h3><a href="/shopping/product/productList.html">홈 </a> 
               ></h3>
               <h3><a href="/shopping/product/productList.html">   tv   /   냉장고      /   세탁기      /   건조기      </a> 
               ></h3>
               <h3><a href="/shopping/product/productList.html">tv</a> 
               </h3>
                  
            </div>
            <div class = "row border" >
            
            <table id="table" >
              <tr>
                <th colspan="2" style="text-align: center"><h1>올레드 오브제컬렉션</h1></th>
                
              </tr>
             <tr>
                <th rowspan="4"><img src="../images/올레드1.jpg" width="700px" /></th>
                <td>모델명 : 55LX1QKNB.AKR</td>
              </tr>
              <tr>
                <td>판매가 3,390,000</td>
              </tr>
              <tr>
                <td>평점: 5</td>
              </tr>
               <tr>
                <td >
                      구매수량: <input class="ml-5" id="form1" min="0" name="quantity" value="1" type="number"
                      style="width: 50px; height: 50px" />
                
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
            <nav class="nav nav-pills nav-fill" width="100%">
                  <a class="nav-item nav-link" href="#">상품 정보</a> <a
                     class="nav-item nav-link" href="#">상품평</a> <a
                     class="nav-item nav-link" href="#">질문</a> <a
                     class="nav-item nav-link" href="#">배송</a>
               </nav>
            <div class = "row border">
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
   </body>
</html>