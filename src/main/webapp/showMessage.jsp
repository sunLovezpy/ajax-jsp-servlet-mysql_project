<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="static">
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet"
          href="static/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script
            src="static/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="static/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
    crossorigin="anonymous">
        <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
        <script src="static/bootstrap.min.js"
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>
    <style type="text/css">
        body {
            background-image: url("./images/004.jpg");
        }

        .showMessage {
            margin: 0 auto;
            width: 500px;
            height: 600px;
            border: 2px solid;
            width: 500px;
            background-image: url("./images/60.jpg");
        }

        h5 {
            font-size: 15px;
        }

        .showReply {
            height: 100px;
            width: 500px;
            margin: auto;
        }

        #btn1 {
            background-color: lime;
        }
        #btn2 {
            background-color: lime;
        }
        #btn3 {
            background-color: lime;
        }
        .table {
            margin: 0 auto;
            width: 720px;
            border: 1px solid;
            text-align: left;
            padding-left: 10px;
        }

        #p {
            color: red;
        }
        #buttons {
            margin-left:660px;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#btn1").click(function () {
                $(location).attr('href', 'PublishReplyServlet');
            });
            $("#btn2").click(function () {
                $(location).attr('href', 'show.jsp');
            });
        });

    </script>
</head>
<body>
<script>
    function deleteUser(btn1) {
        if(confirm("确定删除？")){
            location.href="PublishMessageServlet?employeeId="+btn1;
        }
    }
</script>
<form action="PublishMessageServlet" method="post" >
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>
    <div id="show">
        <c:choose>
            <c:when test="${empty sessionScope.employee}">没进行身份识别，请进行身份识别</c:when>
            <c:otherwise>
                <h1 align="center"> ${employee.employeeName }</h1>
                <table class="table">
                    <!--el表达式默认调取了getEmployeeId方法  -->
                    <tr class="warning">
                        <td>Id:${employee.employeeId }</td>
                        <td><div class="form-group">
                            <div class="col-sm-8">
                                <input type="input" class="form-control" id="employeeId"
                                       placeholder="employeeId" name="employeeId">
                            </div>
                            </div>
                        </td>
                    </tr>
                    <tr class="success">
                        <td>姓名:${employee.employeeName }</td>
                        <td><div class="form-group">
                            <div class="col-sm-8">
                                <input type="input" class="form-control" id="employeeName"
                                       placeholder="employeeName" name="employeeName">
                            </div>
                        </div>
                        </td>
                    </tr>
                    <tr class="warning">
                        <td>性别:${employee.employeeSex }</td>
                        <td><div class="form-group">
                            <div class="col-sm-8">
                                <select class="form-control" name="employeeSex">
                                    <option value="male">男</option>
                                    <option value="female">女</option>
                                </select>
                            </div>
                        </div>
                            </td>
                    </tr>
                    <tr class="danger">
                        <td>出生日期:${employee.employeeBirth }</td>
                        <td><div class="form-group">
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="employeeBirth" name="employeeBirth">
                            </div>
                        </div>
                        </td>
                    </tr>
                    <tr class="info">
                        <td>年龄:${employee.employeePhone }</td>
                        <td><div class="form-group">
                            <div class="col-sm-8">
                                <input type="input" class="form-control" id="employeePhone"
                                       placeholder="employeePhone" name="employeePhone">
                            </div>
                        </div>
                        </td>
                    </tr>
                    <tr class="warning">
                        <td>地址:${employee.employeePlace }</td>
                        <td><div class="form-group">
                            <div class="col-sm-8">
                                <input type="input" class="form-control" id="employeePlace"
                                       placeholder="employeePlace" name="employeePlace">
                            </div>
                        </div>
                        </td>
                    </tr>
                    <tr class="success">
                        <td>注册时间:${employee.joinTime }</td>
                        <td><div class="form-group">
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="joinTime" name="joinTime">
                            </div>
                        </div>
                        </td>
                    </tr>
                    <tr class="info">
                        <td><div class="form-group">
                            <div class="col-sm-8">
                                <input type="reset" class="form-control" value="重置" >
                            </div>
                        </div>
                        </td>
                        <td><div class="form-group">
                            <div class="col-sm-8">
                                <input type="submit" class="form-control" value="修改">

                            </div>
                        </div>
                        </td>
                    </tr>
                </table>
            </c:otherwise>
        </c:choose>
    </div>
</div>
</form>
<div class="showReply">
    <a class="btn btn-warning" href="PublishReplyServlet?employeeId=${employee.employeeId }" id="btn1" onblur="deleteUser()">删除用户</a>
    <a class="btn btn-primary" href="show.jsp" id="btn2">返回</a>
</div>
<p id="p"><b>注意:</b>id不可更改，应保持一致一共七个字段,只需要填写其余6个字段即可</p>
</body>
</html>