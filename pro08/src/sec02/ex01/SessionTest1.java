package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logeeeeeen")
public class SessionTest1  extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		doHandle(request,response);
	}
	private void doHandle(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		if(session.isNew()) {
			if(user_id!=null) {
				session.setAttribute("user_id", user_id);
				String url=response.encodeURL("login");
				out.println("<a href="+url+">로그인상태 확인 </a>");
				
			}else {
				out.println("<a href='login.html'> 다시 로그인 하세요 </a>");
				session.invalidate();
			}
		}else {
			user_id=(String) session.getAttribute("user_id");
			if(user_id!=null&&user_id.length()!=0) {
				out.println("안녕하세요"+user_id+"님");	
			}else {
				out.println("<a href='login.html'> 다시 로그인 하세요 </a>");
				session.invalidate();
			}			
		}
		
				
	}
}
