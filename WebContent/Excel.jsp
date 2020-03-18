<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Connection"%>
<%@page import=" com.Util.DbUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>
<% 
  Connection conn=DbUtil.getCon();
// 	Connection conn=dbConnection.getConn();
	Statement stmt=null;
	stmt=conn.createStatement();
	ResultSet rs=null;
	
	String sql="select * from xinxi ";
	
	String Institute = request.getParameter("Institute");
	String Banji = request.getParameter("Banji");
	String Writer=request.getParameter("Writer");
	String Telephone = request.getParameter("Telephone");
	String Province = request.getParameter("Province");
	String City = request.getParameter("City");
	String Abroad = request.getParameter("Abroad");
	String Hubeiji = request.getParameter("Hubeiji");
	String Wuhanyiqu = request.getParameter("Wuhanyiqu");
	String Hubeiyiqu = request.getParameter("Hubeiyiqu");
	String Atwuhan = request.getParameter("Atwuhan");
	String Athubei = request.getParameter("Athubei");
	String Fanxiao = request.getParameter("Fanxiao");
	
	String Symptom = request.getParameter("Symptom");
	String Infect = request.getParameter("Infect");
	String Qita = request.getParameter("Qita");
	
	

	if (Institute!= null && Institute != "")
		sql = sql + " and Institute='" + Institute + "'";
	
	if (Banji != null && Banji != "")
		sql = sql + " and Banji='" + Banji + "'";
	if (Writer !=null && Writer != "")
		sql =sql + "and Writer='" + Writer + "'";
	if (Telephone!= null && Telephone != "")
		sql = sql + " and Telephone='" + Telephone + "'";
	
	if (Province != null && Province != "")
		sql = sql + " and Province='" + Province + "'";
	if (City!= null && City != "")
		sql = sql + " and City='" + City + "'";
	
	if (Abroad != null && Abroad != "")
		sql = sql + " and Abroad='" + Abroad + "'";
	if (Hubeiji!= null && Hubeiji != "")
		sql = sql + " and Hubeiji='" + Hubeiji + "'";
	
	if (Wuhanyiqu != null && Wuhanyiqu != "")
		sql = sql + " and Wuhanyiqu='" + Wuhanyiqu + "'";
	if (Hubeiyiqu!= null && Hubeiyiqu != "")
		sql = sql + " and Hubeiyiqu='" + Hubeiyiqu + "'";
	
	if (Atwuhan != null && Atwuhan != "")
		sql = sql + " and Atwuhan='" + Atwuhan + "'";
	if (Athubei!= null && Athubei != "")
		sql = sql + " and Athubei='" + Athubei + "'";
	
	if (Fanxiao != null && Fanxiao != "")
		sql = sql + " and Fanxiao='" + Fanxiao + "'";
	
	if (Symptom != null && Symptom != "")
		sql = sql + " and Symptom='" + Symptom + "'";
	if (Infect!= null && Infect != "")
		sql = sql + " and Infect='" + Infect + "'";
	
	if (Qita != null && Qita != "")
		sql = sql + " and Qita='" + Qita + "'";

//sql = sql + " order by 学号";
 	rs=stmt.executeQuery(sql);
 %>
 <center> 
 	<table id="main" algin="center" border="0" >
  		<h3>防控情况统计表</h3>
 		<tr>
	 		<th>所在学院</th>
	 		<th>所在班级</th>
	 		<th>填报者</th>
	 		<th>联系电话</th>
	 		<th>当前所在省</th>
	 		<th>当前所在市</th>
	 		<th>是否为留学生</th>
	 		<th>是否为湖北籍学生</th>
	 		<th>是否近14日与武汉疫区接触</th>
	 		<th>是否近14日内与湖北疫区接触</th>
	 		<th>是否在武汉</th>
	 		<th>是否在湖北</th>
	 		<th>是否今天返校</th>
	 		<th>是否有症状</th>
	 		<th>是否被感染</th>
	 		<th>其他</th>

	  	</tr>
	  	
		<%
			 while(rs.next())
 			{
	 			 String x=rs.getString("Institute");
		%>
		
		<tr>
			<td><%=x%></td>
			<td><%=rs.getString("Banji")%></td>
			<td><%=rs.getString("Writer")%></td>
			<td><%=rs.getString("Telephone")%></td>
			<td><%=rs.getString("Province")%></td>
			<td><%=rs.getString("City")%></td>
			<td><%=rs.getString("Abroad")%></td>
			<td><%=rs.getString("Hubeiji")%></td>
			<td><%=rs.getString("Wuhanyiqu")%></td>
			<td><%=rs.getString("Hubeiyiqu")%></td>
			<td><%=rs.getString("Atwuhan")%></td>
			<td><%=rs.getString("Athubei")%></td>
			<td><%=rs.getString("Fanxiao")%></td>
			<td><%=rs.getString("Symptom")%></td>
			<td><%=rs.getString("Infect")%></td>
			<td><%=rs.getString("Qita") %>

		</tr>
		<% 
			}
		%>
	</table>

  <th><a id="print">导出数据到excel</a></th></tr>
<%-- <a href="<c:url value="/DownLoadServlet" />">本地下载</a>导出数据到Excel</a> --%>
</center>
<script type="application/javascript" src="js/FileSaver.js" ></script>
	<script>
		var html = "<html><head><meta charset='utf-8' /></head><body>" + document.getElementById("main").outerHTML + "</body></html>";
		var blob = new Blob
			(
				[html], 
					{
						type: "application/vnd.ms-excel"
					}
			);
		var b = document.getElementById("print");
		b.href = URL.createObjectURL(blob);
		b.download = "学生疫情情况统计表.xls";
	</script>
	</center>
</body>
</html>
