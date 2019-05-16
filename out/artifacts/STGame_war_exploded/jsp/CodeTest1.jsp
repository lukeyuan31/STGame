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
<h1>Write your test</h1>
<h2>Method to be tested</h2>
<p>
    <strong>public class </strong>Calculator{           <br>
    <strong>public int </strong>add(int a, int b){              <br>
            return a + b;                                           <br>
                }                                           <br>

    <strong>public int </strong>subtract(int a, int b){             <br>
            return a - b;                   <br>
                }
    <strong>public int </strong>multiply(int a, int b){     <br>
            return a * b;                                   <br>
                }                                       <br>
    <strong>public int </strong>divide(int a, int b){           <br>
            return a / b;                                       <br>
                 }                      <br>
    }               <br>
</p>
<form action="UserCodeServlet" method="post">
    <input type="hidden" name="user_id" value="1">
<textarea rows="40" cols="100" name="user_input"> </textarea>
    <input type="submit" style="background-color: #93defe">
</form>
<div>
    <font color="red" size="5">${message}</font>
</div>
</body>
</html>
