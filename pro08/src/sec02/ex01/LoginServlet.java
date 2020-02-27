package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		doHandle(request, response);
		
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException{
		//request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		MemberVO memberVO = new MemberVO();
		memberVO.setId(user_id);
		memberVO.setPwd(user_pw);
		MemberDAO dao = new MemberDAO();
		boolean result = dao.isExisted(memberVO);
		if (result) {
			HttpSession session = request.getSession();
			session.setAttribute("isLogon", true);
			session.setAttribute("login.id", user_id);
			session.setAttribute("login.pw", user_pw);
			out.println("<html><body>");
			out.println("안녕하세요 "+user_id+" 님");
			out.println("<a href='show'>회원정보 보기 </a>");
			out.println("</body></html>");
			System.out.println("Servlet 정보보기 끝");
		}else {
			out.println("<html><body><center>회원아이디가 틀립니다");
			out.println("<a href='login.html'> 다시 로그인 </a>");
			out.println("</body></html>");
		}
	}	
}
