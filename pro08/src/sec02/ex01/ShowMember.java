package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/show")
public class ShowMember extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		doHandle(request, response);
		
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException{
		//request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		System.out.println("쇼 들어옴");
		String id = "";
		String pw = "";
		Boolean isLogon=false;
		HttpSession session = request.getSession(false);
		
		System.out.println(session);
		if(session!=null) {
			isLogon=(Boolean)session.getAttribute("isLogon");
			System.out.println("로곤"+isLogon);
			if(isLogon==true) {
				id=(String) session.getAttribute("login.id");
				pw=(String) session.getAttribute("login.pw");
				out.println("<html><body>");
				out.println("아이디 "+id+"<br>");
				out.println("패스워드 "+pw);
				out.println("</body></html>");
				System.out.println("쇼 로곤");
			}else {
				System.out.println("첫 리다렉트");
				response.sendRedirect("login.html");
			}
		}else {
			System.out.println("둘째 리다이렉트");
			response.sendRedirect("login.html");
		}
		
	}

}
