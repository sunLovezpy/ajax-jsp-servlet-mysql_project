package servlet;

import bean.Employee;
import daoImpl.EmployeeDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//import daoImpl.MessageDaoImpl;
//删除用户
public class PublishReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		/*String employeeName = request.getParameter("employeeName");
		EmployeeDaoImpl employeeDaoImpl = new EmployeeDaoImpl();

		//List<Employee> employees = employeeDaoImpl.findAllEmployee();
		//request.setAttribute("employees", employees);
		Employee employee = employeeDaoImpl.findEmployeeByName(employeeName);
		request.setAttribute("employee",employee);
		request.getRequestDispatcher("showMessage.jsp").forward(request,response);*/

		//接收请求参数 点击超链接为get请求
		int employeeId = Integer.parseInt(request.getParameter("employeeId"));
		//处理业务
		new EmployeeDaoImpl().deleteEmployee(employeeId);


		List<Employee> employees = new EmployeeDaoImpl().findAllEmployee();
		for (Employee employee : employees) {
			System.out.println(employee);
		}
		request.getSession().setAttribute("employee",employees);
		//request.setAttribute("employees",employees);
		request.setAttribute("msg","用户已删除");
		//重定向到查询页面
		response.sendRedirect("deleteSuccess.jsp");
		//response.sendRedirect("deleteSuccess.jsp");



	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
