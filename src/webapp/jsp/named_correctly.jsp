<%--
  Created by IntelliJ IDEA.
  User: 克渊
  Date: 2019/3/13
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>GETTING STARTED WITH SOME EXAMPLES</title>
    <meta name="description" content="Try to find out the better one among these tests.">
    <link rel="stylesheet" href="css/learn.css">

</head>
<body>
<h1>START YOUR FIRST CLASS</h1>
<h2>Select the better test.</h2>
<p>//TestMethod1 <br>
    var customerProcessor = new CustomerProcessor();   <br>
    customerProcessor.Initialize();             <br>
    public void Test1(){                <br>
    Assert.IsTrue(customerProcessor.HasCustomers);              <br>
    }           <br>
    public void Test2(){            <br>
    Assert.AreEqual(12, customerProcessor.CustomerCount);           <br>
    }       <br>
    public void Test3(){            <br>
    Assert.AreEqual("John", customerProcessor.getFirstCustomer().Name);     <br>
    }           <br>
    public void Test4(){        <br>
    Assert.AreEqual("Smith"), customerProcessor.getFirstCustomer().Name);       <br>
    }       <br>
    public void Test5(){            <br>
    Assert.IsFalse(customerProcessor.HasInvalidEntries);        <br>
    }       <br><br><br><br><br>

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
<button>Test1</button>
<button>Test2</button>
<button>Skip</button>
<button>HINT</button>
</body>
</html>
