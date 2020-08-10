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
    <title>更新考勤</title>
</head>
<body>
<form id="itemsForm" action="${ctx}/user/attendupdate.do" method="post">
    <table border="1">
        <tr>
            <td>
                用户名
            </td>
            <td>
                <input type="text" name="username" value="${curAttendence.username}" style="width: 100%; height: 100%">
                <input type="hidden" name="attendid" value="${curAttendence.attendid}">
            </td>
        </tr>
        <tr>
            <td>
                真实姓名
            </td>
            <td>
                <input type="text" name="realname" value="${curAttendence.realname}" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                角色
            </td>
            <td>
                <input type="text" name="role" value="${curAttendence.role}" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                考勤状态
            </td>
            <td>
                <input type="text" name="attendstus" value="${curAttendence.attendstus}" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                打卡时间
            </td>
            <td>
                <input type="text" name="attendtime" value="${curAttendence.attendtime}" style="width: 100%; height: 100%">
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

