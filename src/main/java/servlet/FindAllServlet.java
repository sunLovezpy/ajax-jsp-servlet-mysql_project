package servlet;

import bean.Employee;
import daoImpl.EmployeeDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class FindAllServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //List<Employee> employees = new EmployeeDaoImpl().findAllEmployee();
        /*for (Employee employee : employees) {
            System.out.println(employee);
        }*/
        request.getSession().setAttribute("employees",new EmployeeDaoImpl().findAllEmployee());
        //request.setAttribute("employees",employees);
        //request.setAttribute("msg","用户已删除");
        //重定向到查询页面

        //response.sendRedirect("allMessageShow.jsp");
        response.sendRedirect("1.jsp");




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
