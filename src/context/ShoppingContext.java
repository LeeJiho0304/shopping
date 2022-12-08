package context;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

import connection.ConnectionProvider;
import dao.CartDAO;
import dao.CategoryDAO;
import dao.OrderDAO;
import dao.QnABoardDAO;
import dao.ReviewBoardDAO;
import dao.SubCategoryDAO;
import dao.UserDAO;
import service.CartService;
import service.CategoryService;
import service.OrderService;
import service.ProductService;
import service.QnABoardService;
import service.ReviewBoardService;
import service.SubCategoryService;
import service.UserService;

public class ShoppingContext implements ServletContextListener {
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("ServletContext가 생성 완료됨");
		
		//ServletContext 객체 얻기
		ServletContext application = sce.getServletContext();
		
		//ConnectionPool(javax.sql.DataSource) 객체 얻기
		DataSource dataSource = ConnectionProvider.getDataSource();
		application.setAttribute("dataSource", dataSource);
		
		//ServletContext 객체에 데이터(객체) 저장
		application.setAttribute("productDAO", new ProductDAO());
		application.setAttribute("userDAO", new UserDAO());
		application.setAttribute("cartDAO", new CartDAO());
		application.setAttribute("categoryDAO", new CategoryDAO());
		application.setAttribute("orderDAO", new OrderDAO());		
		application.setAttribute("qnABoardDAO", new QnABoardDAO());
		application.setAttribute("reviewBoardDAO", new ReviewBoardDAO());
		application.setAttribute("subCategoryDAO", new SubCategoryDAO());
		
		application.setAttribute("productService", new ProductService(application));
		application.setAttribute("userService", new UserService(application));
		application.setAttribute("cartService", new CartService(application));
		application.setAttribute("categoryService", new CategoryService(application));
		application.setAttribute("orderService", new OrderService(application));
		application.setAttribute("qnABoardService", new QnABoardService(application));
		application.setAttribute("reviewBoardService", new ReviewBoardService(application));
		application.setAttribute("subCategoryService", new SubCategoryService(application));
	}
}

