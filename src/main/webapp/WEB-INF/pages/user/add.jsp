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
    <title>新增员工</title>
</head>
<body>
<form id="itemsForm" action="${pageContext.request.contextPath}/user/insert.do" method="post">
    <table border="1">
        <tr>
            <td>
                用户名
            </td>
            <td>
                <input type="text" name="username" value="" style="width: 100%; height: 100%">
                <input type="hidden" name="userid" value="">
            </td>
        </tr>
        <tr>
            <td>
                真实姓名
            </td>
            <td>
                <input type="text" name="realname" value="" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                密码
            </td>
            <td>
                <input type="text" name="password" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                电话
            </td>
            <td>
                <input type="text" name="phone" value="" style="width: 100%; height: 100%">
            </td>
        </tr>
        <tr>
            <td>
                性别
            </td>
            <td>
                <input type="text" name="sex" value="" style="width: 100%; height: 100%">
            </td>
        </tr>
        <c:if test="${sessionScope.currentuser.role==3}">
            <tr>
                <td>
                    角色
                </td>
                <td>
                    <input type="text" name="role" value="" style="width: 100%; height: 100%">
                </td>
            </tr>
        </c:if>
        <tr>
            <td colspan="2">
                <input type="submit" value="新增" style="width: 100%; height: 100%">
            </td>
        </tr>
    </table>

</form>

</body>
</html>

