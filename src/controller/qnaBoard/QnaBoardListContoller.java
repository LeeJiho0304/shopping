package controller.qnaBoard;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="QnaBoardListContoller", urlPatterns="/QnaBoardListContoller")
public class QnaBoardListContoller extends HttpServlet {
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("QnaBoardListContoller.init() 실행");
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("QnaBoardListContoller.service() 실행");
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/qnaBoard/qnaBoardList.jsp").forward(request, response);
	}
	
	@Override
	public void destroy() {
		System.out.println("QnaBoardListContoller.destroy()");
	}
}

	

