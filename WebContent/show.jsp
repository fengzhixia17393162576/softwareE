<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<h1>用户列表</h1>

<table border="1" width="400">
<%
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String url = "jdbc:sqlserver://localhost;DatabaseName=db";
    Connection conn = DriverManager.getConnection(url,"sa","fzx201626");
    String sql = "select * from user;";
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();
    while(rs.next()){
%>
   <tr>
        <td><%=rs.getInt("id") %></td>
        <td><%=rs.getString("name") %></td>
        <td>
            <a href="dodel.jsp?id=<%=rs.getInt("id") %>">删除</a>     
        </td>
    </tr>
<%      
    }
    conn.close();
%>

</table>
<a href="index1.jsp">继续注册</a>
