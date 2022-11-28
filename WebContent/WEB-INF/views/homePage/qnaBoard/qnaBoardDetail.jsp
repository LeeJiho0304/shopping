<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
					if(result) {
						window.alert("삭제가 완료되었습니다.");
					} else {
						window.alert("정보가 일치하지 않습니다.");
					}
					
				} else {
					window.alert("삭제가 취소되었습니다.");
				}

				window.open("QnABoardList4.html", "_self"); 
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
			img {
			    width: 100%;
			    max-width: 100%;
			    height: auto;
			    -webkit-backface-visibility: hidden;
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
		</style>
	</head>
	<body>
		<div>
		
			<div class="container">
			        <div>
			           
			           <!-- / project-info-box -->
			
			            <div class="project-info-box row">
			            	<div class="col-md-3"><h1>Q</h1></div>
			            	<div class="col-md-9">
			            		<p><b>게시물 번호:</b> 1</p>
				           		<p><b>문의 유형:</b> 상품 관련 문의</p>
				           		<p><b>제목:</b> 문의 합니다.</p>
				           		<p><b>내용:</b> 옵션에서 벽걸이 선택할 수 있던데 각도조절 벽걸이 인가요?</p>
				                <p><b>작성자:</b> 지도리우동</p>
				                <p><b>작성 일자:</b> 2022.11.27</p>	
				                <p style="padding-left: 640px">
				                	<button type="button" class="btn btn-info btn-sm">수정</button>
									<button onclick="deleteBoard()" class="btn btn-info btn-sm">삭제</button>  
				                </p>	
			            	</div>
			            		                
			                
			            </div><!-- / project-info-box -->
			
			            <div class="project-info-box mt-0 mb-0 row">
			            	<div class="col-md-3"><h1 style="color: red">A</h1></div>
			            	<div class="col-md-9">
				           		<p><b>답변내용:</b> 안녕하세요. 상품문의 담당자입니다.

									KQ75QB67AFXKR 모델 벽걸이 선택시
									WMN-B16FB/KR 자재 사용되며, 상하좌우 조절 가능한 것으로 확인됩니다.
									
									차후 추가 문의사항 발생 시 언제든지 상품문의 이용 부탁드립니다.
									감사합니다.</p>
				                <p><b>작성자:</b> 관리자</p>
				                <p><b>작성 일자:</b> 2022.11.27</p>		
			            	</div>			            		                
			                
			            </div><!-- / project-info-box -->
			        </div><!-- / column -->
 
			</div>
			
			<div id="footer"></div>
		</div>
	</body>
</html>