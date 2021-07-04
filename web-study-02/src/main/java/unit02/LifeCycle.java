package unit02;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LifeCycle")
public class LifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    int initCount = 1;
    int doGetCount = 1;
    int destroyCount = 1;
    
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init �޼ҵ�� ù ��û�� ȣ���: " + initCount++);
	}
	public void destroy() {
		System.out.println("destroy �޼ҵ�� ��Ĺ�� ����� ���� ȣ���:"+ destroyCount++);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet �޼ҵ尡 ��û�ɶ����� ȣ���:" +doGetCount++);
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}