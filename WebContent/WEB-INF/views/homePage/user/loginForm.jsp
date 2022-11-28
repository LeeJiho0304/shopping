<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link href="/shopping/css/sidebar.css" rel="stylesheet" id="bootstrap-css">
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<style>
			body {
			    background: #222D32;
			    font-family: 'Roboto', sans-serif;
			}

			.login-box {
			    margin-top: 75px;
			    height: auto;
			    background: #1A2226;
			    text-align: center;
			    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
			}
			
			.login-key {
			    height: 100px;
			    font-size: 80px;
			    line-height: 100px;
			    background: -webkit-linear-gradient(#27EF9F, #0DB8DE);
			    -webkit-background-clip: text;
			    -webkit-text-fill-color: transparent;
			}
			
			.login-title {
			    margin-top: 15px;
			    text-align: center;
			    font-size: 30px;
			    letter-spacing: 2px;
			    margin-top: 15px;
			    font-weight: bold;
			    color: #ECF0F5;
			}
			
			.login-form {
			    margin-top: 25px;
			    text-align: left;
			}
			
			input[type=text] {
			    background-color: #1A2226;
			    border: none;
			    border-bottom: 2px solid #0DB8DE;
			    border-top: 0px;
			    border-radius: 0px;
			    font-weight: bold;
			    outline: 0;
			    margin-bottom: 20px;
			    padding-left: 0px;
			    color: #ECF0F5;
			}
			
			input[type=password] {
			    background-color: #1A2226;
			    border: none;
			    border-bottom: 2px solid #0DB8DE;
			    border-top: 0px;
			    border-radius: 0px;
			    font-weight: bold;
			    outline: 0;
			    padding-left: 0px;
			    margin-bottom: 20px;
			    color: #ECF0F5;
			}
			
			.form-group {
			    margin-bottom: 40px;
			    outline: 0px;
			}
			
			.form-control:focus {
			    border-color: inherit;
			    -webkit-box-shadow: none;
			    box-shadow: none;
			    border-bottom: 2px solid #0DB8DE;
			    outline: 0;
			    background-color: #1A2226;
			    color: #ECF0F5;
			}
			
			input:focus {
			    outline: none;
			    box-shadow: 0 0 0;
			}
			
			label {
			    margin-bottom: 0px;
			}
			
			.form-control-label {
			    font-size: 10px;
			    color: #6C6C6C;
			    font-weight: bold;
			    letter-spacing: 1px;
			}
			
			.btn-outline-primary {
			    border-color: #0DB8DE;
			    color: #0DB8DE;
			    border-radius: 0px;
			    font-weight: bold;
			    letter-spacing: 1px;
			    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
			}
			
			.btn-outline-primary:hover {
			    background-color: #0DB8DE;
			    right: 0px;
			}
			
			.login-btm {
			    float: left;
			}
			
			.login-button {
			    padding-right: 0px;
			    text-align: right;
			    margin-bottom: 25px;
			}
			
			.login-text {
			    text-align: left;
			    padding-left: 0px;
			    color: #A2A4A4;
			}
			
			.loginbttm {
			    padding: 0px;
			}
			
			nav {
			font-size:20px;
			}
		</style>
	</head>
	<body>
		<div id="menu" class="container-fluid">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand" href="/shopping/product/productList.html"> <img src="../images/JH.png"
					width="35px" height="35px" /> ì§í¸ì ì
				</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
					<ul class="nav nav-pills nav-fill">
						<li class="nav-item"><a class="nav-link" href="/shopping/product/productList.html"><i class="fa fa-home"></i>Home</a></li>
						<li class="nav-item"><a class="nav-link" href="/shopping/user/loginForm.html">
						<i class="fa fa-user"></i>ë¡ê·¸ì¸</a></li>
						<li class="nav-item"><a class="nav-link" href="/shopping/user/joinForm.html"> <i class="fa fa-user-plus"></i>íìê°ì</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-shopping-cart"></i>ì¥ë°êµ¬ë</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-question-circle"></i>ê³ ê°ì¼í°</a></li>
					</ul>
				</div>
			</nav>
		</div>
    <div class="container" id="pr2">
        <div class="row">
            <div class="col-lg-3 col-md-2"></div>
            <div class="col-lg-6 col-md-8 login-box">
                <div class="col-lg-12 login-key">
                    <img src="../images/JH.png" width="60">
                </div>
                <div class="col-lg-12 login-title">
                    LOGIN HERE
                </div>

                <div class="col-lg-12 login-form">
                    <div class="col-lg-12 login-form">
                        <form>
                            <div class="form-group">
                                <label class="form-control-label">USERID</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="form-control-label">PASSWORD</label>
                                <input type="password" class="form-control" i>
                            </div>

                            <div class="col-lg-12 loginbttm">
                                <div class="col-lg-6 login-btm login-text">
                                    <!-- Error Message -->
                                </div>
                                <div class="col-lg-6 login-btm login-button">
                                    <button type="submit" class="btn btn-outline-primary">LOGIN</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2"></div>
            </div>
        </div>
        </div>

	</body>
</html>