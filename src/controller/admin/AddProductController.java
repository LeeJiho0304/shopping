package controller.admin;

import java.io.IOException;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dto.product.ProductDTO;
import service.ProductService;


@WebServlet(name="admin.AddProductController", urlPatterns="/admin/AddProductController")
@MultipartConfig(maxFileSize=1024*1024*30, maxRequestSize=1024*1024*80)
public class AddProductController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/views/admin/addProductForm.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService productService = (ProductService)request.getServletContext().getAttribute("productService");
		ProductDTO product = new ProductDTO();
		
		//문자 파트
		product.setProduct_name(request.getParameter("product_name"));
		product.setProduct_price(Integer.parseInt(request.getParameter("product_price")));
		product.setProduct_company(request.getParameter("product_company"));
		product.setCategory_id(Integer.parseInt(request.getParameter("category_id")));
		product.setSubcategory_id(Integer.parseInt(request.getParameter("subcategory_id")));
		
		//두 개 이상의 파일 파트의 정보 얻기
		Collection<Part> parts = request.getParts();  //문자 파트도 포함되어 있음
		System.out.println(parts.size());  //파트의 총 갯수 
		for(Part part : parts) {
			//파일 파트인지 확인
			//파일이 실제로 전송되었는지 확인
			if(part.getSubmittedFileName() != null && !part.getSubmittedFileName().equals("")) { 
				//파일 정보 얻기
				String filename = part.getSubmittedFileName();
				//long fileSize = part.getSize();
				String contentType = part.getContentType();
				
				System.out.println("fileName: " + filename);
				//System.out.println("fileSize: " + fileSize);
				System.out.println("contentType: " + contentType);
				System.out.println();
				
				//파일을 파일 시스템에 저장
				String savedName = new Date().getTime() + "-" + filename;
				String filePath = "C:/Project/product/" + savedName;  //실제 저장되는 경로
				part.write(filePath);
			}
			
		}
		productService.addProduct(product);
		
		response.sendRedirect("AdminProductListController");
	}
}
