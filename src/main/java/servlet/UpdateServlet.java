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

public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String employeeName = request.getParameter("employeeName");
        EmployeeDaoImpl employeeDaoImpl = new EmployeeDaoImpl();
        Employee employee = employeeDaoImpl.findEmployeeByName(employeeName);
        request.getSession().setAttribute("employee", employee);
        response.sendRedirect("updateUserInfo.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
