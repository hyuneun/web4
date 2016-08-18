package pack;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/irum.go")
public class jsp_call extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String data = request.getParameter("data");
		//넘어온 자료로 이런저런 일을하다가
		
		//파일을 호출 방법1(redirect - client를 통해 server에 있는 파일 호출)
//		response.sendRedirect("jsp_call.jsp?data=" + data);
		
		//파일을 호출 방법1(forward =서버에서 서버에있는 파일을 호출(String 이외의값도 넘길수잇다)
		request.setAttribute("mydata", data + "안녕");
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp_call.jsp");
//		dispatcher.forward(request, response);
		
		//파일을 호출 방법1을 줄여쓸수있다
		request.getRequestDispatcher("jsp_call.jsp").forward(request, response);
		
	}

}
