<%--
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
