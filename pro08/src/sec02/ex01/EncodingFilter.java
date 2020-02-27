package sec02.ex01;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/*")
public class EncodingFilter  implements Filter{
	ServletContext context;
	public void init(FilterConfig fConfig) throws ServletException{
		System.out.println("utf 인코딩.....");
		context = fConfig.getServletContext();
	}
	public EncodingFilter() {
		
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("dofilt 호출");
		request.setCharacterEncoding("utf-8");
		String context = ((HttpServletRequest)request).getContextPath();
		String pathinfo = ((HttpServletRequest)request).getRequestURI();
		
		String realPath = request.getRealPath( pathinfo);
		String msg = "context 는" + context +"\n uri 정보:"+pathinfo+"\n 물리경로:"+realPath;
		System.out.println(msg);
		chain.doFilter(request, response);
	}
	public void destroy() {
		System.out.println("des 호출");
	}

}
