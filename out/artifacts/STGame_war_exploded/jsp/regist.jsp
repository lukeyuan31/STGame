<%--
  Created by IntelliJ IDEA.
  User: 克渊
  Date: 2019/1/31
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  import="java.util.*" pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <base href="<%=basePath%>">
    <title>Regist here | STGame</title>
    <link href="css/login.css" rel="stylesheet" type="text/css" />
</head>

<!--body>
<center>
    <div>
        <h1>注册</h1>
        <form action="RegistServlet" method="post">
            请输入帐号：<input type="text" name="username"><br/>
            请输入密码：<input type="password" name="password"><br/>
            请确认密码：<input type="password" name="rpsw"><br/>
            <input type="submit" value="注册">
        </form>
        <font color="red" size="2"></font>
    </div>
</center>

</body-->
<body>
<center>
    <div>
        <!--h1>欢迎登陆</h1-->
        <div class="login_box">
            <div class="login_l_img"><img src="images/login-img.png" /></div>
            <div class="login">
                <div class="login_logo"><a href="#"><img src="images/login_logo.png" /></a></div>
                <div class="login_name">
                    <p>STGame</p>
                </div>
                <form action="LoginServlet" method="post">
                    <table>
                        <tr>
                            <!--td width="66" align="right"><font size="3">帐号：</font></td><td colspan="2"><input type="text" name="username" value="" style="width:200;height:25;"/></td-->
                            <input name="username" type="text"   onfocus="this.value=''" onblur="if(this.value==''){this.value='请输入账号'}">
                        </tr>
                        <tr>
                            <!--td align="right"><font size="3">密码：</font></td><td colspan="2"><input type="text" name="password"  style="width:200;height:25;"/></td-->
                            <!--span id="password_text" onclick="this.style.display='none';document.getElementById('password').style.display='block';document.getElementById('password').focus().select();" >密码</span-->
                            <!--input name="password" type="password" id="password" style="display:none;" onblur="if(this.value==''){document.getElementById('password_text').style.display='block';this.style.display='none'};"/-->
                            <input name="password" type="password"   onfocus="this.value=''" onblur="if(this.value==''){this.value='请输入密码'}">
                        </tr>
                        <tr>
                            <input name="password" type="rpsw"   onfocus="this.value=''" onblur="if(this.value==''){this.value='请重复密码'}">
                        </tr>
                        <!--tr>
                            <td align="right"><font size="3">验证码：</font></td>
                            <td width="108" valign="middle"><input type="text" name="verifycode" style="width:100;height:25;"/></td>
                            <td width="90" valign="middle"><a href="javascript:change()"><img src="VerifyCodeServlet" id="verify" border="0"></a></td>
                        </tr-->
                        <tr><td colspan="3" align="center"><input type="submit" value="注册" style="width: 100%;"/></td></tr>
                        <!--a href="jsp/regist.jsp"><font size="2"><i>没有帐号？点击注册</i></font></a-->
                    </table>
                </form>
            </div>

            <font color="red" size="2"> ${msg }</font>
        </div>
</center>
</body>
</html>
