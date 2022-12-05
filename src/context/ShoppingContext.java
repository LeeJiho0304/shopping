package context;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

import connection.ConnectionProvider;
import dao.*;

import service.cart.CartService;
import service.category.CategoryService;
import service.order.*;
import service.product.*;
import service.qnaBoard.*;
import service.reviewBoard.*;
import service.subcategory.SubCategoryService;
import service.user.*;

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
		
		application.setAttribute("cartService", new CartService(application));
		application.setAttribute("categoryService", new CategoryService(application));
		
//		application.setAttribute("orderCreateService", new OrderCreateService(application));
//		application.setAttribute("orderDeleteService", new OrderDeleteService(application));
//		application.setAttribute("orderReadListService", new OrderReadListService(application));
//		application.setAttribute("orderReadService", new OrderReadService(application));
//		application.setAttribute("orderUpdateService", new OrderUpdateService(application));
		
		application.setAttribute("productContentService", new ProductContentService(application));
		application.setAttribute("productService", new ProductService(application));
//		
//		application.setAttribute("qnABoardAnswerService", new QnABoardAnswerService(application));
//		application.setAttribute("qnABoardCreateService", new QnABoardCreateService(application));
//		application.setAttribute("qnABoardListService", new QnABoardListService(application));
//		application.setAttribute("qnABoardReadService", new QnABoardReadService(application));
//		application.setAttribute("qnABoardSearchService", new QnABoardSearchService(application));
//		application.setAttribute("qnABoardUpdateService", new QnABoardUpdateService(application));
//
//		application.setAttribute("reviewBoardCreateService", new ReviewBoardCreateService(application));
//		application.setAttribute("reviewBoardListService", new ReviewBoardListService(application));
//		application.setAttribute("reviewBoardReadService", new ReviewBoardReadService(application));
//		application.setAttribute("reviewBoardSearchService", new ReviewBoardSearchService(application));
//		application.setAttribute("reviewBoardUpdateService", new ReviewBoardUpdateService(application));
//		
//		application.setAttribute("subCategoryService", new SubCategoryService(application));
//		
//		
//		application.setAttribute("userCreateService", new UserCreateService(application));
//		application.setAttribute("userDeleteService", new UserDeleteService(application));
		application.setAttribute("userLoginService", new UserLoginService(application));
//		application.setAttribute("userMyPageService", new UserMyPageService(application));
//		application.setAttribute("userReadListService", new UserReadListService(application));
//		application.setAttribute("userUpdateService", new UserUpdateService(application));
//		
//		
//		application.setAttribute("cartDAO", new CartDAO());
//		application.setAttribute("categoryDAO", new CategoryDAO());
//		application.setAttribute("orderDAO", new OrderDAO());
		
//		application.setAttribute("qnABoardDAO", new QnABoardDAO());
//		application.setAttribute("reviewBoardDAO", new ReviewBoardDAO());
//		application.setAttribute("subCategoryDAO", new SubCategoryDAO());
	}
}

