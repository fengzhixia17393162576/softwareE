<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    <title>学生疫情情况上报统计</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
   
    <link rel="stylesheet" type="text/css" href="index.css">
    <script type="text/javascript" src="info.js"></script>
   <style>
   div{text-align:center}
   </style>
   <script   Language="javaScript">   
          function     validate()   
          {   
                  if     (document.myform.Institute.value=="")   
                  {   
                          alert("学院不能为空.");   
                          document.myform.Institute.focus();   
                          return   false   ;   
                  }   
  if     (document.myform.Banji.value=="")   
                  {   
                          alert("班级不能为空.");   
                          document.myform.Banji.focus();   
                          return   false   ;   
                  }   
    
                          return     true;   
          }   
  </script>   
  </head>

  <body >
  <h1 style="color:#000000"></h1>
   <b><font  size=5 color=#008484><h1 align="center">学生疫情上报填写</h1></font></b>
<!--     <br><marquee direction="right"behavior="alternate"scrollamount="3"><h1 style="color:#003636;">感谢你的配合</h1></marquee></br> -->
<!--     <form   action="main.jsp"   method="post"   name="myform"   onsubmit="return     validate()">  -->
     <form action="main.jsp" method="get" accept-charset="utf-8" onsubmit="return validate()">
   <table>
       <tr >
          <td >所在学院：</td>
          <td><input type="text" name="Institute" value="${param.Institute}"></td>
       </tr>
       <tr>
          <td>所在班级：</td>
          <td><input type="text" name="Banji" value="${param.Banji}"></td>
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
          <td><input type="text" name="City" value="${param.City}"></td>
       </tr>
      <tr>
          <td>是否为留学中国生：</td>
          <td> 是<input type="radio" name="Abroad" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="Abroad" value="否" /></td>   
       </tr>
        <tr>
          <td>是否为湖北籍（不含武汉）学生：</td>
          <td> 是<input type="radio" name="Hubeiji" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="Hubeiji" value="否" /></td>   
       </tr>
        <tr>
          <td>是否近14日内与武汉疫区人员接触过：</td>
          <td> 是<input type="radio" name="Wuhanyiqu" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="Wuhanyiqu" value="否" /></td>   
       </tr>
        <tr>
          <td>是否近14日内与湖北疫区（不含武汉）人员接触过：</td>
          <td> 是<input type="radio" name="Hubeiyiqu" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="Hubeiyiqu" value="否" /></td>   
       </tr>
        <tr>
          <td>是否在武汉：</td>
          <td> 是<input type="radio" name="Atwuhan" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="Atwuhan" value="否" /></td>   
       </tr>
        <tr>
          <td>是否在湖北(不含武汉)：</td>
          <td> 是<input type="radio" name="Athubei" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="Athubei" value="否" /></td>   
       </tr>
       <tr>
          <td>是否今天从外地返校：</td>
          <td> 是<input type="radio" name="Fanxiao" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="Fanxiao" value="否" /></td>   
       </tr>
       <tr>
          <td>是否有疫情疑似症状：</td>
          <td> 是<input type="radio" name="Symptom" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="Symptom" value="否" /></td>   
       </tr>
       <tr>
          <td>是否确认被感染：</td>
          <td> 是<input type="radio" name="Infect" value="是" checked="checked"/></td>
         
       <td> 否<input type="radio" name="Infect" value="否" /></td>   
       </tr>

       <tr>
          <td>其他情况：</td>
          <td><textarea name="Qita" >${param.qita}</textarea></td>
       </tr>
       <tr align="right">
          <td>
           <input type="submit" value="下一步">
          </td>
       </tr>

   </table>
 
   </form>
  </body>
</html>
