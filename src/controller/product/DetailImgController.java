package controller.product;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.product.ProductDTO;
import service.ProductService;



@WebServlet(name="DetailImgController", urlPatterns="/DetailImgController")
public class DetailImgController extends HttpServlet{
	
	//클라이언트가 요청할 때 마다 실행
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pid = Integer.parseInt(request.getParameter("pid"));
		ServletContext application = request.getServletContext();
		ProductService productService = (ProductService)application.getAttribute("productService");
		ProductDTO product = productService.getProduct(pid);
		
		String fileName = product.getDetail_filename();
		String savedName = product.getDetail_savedname();
		String contentType = product.getDetail_content_type();
		
		
		//HTTP 응답에 Content-Type 헤더를 추가
		response.setContentType(contentType);
		
		/*//Browser의 종류 얻기
		String userAgent = request.getHeader("User-Agent");
		if(userAgent.contains("Trident") || userAgent.contains("MSIE")) {
			//IE일 경우
			fileName = URLEncoder.encode(fileName,"UTF-8");
			
		}else {
			//Chrome, Edge, FireFox, Safari일 경우
			fileName = new String(fileName.getBytes("UTF-8"),"ISO-8859-1");
		}*/
		
		//HTTP 응답에 Content-Disposition 헤더를 추가
		//response.setHeader("Content-Disposition", "attachment; filename=\"" +savedName+ "\"");
		
		ServletOutputStream sos = response.getOutputStream();
		Path path = Paths.get("C:/Temp/download/"+savedName);
		Files.copy(path, sos);
		sos.flush();
		sos.close();
	}
		
	
	
}
