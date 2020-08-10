<%--
  Created by IntelliJ IDEA.
  User: lll
  Date: 2020/8/9
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC员工管理平台</title>
    <link href="${ctx}/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class="Login">
<!--Login-开始-->

<div class="Login_heand dk">
    <a href="#" class="Login_logo fl">
        <img src="${ctx}/images/logo.png" class="fl"/><p class="fl">ABC员工管理平台</p><div class="clear"></div>
    </a>
</div>

<div class="Login_k">
    <div class="Login_T">密码登录<p></p></div>
    <!--登录-开始-->
    <form class="Login_dl" id="myform" action="${ctx}/user/login_check.do" method="post">
        <div class="Login_row">
            <input name="username" type="text" value="" class="Login_input Login_inp1" placeholder="用户名" />
        </div>
        <div class="Login_row">
            <input name="password" type="password" value="" class="Login_input Login_inp2" placeholder="密码" />
        </div>
        <a href="#" class="Login_dla" onclick="document.getElementById('myform').submit();return false;">登录</a>

        <label class="Login_pitch fl">
            <input type="checkbox" name="checkbox01" class=" fl" /><div class="fl">自动登录</div><div class="clear"></div>
        </label>
        <div class="Login_wj fr">
            <a href="#">忘记密码</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="${ctx}/user/toAdd.do">注册</a>
        </div><div class="clear"></div>

    </form>
    <!--登录-结束-->
</div>

<div class="Login_foot">
    <p>中国农业银行武汉研发中心</p>
    <p>谢世杰支持</p>
</div>
<!--Login-结束-->

</body>
</html>

