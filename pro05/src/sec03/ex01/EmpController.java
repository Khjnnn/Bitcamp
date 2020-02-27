package sec03.ex01;

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

import sec01.ex01.MemberVO;


@WebServlet("/emp/*")
public class EmpController extends HttpServlet{
	EmpDAO EmpDAO;
	
	public void init() throws ServletException{
		EmpDAO = new EmpDAO();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		doHandle(request, response);	
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException{
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();
		System.out.println("action:"+action);
		
		if(action ==null || action.equals("/prodsList.do")) {
			List<EmpVO> prodsList = EmpDAO.prodslist();
			request.setAttribute("prodsList", prodsList);
			System.out.println(prodsList.size());
			nextPage = "/prodList.jsp";
			
		} else if (action.equals("/addProd.do")) {
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			int price = Integer.valueOf(String.valueOf(request.getParameter("price")));
			String desc = request.getParameter("desc");
			String vendid = request.getParameter("vendid");
			EmpVO EmpVO = new EmpVO(id, name, price, desc, vendid);
			System.out.println("1111111111111111111111111111111111");
			EmpDAO.addProd(EmpVO);
			nextPage = "/emp/prodsList.do";
			
		} else if (action.equals("/prodForm.do")) {
			nextPage = "/prodForm.jsp";
			
		} else if (action.equals("/searchProd.do")) {
			String sid = "'%"+request.getParameter("sid")+"%'";
			String id = sid.toUpperCase();
			List<EmpVO> searchList = EmpDAO.searchProd(id);
			request.setAttribute("prodsList", searchList);
			
			nextPage = "/prodList.jsp";
			
		} else if (action.equals("/modProdForm.do")){
			String id = request.getParameter("id");
			System.out.println(id);
			EmpVO prodInfo = EmpDAO.findProd(id);
			request.setAttribute("prodInfo", prodInfo);
			nextPage = "/modProdForm.jsp";
			
		} else if(action.equals("/modProd.do")){
			String id = request.getParameter("id");
			System.out.println(id);
			String name = request.getParameter("name");
			int price = Integer.valueOf(String.valueOf(request.getParameter("price")));
			String desc = request.getParameter("desc");
			String vendid = request.getParameter("vendid");
			EmpVO EmpVO = new EmpVO(id, name, price, desc, vendid);
			System.out.println("1111111111111111111111111111111111");
			EmpDAO.modProd(EmpVO);
			request.setAttribute("msg", "modified");
			nextPage = "/emp/prodList.do";
			
		} else if(action.equals("/delProd.do")) {
			String id = request.getParameter("id");
			EmpDAO.delProd(id);
			request.setAttribute("msg", "deleted");
			System.out.println("삭제아디"+id);
			nextPage="/emp/prodList.do";
			
		} else {
			List<EmpVO> prodsList = EmpDAO.prodslist();
			request.setAttribute("prodsList", prodsList);
			nextPage = "/prodList.jsp";
		}

		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}
}