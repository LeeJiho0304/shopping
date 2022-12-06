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


@WebServlet(name="ProductListController2", urlPatterns="/ProductListController2")
public class ProductListController2 extends HttpServlet {   
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //pageNo 얻기
      String strPageNo= request.getParameter("pageNo");
      if(strPageNo == null) {
         strPageNo = "1";
      }
      int pageNo = Integer.parseInt(strPageNo);
      
      int categoryId = Integer.parseInt(request.getParameter("categoryId"));
      int subCategoryId = Integer.parseInt(request.getParameter("subCategoryId"));
      ServletContext application = request.getServletContext();
      ProductService productService = (ProductService)application.getAttribute("productService");
      ProductListDTO productListDTO = new ProductListDTO();
      
      productListDTO.setCategory_id(categoryId);
      productListDTO.setSubcategory_id(subCategoryId);
      //페이징 대상이되는 전체 행수 얻기
      int totalProductNum = productService.getTotalRows(productListDTO);
      
      //Page 생성
      Pager pager = new Pager(10, 5, totalProductNum, pageNo);
      
      //해당 pageNo에 해당하는 게시물 가져오기
      List<ProductListDTO> pageList = productService.getList(pageNo,pager);
      
      request.getRequestDispatcher("/WEB-INF/views/homePage/product/productList.jsp").forward(request, response);
   }
}