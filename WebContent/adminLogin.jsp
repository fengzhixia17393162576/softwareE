<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登录</title>

 <link rel="stylesheet" type="text/css" href="index.css">
</head>

<body>
	<div align="center">
	
		<p class="siteName">管 理 员 登 录</p>
	</div>
	<div id="pagecell1">

		<div align="center">
			<br>

			<form method="post" action="Excel.jsp">
				<% 
if(request.getAttribute("errInf")!=null){ 
%>
				<p class="errInf">
					<%= 
(String)request.getAttribute("errInf") %>
				</p>
				<% } %>
				<p>
					帐号：<input name="id" type="text" id="id">
				</p>
				<p>
					密码：<input name="password" type="password" id="password">
				</p>
				<p>
					<input type="submit" name="Submit" value=" 登录 ">
				</p>
			</form>
			
		</div>
	</div>
</body>
</html>
