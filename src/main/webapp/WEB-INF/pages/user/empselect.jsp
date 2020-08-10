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
    <title>查询员工</title>
</head>
<body>
<form id="itemsForm" action="${ctx}/user/empselect.do" method="post">
    <table border="1">
        <tr>
            <td>
                用户id
            </td>
            <td>
                <input type="text" name="userid" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                用户名
            </td>
            <td>
                <input type="text" name="username" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                真实姓名
            </td>
            <td>
                <input type="text" name="realname" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                电话
            </td>
            <td>
                <input type="text" name="phone"  style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                性别
            </td>
            <td>
                <input type="text" name="sex" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                角色
            </td>
            <td>
                <input type="text" name="role" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="查询" style="width: 100%; height: 100%">
            </td>
        </tr>
    </table>

</form>
</body>
</html>

