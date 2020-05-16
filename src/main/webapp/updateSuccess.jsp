<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>RegisterSuccess</title>
    <%response.setHeader("refresh","5,url=updateMessage.jsp"); %>
</head>
<body>

   <h1 align="center">恭喜你 ${employee.employeeName }!修改成功成功，<a href="updateMessage.jsp">5秒后自动跳转到修改之后页面，如果没有跳转，请点击这里</a></h1>

</body>
</html>