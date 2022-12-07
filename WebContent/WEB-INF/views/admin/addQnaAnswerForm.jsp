<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin Qna Board Answer</title>
	
</head>
<body>
	<div id="wrapper">

	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-cloumn">
	<%@ include file="/WEB-INF/views/admin/common/sidebar.jsp" %>
		<!-- Main Content -->
		<div id="content">
		<%@ include file="/WEB-INF/views/admin/common/topbar.jsp" %>
			
			<!-- Begin Page Content -->
			<div class="container-fluid">
				<!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">문의 게시판 답변 관리</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-md-9">
	                        <div class="card card-primary">
	                            <div class="card-header">
	                                <h3 class="card-title">답변 등록</h3>
	                            </div>	                            
	                            	<%@ include file="/WEB-INF/views/admin/adminQnaBoardDetail.jsp" %>  

	                            <form method="post" name="myForm" action="AddQnaAnswerController" enctype="multipart/form-data">
	                                <div class="card-body">
	                                    <div class="form-group">
	                                        <label for="qnaAnswer">답변 내용</label>
	                                        <input type="text" class="form-control" id="qnaAnswer" name="qnaAnswer" placeholder="답변 내용">
	                                    </div>
	                                  	                                    
	                                </div>
	
	                                <div class="card-footer">
	                                    <button type="submit" class="btn btn-primary">Submit</button>
	                                </div>
	                            </form>
	                        </div>
	                    </div>
                    </div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>