<%--
  Created by IntelliJ IDEA.
  User: 克渊
  Date: 2019/3/15
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GETTING STARTED</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>GETTING STARTED WITH SOME EXAMPLES</title>
    <meta name="description" content="Try to find out the better one among these tests.">
    <link type="text/css" link rel="stylesheet" href="css/learn.css">

</head>
<body>
<h1>START YOUR FIRST CLASS</h1>
<h2>Select the better test.</h2>
<p>
    <code>

        //[TestMethod1]    <br>
        @Test           <br>
        <strong>public void </strong>test_register() {          <br>
        RegistrationForm <var>form</var> = new RegistrationForm();              <br>
        <var>form</var>.setEmail("Al.Pacino@example.com");              <br>
        <var>form</var>.setName("Al Pacino");                       <br>
        <var>form</var>.setPwd("GodFather");                            <br>
        <var>form</var>.setPwdVerification("GodFather");            <br>

        assertNotNull(<var>form</var>.getEmail());                  <br>
        assertNotNull(<var>form</var>.getName());                      <br>
        assertNotNull(<var>form</var>.getPwd());                    <br>
        assertNotNull(<var>form</var>.getPwdVerification());                <br>

        form.register();         <br>
        } <br>
    </code>
</p>
<p>
    <code>
    //[TestMethod2]     <br>
    <strong>private boolean </strong>validate(RegistrationForm form){  <br>
    //Check if all the inputs are in the correct form<br>
    }<br>
    @Test<br>
    <strong>public void </strong>test_register_right(){          <br>
    RegistrationForm <var>form</var> = new RegistrationForm();              <br>
    <var>form</var>.setEmail("Al.Pacino@example.com");              <br>
    assertEqual("Al.Pacino@example.com",<var>form</var>.getEmail());                  <br>

    }      <br>
    <strong>public void </strong>test_register_null(){           <br>
    RegistrationForm <var>form</var> = new RegistrationForm();         <br>
    <var>form</var>.setEmail(null);            <br>
    assertTrue(<var>form</var>.validate);          <br>
    }       <br>

</code>

</p>
<form action="AnswerServlet" method="post">
    <input type="hidden" name="answer_id" value="1">
    <br>
    <input type="hidden" name="user_id" value="1">
    <br>
    <input type="radio" name="user_answer" value="1">Method 1

    <br>
    <input type="radio" name="user_answer" value="2">Method 2
    <br>
    <input type="submit"value="提交">
</form>

<button>Skip</button>
<button>HINT</button>
<!--a href="jsp/chaining_test.jsp"><font size="2"><i>Next Question</i></font></a-->
</body>
</html>
