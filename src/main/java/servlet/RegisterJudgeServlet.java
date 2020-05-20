package servlet;

import bean.Employee;
import com.fasterxml.jackson.databind.ObjectMapper;
import daoImpl.EmployeeDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


public class RegisterJudgeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        //String employeeName = request.getParameter("employeeName");
        Employee employee=new Employee();
        employee.setEmployeeName(request.getParameter("employeeName"));
        Map<String,Object> map=new HashMap<String,Object>();
        if (new EmployeeDaoImpl().save_query(employee)) {
            map.put("userExit", true);
            map.put("msg", "此用户名太受欢迎，请换一个");

        }else{
            map.put("userExit", false);
            map.put("msg", "此用户名可用");
        }

            ObjectMapper mapper = new ObjectMapper();
            mapper.writeValue(response.getWriter(), map);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
