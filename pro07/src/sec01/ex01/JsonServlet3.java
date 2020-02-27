package sec01.ex01;
//661p

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

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;



@WebServlet("/json3")
public class JsonServlet3 extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		doHandle(request, response);
		
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException{
		System.out.println("11111");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter writer = response.getWriter();
		JSONObject totaObject = new JSONObject();
		JSONArray memberArray = new JSONArray();
		JSONObject memberInfo = new JSONObject();
		
		memberInfo.put("name", "박지성");
		memberInfo.put("age","25");
		memberInfo.put("gender","남");
		memberInfo.put("nickname","날쌘돌이");
		memberArray.add(memberInfo);
		
		memberInfo = new JSONObject();
		memberInfo.put("name", "김연아");
		memberInfo.put("age","21");
		memberInfo.put("gender","여");
		memberInfo.put("nickname","퀸겨");
		memberArray.add(memberInfo);
		totaObject.put("members", memberArray);
		JSONArray bookArray = new JSONArray();
		JSONObject bookInfo = new JSONObject();
		bookInfo.put("title","초보자 자바프로그래밍");
		bookInfo.put("writer","이병승");
		bookInfo.put("price","30000");
		bookInfo.put("genre","IT");
		bookInfo.put("img","http://localhost:8088/pro07/img/img1.jpg");
		bookArray.add(bookInfo);
		System.out.println(bookInfo);
		bookInfo = new JSONObject();
		bookInfo.put("title","모두의 파이써언");
		bookInfo.put("writer","이승찬");
		bookInfo.put("price","12000");
		bookInfo.put("genre","IT");
		bookInfo.put("img","http://localhost:8088/pro07/img/img2.jpg");
		bookArray.add(bookInfo);
		totaObject.put("books", bookArray);
		String jsonInfo = totaObject.toJSONString();
		System.out.println(jsonInfo);
		writer.print(jsonInfo);			
	}	
}
