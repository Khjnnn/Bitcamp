package sec01.ex01;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/secon")
public class FirstServlet extends HttpServlet{
	
	@Override
	public void init() throws ServletException{
		System.out.println("init 메소드 출력");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException{
		System.out.println("doget 메소드");
	}
	
	@Override
	public void destroy(){
		System.out.println("destroy 메소드");
	}
}

