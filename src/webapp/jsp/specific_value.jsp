<%--
  Created by IntelliJ IDEA.
  User: 克渊
  Date: 2019/3/15
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path=request.getContextPath();%>
<html>
<head>
    <title>GETTING STARTED</title>
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
    //[TestMethod1]    <br>
    @Test           <br>
    public void test_register(){          <br>
    RegistrationForm form = new RegistrationForm();              <br>
    form.setEmail("Al.Pacino@example.com");              <br>
    form.setName("Al Pacino");                       <br>
    form.setPwd("GodFather");                            <br>
    form.setPwdVerification("GodFather");            <br>

    assertNotNull(form.getEmail());                  <br>
    form.register();         <br>
    }                   <br>

    //[TestMethod2]     <br>
    @Test               <br>
    public void test_register(){          <br>
    RegistrationForm form = new RegistrationForm();              <br>
    form.setEmail("Al.Pacino@example.com");              <br>
    form.setName("Al Pacino");                       <br>
    form.setPwd("GodFather");                            <br>
    form.setPwdVerification("GodFather");            <br>

    assertEqual("Al.Pacino@example.com",form.getEmail());                  <br>
    form.register();         <br>
    }
</p>
<form action="AnswerServlet" method="post">
    <input type="hidden" name="answer_id" value="5">
    <br>
    <input type="radio" name="user_answer" value="1">Method 1

    <br>
    <input type="radio" name="user_answer" value="2">Method 2
    <br>
    <input type="submit"value="提交">
</form>

<button>Skip</button>
<button>HINT</button>
<!--a href="test_private_method.jsp"><font size="2"><i>Next Question</i></font></a-->
</body>
</html>
