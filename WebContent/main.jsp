<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%  %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    <title>表单预览</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
    
    <link rel="stylesheet" type="text/css" href="index.css">
   
	
  </head>

  <body>
   <form action="PublishServlet" method="post" >
   <font size=5><h1 align="center">学生疫情调查统计预览表</h1></font>
   <hr/>


<h1 align="right">调查结果</h1>
<hr/>
<div align="center">
<table border="1" bordercolor="#000000" cellspacing="0" cellpadding="2" style="border-collapse:collapse">
<tr>
<td>
所在学院</td> <td><%=request.getParameter("Institute") %></td></tr>
<tr>
<td>
所在班级</td> <td><%=request.getParameter("Banji") %></td></tr>
<tr>
<td>
填报人</td> <td><%=request.getParameter("Writer") %></td></tr>
<tr>
<td>
联系电话</td> <td><%=request.getParameter("Telephone") %></td></tr>
<tr>
<td>
当前所在省</td> <td><%=request.getParameter("Province") %></td></tr>
<tr>
<td>
当前所在市</td> <td><%=request.getParameter("City") %></td></tr>
<tr>
<td>
是否为留学中国生</td> <td><%=request.getParameter("Abroad") %></td></tr>
<tr>
<td>
是否为湖北籍（不含武汉）学生</td> <td><%=request.getParameter("Hubeiji") %></td></tr>
<tr>
<td>
是否近14日内与武汉疫区人员接触过</td> <td><%=request.getParameter("Wuhanyiqu") %></td></tr>
<tr>
<td>
是否近14日内与湖北疫区（不含武汉）人员接触过</td> <td><%=request.getParameter("Hubeiyiqu") %></td></tr>
<tr>
<td>
是否在武汉</td> <td><%=request.getParameter("Atwuhan") %></td></tr>
<tr>
<td>
是否在湖北（不含武汉</td> <td><%=request.getParameter("Athubei") %></td></tr>
<tr>
<td>
是否今天从外地返校</td> <td><%=request.getParameter("Fanxiao") %></td></tr>
<tr>
<td>
是否有疫情疑似症状</td> <td><%=request.getParameter("Symptom") %></td></tr>
<tr>
<td>
是否确认被感染</td> <td><%=request.getParameter("Infect") %></td></tr>
<tr>
<td>
其他情况</td> <td><%=request.getParameter("Qita") %></td></tr></table>
<table>
<tr>
<th colspan="10">
                        <input type="submit" value="提交">
                    </th>
                </tr>
</table>

  </form> 
  </body>
</html>
