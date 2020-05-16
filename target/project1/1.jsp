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

        #buttons {
            margin-left:660px;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#btn2").click(function () {
                $(location).attr('href', 'show.jsp');
            });
        });

    </script>
</head>
<body>
<form action="ShowMessageServlet" method="post">
    <div class="container">

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>查询所有信息</small>
                    </h1>
                </div>
            </div>
        </div>
        <c:forEach items="${employees}" var="employee">
        <div id="show">

            <h1 align="center"> ${employee.employeeName }</h1>
            <table class="table">
                <!--el表达式默认调取了getEmployeeId方法  -->
                <tr class="success">
                    <td>姓名:${employee.employeeName }</td>

                </tr>
                <tr class="warning">
                    <td>性别:${employee.employeeSex }</td>

                </tr>
                <tr class="danger">
                    <td>生日:${employee.employeeBirth }</td>

                </tr>
                <tr class="info">
                    <td>年龄:${employee.employeePhone }</td>

                </tr>
                <tr class="warning">
                    <td>地址:${employee.employeePlace }</td>

                </tr>
                <tr class="success">
                    <td>注册时间:${employee.joinTime }</td>
                </tr>
            </table>

        </div>
        </c:forEach>
    </div>
</form>
<div class="showReply">
    <a class="btn btn-primary" href="index.jsp" id="btn2">返回</a>
</div>

</body>
</html>