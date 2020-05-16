package servlet;

import bean.Employee;
import daoImpl.EmployeeDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class ShowReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		List<Employee> employees = new EmployeeDaoImpl().findAllEmployee();
		for (Employee employee : employees) {
			System.out.println(employee);
		}
		request.getSession().setAttribute("employee",employees);
		//request.setAttribute("employees",employees);
		//request.setAttribute("msg","用户已删除");
		//重定向到查询页面
		response.setContentType("text/html;charset=utf-8");
		response.sendRedirect("allMessageShow.jsp");


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
