<%--
  Created by IntelliJ IDEA.
  User: 克渊
  Date: 2019/3/13
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path=request.getContextPath();%>

<html>
<head>
    <title>GETTING STARTED</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible   " content="IE=edge">
    <title>GETTING STARTED WITH SOME EXAMPLES</title>
    <meta name="description" content="Try to find out the better one among these tests.">
    <link rel="stylesheet" href="<%=path%>/css/learn.css">

</head>
<body>
    <h1>START YOUR FIRST CLASS</h1>
    <h2>Select the better test.</h2>
    <p>//TestMethod1 <br>
        public void Test_All_The_Things()  <br>
        {                                       <br>
        var customerProcessor = new CustomerProcessor();   <br>

        customerProcessor.Initialize();                 <br>

        Assert.IsTrue(customerProcessor.HasCustomers);              <br>
        Assert.AreEqual(12, customerProcessor.CustomerCount);           <br>

        Assert.AreEqual("John", customerProcessor.getFirstCustomer().Name);     <br>
        Assert.AreEqual("Smith"), customerProcessor.getFirstCustomer().Name);       <br>

        Assert.IsFalse(customerProcessor.HasInvalidEntries);            <br>
        }                   <br>

        //TestMethod2           <br>
        var customerProcessor = new CustomerProcessor();            <br>
        customerProcessor.Initialize();             <br>
        public void Test_HasCustomers(){            <br>
        Assert.IsTrue(customerProcessor.HasCustomers);      <br>
        }           <br>
        public void Test_CustomerCount(){               <br>
        Assert.AreEqual(12, customerProcessor.CustomerCount);           <br>
        }           <br>
        public void Test_FirstCustomerName(){           <br>
        Assert.AreEqual("John", customerProcessor.getFirstCustomer().Name);         <br>
        }           <br>
        public void Test_FirstCustomerName(){           <br>
        Assert.AreEqual("Smith"), customerProcessor.getFirstCustomer().Name);           <br>
        }           <br>
        public void Test_InvalidEntries(){          <br>
        Assert.IsFalse(customerProcessor.HasInvalidEntries);            <br>
        }</p>
    <form action="AnswerServlet" method="post">
        <input type="hidden" name="answer_id" value="7">
        <br>
        <input type="radio" name="user_answer" value="1">Method 1

        <br>
        <input type="radio" name="user_answer" value="2">Method 2
        <br>
        <input type="submit"value="提交">
    </form>
    <button>Test1</button>
    <button>Test2</button>
    <button>Skip</button>
    <button>HINT</button>
</body>
</html>
