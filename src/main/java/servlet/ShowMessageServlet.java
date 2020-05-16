package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Employee;
import bean.Message;
import daoImpl.EmployeeDaoImpl;
//import daoImpl.MessageDaoImpl;

public class ShowMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String employeeName = request.getParameter("employeeName");
		EmployeeDaoImpl employeeDaoImpl = new EmployeeDaoImpl();

		//List<Employee> employees = employeeDaoImpl.findAllEmployee();
		//request.setAttribute("employees", employees);
		Employee employee = employeeDaoImpl.findEmployeeByName(employeeName);
		request.setAttribute("employee",employee);
		request.getRequestDispatcher("showMessage.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
