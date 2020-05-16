<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reply Message</title>
<script type="text/javascript" charset="utf-8"
	src="utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="utf8-jsp/ueditor.all.min.js">
	
</script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="lang/zh-cn/zh-cn.js"></script>
<script src="static/jquery-3.2.1.min.js" type="text/javascript"></script>
<!--自定义的jquery-->
<script type="text/javascript">
	$(document).ready(function() {
		var publishTime = new Date();
		function formatTime(date) {
			var y = date.getFullYear();
			var m = date.getMonth() + 1;
			m = m < 10 ? ('0' + m) : m;
			var d = date.getDate();
			d = d < 10 ? ('0' + d) : d;
			return y + '-' + m + '-' + d;
		}
		;
		var formatDateTime = formatTime(publishTime);
		$("#publishTime").val(formatDateTime);

	});
</script>
</head>
<body>
	<div>
		<form method="post" action="PublishReplyServlet">
			<h2>回复:</h2>
			<script id="editor" type="text/plain"
				style="width:1024px;height:500px;"></script>
			<input id="publishTime" type="hidden" type="date" name="publishTime">
			<button type="submit" class="btn btn-primary">提交</button>
			<input id="publishTime" type="hidden" type="date" name="publishTime">
		</form>
	</div>
	<script type="text/javascript">
		//实例化编辑器
		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
		var ue = UE.getEditor('editor');
	</script>

</body>
</html>