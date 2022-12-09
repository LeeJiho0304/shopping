package controller.product;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dto.Pager;
import dto.product.ProductListDTO;
import service.ProductService;

@WebServlet(name = "ProductCategorytListController", urlPatterns = "/ProductCategorytListController")
public class ProductCategorytListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		// 서비스 객체 얻기
		ServletContext application = request.getServletContext();
		ProductService productService = (ProductService)application.getAttribute("productService");
		
		// 전체 행수 얻기
		int categoryId = Integer.parseInt(request.getParameter("categoryId"));
		int subCategoryId = Integer.parseInt(request.getParameter("subCategoryId"));

		ProductListDTO productListDTO = new ProductListDTO();
		productListDTO.setCategory_id(categoryId);
		productListDTO.setSubcategory_id(subCategoryId);
		int totalProductNum = productService.getTotalRows(productListDTO);
		// 현재 페이지 얻기
		String strPageNo = request.getParameter("pageNo");
		if (strPageNo == null) {
			strPageNo = "1";
		}
		int pageNo = Integer.parseInt(strPageNo);
		// 페이저 객체 생성하기
		Pager pager = new Pager(12, 3, totalProductNum, pageNo);
		// 해당 페이지의 게시물 리스트 가져오기
		List<ProductListDTO> CategoryPageList = productService.getList(pager, productListDTO);
		// 객체 1개만 가져오기
		ProductListDTO categoryProduct = CategoryPageList.get(0);
		// request 범위에 저장
		request.setAttribute("pager", pager);
		request.setAttribute("categoryProduct", categoryProduct);
		request.setAttribute("CategoryPageList", CategoryPageList);
		request.setAttribute("categoryId",categoryId);
		request.setAttribute("subCategoryId",subCategoryId);
		request.getRequestDispatcher("/WEB-INF/views/homePage/product/productList.jsp").forward(request, response);
	}
}