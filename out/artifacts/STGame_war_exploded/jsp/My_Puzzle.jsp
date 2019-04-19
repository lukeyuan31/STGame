<%@ page import="DAO.PointDao" %><%--
  Created by IntelliJ IDEA.
  User: 克渊
  Date: 2019/4/9
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My puzzle</title>
</head>
<body>
This is my puzzle
<%
    Object point1 = new PointDao().findPoint("1");
    //Object point1=request.getAttribute("point");
    String point=point1.toString();
    //point=point+".png";
    String path = "images/"+point+".jpg";
%>
<img src=<%=path%>>

<%
    if (point.equals("7")){
        %>
<form action="JumpServlet" method="post">
    <input type="hidden" name="question_id" value="8">
    <input type="submit" value="Press to enter code test">
</form>
<!--button id="button" style="background-color: #27A9E3;" onclick="location.href='jsp/CodeTest1.jsp'"> Press to enter code test</button-->
<%
    }
%>
<form action="JumpServlet" method="post">
    <input type="hidden" name="question_id" value="1">
    <input type="submit" value="No.1">
</form>
<form action="JumpServlet" method="post">
    <input type="hidden" name="question_id" value="2">
    <input type="submit" value="No.2">
</form>
<form action="JumpServlet" method="post">
    <input type="hidden" name="question_id" value="3">
    <input type="submit" value="No.3">
</form>
<form action="JumpServlet" method="post">
    <input type="hidden"  name="question_id" value="4">
    <input type="submit" value="No.4">
</form>
<form action="JumpServlet" method="post">
    <input type="hidden" name="question_id" value="5">
    <input type="submit" value="No.5">
</form>
<form action="JumpServlet" method="post">
    <input type="hidden" name="question_id" value="6">
    <input type="submit" value="No.6">
</form>
<form action="JumpServlet" method="post">
    <input type="hidden" name="question_id" value="7">
    <input type="submit" value="No.7">
</form>
<font color="red" size="2"> ${msg }</font>
</body>
</html>
