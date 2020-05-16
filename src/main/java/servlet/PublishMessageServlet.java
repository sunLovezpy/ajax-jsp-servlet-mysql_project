package servlet;

import bean.Employee;
import daoImpl.EmployeeDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
public class PublishMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		int employeeId = Integer.parseInt(request.getParameter("employeeId"));
		String employeeName = request.getParameter("employeeName");
		Employee employee=new Employee();
		employee.setEmployeeId(employeeId);
		employee.setEmployeeName(request.getParameter("employeeName"));
		try {
			employee.setEmployeeBirth(new SimpleDateFormat("yyyy-mm-ss").parse(request.getParameter("employeeBirth")));// 将字符串转为Date类型
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		employee.setEmployeePhone(request.getParameter("employeePhone"));
		employee.setEmployeePlace(request.getParameter("employeePlace"));
		employee.setEmployeeSex(request.getParameter("employeeSex"));
		try {
			employee.setJoinTime(new SimpleDateFormat("yyyy-mm-ss").parse(request.getParameter("joinTime")));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		new EmployeeDaoImpl().updateEmployee(employee);

		request.getSession().setAttribute("employee", new EmployeeDaoImpl().findEmployeeByName(employeeName));
		response.sendRedirect("updateSuccess.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
