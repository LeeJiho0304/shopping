<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="dto.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<div class="card" >
			<div class="card-header">exam01_view.jsp</div>
			<div class="card-body">
				
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>내용</th>
							<th>글쓴이</th>
							<th>날짜</th>
						</tr>	
					</thead>
					<tbody>
						<c:out  value="${productDTO}">
							
								<p>${productDTO.product_name}</p>
								<p>${productDTO.product_price}</p>
								<p>${productDTO.product_reserve}</p>
								<p>${productDTO.product_company}</p>
								<p>${productDTO.category_id}</p>
							
				</c:out>						
					</tbody>
				</table>
			</div>
		</div>
		
		
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>