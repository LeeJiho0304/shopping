package controller.admin;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dto.product.ProductDTO;
import service.product.ProductService;


@WebServlet(name="admin.AddProductController", urlPatterns="/admin/AddProductController")
@MultipartConfig(maxFileSize=1024*1024*10, maxRequestSize=1024*1024*20)
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
		productService.addProduct(product);
		
		//파일 파트
		Part filePart = request.getPart("battach");
		if(!filePart.getSubmittedFileName().equals("")) {
			String fileName = filePart.getSubmittedFileName();
			String savedName = new Date().getTime() + "-" + fileName;
			String fileType = filePart.getContentType();
			
//			board.setBfileName(fileName);
//			board.setBsavedName(savedName);
//			board.setBfileType(fileType);
			
			String filePath = "C:/Project/product/" + savedName;  //실제 저장되는 경로
			filePart.write(filePath);
		}
		productService.addProduct(product);
		
		response.sendRedirect("AdminProductListController");
	}
}
