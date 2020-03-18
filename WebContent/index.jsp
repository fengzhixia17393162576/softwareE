<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    <title>学生疫情调查</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
  
    <link rel="stylesheet" type="text/css" href="index.css">
 
  </head>

  <body>
  <h1>学生疫情调查</h1>
  <hr/>
   <form action="PublishServlet" method="post">
   <table>
       <tr >
          <td >所在学院：</td>
          <td><input type="text" name="Institute" value="${param.Institute}"></td>
       </tr>
       <tr>
          <td>所在班级：</td>
          <td><input type="text" name="Class" value="${param.Class}"></td>
       </tr>
       <tr>
          <td>填报人：</td>
          <td><input type="text" name="Writer" value="${param.Writer}"></td>
       </tr>
       <tr>
          <td>联系电话：</td>
          <td><input type="text" name="Telephone" value="${param.Telephone}"></td>
       </tr>
       <tr>
          <td>当前所在省：</td>
          <td><input type="text" name="Province" value="${param.Province}"></td>
       </tr>
       <tr>
          <td>当前所在市：</td>
          <td><input type="text" name="city" value="${param.city}"></td>
       </tr>
      <tr>
          <td>是否为留学中国生：</td>
          <td> 是<input type="radio" name="Abroad" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="Abroad" value="否" /></td>   
       </tr>
        <tr>
          <td>是否为湖北籍（不含武汉）学生：</td>
          <td> 是<input type="radio" name="hubeiji" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="hubeiji" value="否" /></td>   
       </tr>
        <tr>
          <td>是否近14日内与武汉疫区人员接触过：</td>
          <td> 是<input type="radio" name="wuhanyiqu" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="wuhanyiqu" value="否" /></td>   
       </tr>
        <tr>
          <td>是否近14日内与湖北疫区（不含武汉）人员接触过：</td>
          <td> 是<input type="radio" name="hubeiyiqu" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="hubeiyiqu" value="否" /></td>   
       </tr>
        <tr>
          <td>是否在武汉：</td>
          <td> 是<input type="radio" name="atwuhan" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="athwuhan" value="否" /></td>   
       </tr>
        <tr>
          <td>是否在湖北（不含武汉：</td>
          <td> 是<input type="radio" name="athubei" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="athubei" value="否" /></td>   
       </tr>
       <tr>
          <td>是否今天从外地返校：</td>
          <td> 是<input type="radio" name="fanxiao" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="fanxiao" value="否" /></td>   
       </tr>
       <tr>
          <td>是否有疫情疑似症状：</td>
          <td> 是<input type="radio" name="Symptom" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="Symptom" value="否" /></td>   
       </tr>
       <tr>
          <td>是否确认被感染：</td>
          <td> 是<input type="radio" name="infect" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="infect" value="否" /></td>   
       </tr>

       <tr>
          <td>其他情况：</td>
          <td><textarea name="qita" >${param.qita}</textarea></td>
       </tr>
       <tr align="right">
          <td>
           <input type="submit" value="提交">
          </td>
       </tr>

   </table>

   </form>
  </body>
</html>
