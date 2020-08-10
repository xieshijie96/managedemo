<%--
  Created by IntelliJ IDEA.
  User: A
  Date: 2020-08-05
  Time: 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>更新员工</title>
</head>
<body>
<form id="itemsForm" action="${pageContext.request.contextPath}/user/update.do" method="post">
    <table border="1">
        <tr>
            <td>
                用户名
            </td>
            <td>
                <input type="text" name="username" value="${user.username}" style="width: 100%; height: 100%">
                <input type="hidden" name="userid" value="${user.userid}">
            </td>
        </tr>
        <tr>
            <td>
                真名
            </td>
            <td>
                <input type="text" name="realname" value="${user.realname}" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                电话
            </td>
            <td>
                <input type="text" name="phone" value="${user.phone}" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                性别
            </td>
            <td>
                <input type="性别" name="sex" value="${user.sex}" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                角色
            </td>
            <td>
                <input type="角色" name="role" value="${user.role}" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="更新" style="width: 100%; height: 100%">
            </td>
        </tr>
    </table>

</form>

</body>
</html>

