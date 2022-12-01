package context;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import controller.product.ProductDetailController;
import dao.ProductDAO;
import service.product.ProductContentService;



public class ShoppingContext implements ServletContextListener {
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("나는야 과제 servletcontext");
		
		//ServletContext 객체 얻기
		ServletContext application = sce.getServletContext();
		
		//ServletContext 객체에 데이터(객체) 저장
		application.setAttribute("productContentService", new ProductContentService(application));
	
		
		application.setAttribute("productDAO", new ProductDAO());
	



	}
}
