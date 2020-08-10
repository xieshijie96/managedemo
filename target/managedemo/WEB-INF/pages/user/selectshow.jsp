<%--
  Created by IntelliJ IDEA.
  User: lll
  Date: 2020/8/9
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var = "curuser" value="${sessionScope.currentuser}"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>table</title>
    <style>
        /* 表格区 */
        .result-box{
            width: 600px;
            margin-top: 10px;
            background: #eee;
            font-size: 14px;
        }
        .result-box table{
            width: 100%;
            font-weight: 200;
            text-align: center;
            padding: 0;
            border-right: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
        }
        .result-box tr{
            height: 30px;
        }
        .result-box th,td{
            border-left: 1px solid #ddd;
            border-top: 1px solid #ddd;
        }
        .result-box tbody tr{
            background: #fff;
        }
    </style>
</head>
<body>

<div class="result-box">
    <!-- 静态展示的表格 -->
    <table>
        <tr>
            <td>用户id</td>
            <td>用户名</td>
            <td>真实姓名</td>
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
            </tr>
        </c:forEach>
    </table>


    <%--    <!-- 如果是jsp动态数据生成，可以使用循环语句生成每一行tr，如：--%>
    <%--        <table>--%>
    <%--                <tr><th>表头1</th><th>表头2</th></tr>--%>
    <%--                <c: for (... ) { >--%>
    <%--                    <tr><td>${id}</td><td>${name}</td><td><a href="del?id=${id}">删除</a></tr>--%>
    <%--                </c:for>--%>
    <%--        </table> -->--%>

</div>
</body>
</html>
