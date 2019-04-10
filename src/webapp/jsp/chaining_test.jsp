<%--
  Created by IntelliJ IDEA.
  User: 克渊
  Date: 2019/3/14
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Getting Started</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>GETTING STARTED WITH SOME EXAMPLES</title>
    <meta name="description" content="Try to find out the better one among these tests.">
    <link type="text/css" link rel="stylesheet" href="E:\STGame\src\webapp\css\learn.css">

</head>
<body>
<h1>START YOUR FIRST CLASS</h1>
<h2>Select the better test.</h2>
<p>
    //[TestMethod1]    <br>
    public void Test1()             <br>
    {               <br>
    GlobalVariables.IsProcessorInitialized = CustomerProcessor.Instance.Initialize();           <br>

    Assert.IsTrue(customerProcessor.HasCustomers);          <br>
    }           <br>

    public void Test2()         <br>
    {           <br>
    var firstName = CustomerProcessor.Instance.GetFirstCustomer().FirstName;        <br>

    Assert.AreEqual("John", firstName);         <br>
    }       <br>

    //[TestMethod2]                 <br>
    public void Test1-1()                       <br>
    {                               <br>
    GlobalVariables.IsProcessorInitialized = CustomerProcessor.Instance.Initialize();               <br>

    Assert.IsTrue(customerProcessor.HasCustomers);              <br>
    }                           <br>

    public void Test1-2()                   <br>
    {                           <br>
    GlobalVariables.IsProcessorInitialized = CustomerProcessor.Instance.Initialize();           <br>
    var firstName = CustomerProcessor.Instance.GetFirstCustomer().FirstName;                <br>
    Assert.AreEqual("John", firstName);             <br>
    }           <br>
</p>

<form action="AnswerServlet" method="post">
    <input type="hidden" name="answer_id" value="2">
    <br>
    <input type="radio" name="user_answer" value="1">Method 1

    <br>
    <input type="radio" name="user_answer" value="2">Method 2
    <br>
    <input type="submit"value="提交">
</form>

<button>Skip</button>
<button>HINT</button>
<!--a href="expected_result.jsp"><font size="2"><i>Next Question</i></font></a-->
</body>


</html>