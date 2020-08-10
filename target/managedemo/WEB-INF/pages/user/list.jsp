<%--
  Created by IntelliJ IDEA.
  User: lll
  Date: 2020/8/9
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="abc.wuyan.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var = "curuser" value="${sessionScope.currentuser}"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>主页</title>
    <link rel="stylesheet" href="${ctx}/css/index.css">
</head>
<body>
<!-- 一个典型的上左右布局demo -->

<div class="header1">
    <h1>员工信息管理系统：</h1>
    <c:choose>
        <c:when test="${curuser.role==1}">
            <a class="emp">你好！普通员工:${curuser.username}</a>
        </c:when>
        <c:when test="${curuser.role==2}">
            <a class="emp">你好！管理员:${curuser.username}</a>
        </c:when>
        <c:otherwise>
            <a class="emp">你好！超级管理员:${curuser.username}</a>
        </c:otherwise>
    </c:choose>
    <a class="emp" href="${ctx}/user/loginout.do">退出</a>
</div>

<div class="container">
    <div class="left">
        <!-- 一个简单的二级菜单，可以用其他插件自行修改 -->
        <div class="menu">
            <ul>
                <li class="first-li"><a>员工管理</a>
                    <ul class="sub-li" style="display: none;">
                        <li><a href="${ctx}/user/empshow.do" target="contentFrm">员工信息</a></li>
                        <li><a href="${ctx}/user/toselect.do" target="contentFrm">员工查找</a></li>
                        <c:if test="${curuser.role>1}">
                            <li><a target="contentFrm" href="${ctx}/user/add.do">新增员工</a></li>
                        </c:if>
                    </ul>
                </li>
                <li class="first-li"><a>考勤管理</a>
                    <ul class="sub-li" style="display: none;">
                        <li><a href="${ctx}/user/attendshow.do" target="contentFrm">考勤管理</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="right">
        <!-- 装载其他页面的容器，src可以通过其他链接动态跳转 -->
        <iframe class="frm" name="contentFrm" src="" frameborder="0" scrolling="auto"></iframe>
    </div>
</div>
<script src="${ctx}/js/jquery.min.js"></script>
<script>
    // 菜单切换
    $('.first-li').click(function(){
        $(this).children('ul').show();
        $(this).siblings('li').children('ul').hide();
    })
</script>
</body>
</html>