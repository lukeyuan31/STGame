<%--
  Created by IntelliJ IDEA.
  User: 克渊
  Date: 2019/4/18
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path=request.getContextPath();%>
<html>
<head>
    <title>Test your own code!</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link type="text/css" link rel="stylesheet" href="<%=path%>/css/learn.css">

</head>
<body>
<h1>Write your code to test the given method</h1>
<h2>Here is the method to be tested</h2>
<p>
    public void TestMethod(){       <br>
            int test1=0;            <br>
            String test2="test";    <br>
            Boolean test3=true;     <br>

    }<br>
</p>
<form action="UserCodeServlet" method="post">
    <input type="hidden" name="user_id" value="1">
<textarea rows="40" cols="100" name="user_input"> </textarea>
    <input type="submit" style="background-color: #93defe">
</form>
<div>
    <font color="aqua" size="2">${message}</font>
</div>
</body>
</html>
