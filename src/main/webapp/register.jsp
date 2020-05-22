<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Register</title>
	<script src="static/jquery-3.2.1.min.js"
			type="text/javascript"></script>
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
	<style type="text/css">
		#error{
			color:red;
			align:center;
		}
	</style>
	<script>
		$(function () {
			$("#employeeName").blur(function () {
				var employeeName = $(this).val();
				$.post("RegisterJudgeServlet",{employeeName:employeeName},function (date) {
					var span =$("#userName");
					if(date.userExit){
						span.css("color","red");
						span.html(date.msg)
						alert("请想一个符合你的名字");
					}else{
						span.css("color","green");
						span.html(date.msg);
					}
				},"json");
			});
			$("#employeeConfirmPassword").blur(function () {
                   if($("#employeePassword").val()==$("#employeeConfirmPassword").val()){
					   return true;
				   }else{
					   alert('两次密码不一致')
				   }
			});
			$("#employeePhone").blur(function () {
				var age = $("#employeePhone").val();
				var regNum = /^[0-9]{1,2}$/;
				if (regNum.test(age)) {
					return true;
				}
				else {
					alert("请输入0-99两位数字！年龄输入不合法，请重新输入")
					return false;
				}
			});
		});
	</script>

</head>
<body>
<div id="register" >
<form class="form-horizontal" method="post" action="RegisterServlet" >
	<div class="form-group">
		<label for="employeeName" class="col-sm-2 control-label">姓名:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="employeeName"
				   placeholder="username" name="employeeName">
		</div>
        <span id="userName"></span>
		<font id="error" size="4"><%=request.getAttribute("register_error") == null ? "" : request.getAttribute("register_error") %></font>
	</div>
	<div class="form-group">
		<label for="employeePassword" class="col-sm-2 control-label">密码:</label>
		<div class="col-sm-4">
			<input type="input" class="form-control" id="employeePassword"
				   placeholder="password" name="employeePassword">
		</div>
	</div>
	<div class="form-group">
		<label for="employeeConfirmPassword" class="col-sm-2 control-label">确认密码:</label>
		<div class="col-sm-4">
			<input type="input" class="form-control" id="employeeConfirmPassword"
				   placeholder="password" name="employeeConfirmPassword">
		</div>
	</div>

	<div class="form-group">
		<%--@declare id="employeesex"--%><label for="employeeSex" class="col-sm-2 control-label">性别:</label>
		<div class="col-sm-1">
			<select class="form-control" name="employeeSex">
				<option value="male">男</option>
				<option value="female">女</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="employeePhone" class="col-sm-2 control-label">年龄:</label>
		<div class="col-sm-4">
			<input type="input" class="form-control" id="employeePhone" name="employeePhone">
		</div>
	</div>
	<div class="form-group">
		<label for="employeeBirth" class="col-sm-2 control-label">出生日期:</label>
		<div class="col-sm-4">
			<input type="date" class="form-control" id="employeeBirth" name="employeeBirth">
		</div>
	</div>

	<div class="form-group">
		<label for="employeePlace" class="col-sm-2 control-label">住址:</label>
		<div class="col-sm-4">
			<input type="input" class="form-control" id="employeePlace" name="employeePlace">
		</div>
	</div>
	<div class="form-group">
		<label for="joinTime" class="col-sm-2 control-label">注册时间:</label>
		<div class="col-sm-4">
			<input type="date" class="form-control" id="joinTime" name="joinTime">
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-4">
			<input type="hidden" class="form-control" id="isLead" value="false" name="isLead">
		</div>
	</div>
	<div class="form-group">
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-success">注册</button>
				<button type="reset" class="btn btn-warning">重置</button>
			</div>
		</div>
	</div>
</form>
</div>
<%--<h1><%=request.getAttribute("error") == null ? "" : request.getAttribute("error") %></h1>--%>
</body>
</html>