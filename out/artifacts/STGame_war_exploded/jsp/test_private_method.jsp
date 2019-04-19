<%--
  Created by IntelliJ IDEA.
  User: 克渊
  Date: 2019/3/15
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path=request.getContextPath();%>
<html>
<head>
    <title>Getting Started</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>GETTING STARTED WITH SOME EXAMPLES</title>
    <meta name="description" content="Try to find out the better one among these tests.">
    <link rel="stylesheet" href="<%=path%>/css/learn.css">

</head>
<body>
<h1>START YOUR FIRST CLASS</h1>
<h2>Select the better test.</h2>
<p>
    for methods like this:          <br>
    public class RegistrationForm {         <br>

    private String name,email,pwd,pwdVerification;          <br>
    // Setters - Getters are ommitted    <br>
    public boolean register(){          <br>
    validate();         <br>
    return doRegister();            <br>
    }               <br>

    private boolean doRegister() {              <br>
    //Do something with the persistent context    <br>
    return true;            <br>
    }

    //[TestMethod1]     <br>
    No need to test this method <br>

    //[TestMethod2]    <br>
    @Test           <br>
    public void test_register(){          <br>
    RegistrationForm form = new RegistrationForm();              <br>
    form.setEmail("Al.Pacino@example.com");              <br>
    form.setName("Al Pacino");                       <br>
    form.setPwd("GodFather");                            <br>
    form.setPwdVerification("GodFather");            <br>

    assertTrue(form.doRegister);                  <br>
    <br>
    }

</p>
<form action="AnswerServlet" method="post">
    <input type="hidden" name="answer_id" value="6">
    <br>
    <input type="radio" name="user_answer" value="1">Method 1

    <br>
    <input type="radio" name="user_answer" value="2">Method 2
    <br>
    <input type="submit"value="提交">
</form>

<button>Skip</button>
<button>HINT</button>

</body>
</html>