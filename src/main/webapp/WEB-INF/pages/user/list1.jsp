<%@ page import="abc.wuyan.model.User" %><%--
  Created by IntelliJ IDEA.
  User: A
  Date: 2020-08-05
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>员工列表</title>
</head>
<body>
<h1>员工信息管理系统：</h1>
<c:set var = "curuser" value="${sessionScope.currentuser}"/>
<c:choose>
    <c:when test="${curuser.role==1}">
        <a>你好！普通员工:${curuser.username}</a>
    </c:when>
    <c:when test="${curuser.role==2}">
        <a>你好！管理员:${curuser.username}</a>
    </c:when>
    <c:otherwise>
        <a>你好！超级管理员:${curuser.username}</a>
    </c:otherwise>
</c:choose>
<a href="${pageContext.request.contextPath}/user/loginout.do">退出</a>
<h2>
    <c:if test="${curuser.role>1}">
        <a href="${pageContext.request.contextPath}/user/add.do?role=${sessionScope.currentuser.role}">新增员工</a>
    </c:if>
    <a href="${pageContext.request.contextPath}/user/toSelect.do">查询员工</a>
</h2>
<table border="1">
    <tr>
        <td>用户id</td>
        <td>用户名</td>
        <td>真名</td>
        <td>电话</td>
        <td>性别</td>
        <td>角色</td>
    </tr>
    <c:forEach items="${userList}" var="user">
        <tr>
            <td>${user.userid}</td>
            <td>${user.username}</td>
            <td>${user.realname}</td>
            <td>${user.phone}</td>
            <c:choose>
                <c:when test="${user.sex==1}">
                    <td>男</td>
                </c:when>
                <c:otherwise>
                    <td>女</td>
                </c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${user.role==1}">
                    <td>普通员工</td>
                </c:when>
                <c:when test="${user.role==2}">
                    <td>管理员</td>
                </c:when>
                <c:otherwise>
                    <td>超级管理员</td>
                </c:otherwise>
            </c:choose>
            <td>
<%--                <c:set var = "loginrole" value="${sessionScope.currentuser.role}"/>--%>
                <c:if test="${user.role<curuser.role}">
                    <a href="${pageContext.request.contextPath}/user/delete.do?userid=${user.userid}">删除</a>
                    <a href="${pageContext.request.contextPath}/user/edit.do?userid=${user.userid}">编辑</a>
                </c:if>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>

