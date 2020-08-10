<%--
  Created by IntelliJ IDEA.
  User: lll
  Date: 2020/8/8
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<script type="text/javascript" language="JavaScript" src="../../js/jquery.min.js">--%>
<%--    $(document).ready(function () {--%>
<%--        $('#addUser').click(function () {--%>
<%--            $.ajax({--%>
<%--                type: "post",--%>
<%--                url: "/implAdd",--%>
<%--                data: {--%>
<%--                    login_name: $("#lg_name").val(),--%>
<%--                    password: $("#pwd").val(),--%>
<%--                    user_name: $("#user_name").val(),--%>
<%--                },--%>
<%--                dataType: "JSON",--%>
<%--                async: false,--%>
<%--                beforeSend: function () {--%>
<%--                    alert("正在提交");--%>
<%--                },--%>

<%--                success: function (data) {--%>
<%--                    if (data == -1) {--%>
<%--                        alert("数据输入有误!");--%>
<%--                    } else if (data == 0) {--%>
<%--                        alert("用户以存在!");--%>

<%--                    } else {--%>
<%--                        alert("注册成功")--%>
<%--                        window.location.href = "login";--%>
<%--                    }--%>
<%--                },--%>
<%--                error: function () {--%>
<%--                    alert("提交失败");--%>
<%--                }--%>
<%--            });--%>
<%--        })--%>

<%--    })--%>
<%--</script>--%>

<%--<h1>注册页面</h1>--%>
<%--<form class="bs-example bs-example-form" role="form" method="post">--%>
<%--    <div class="input-group">--%>
<%--        <span class="input-group-addon">用户名:</span>--%>
<%--        <input type="text" id="lg_name" class="form-control" placeholder="输入你的登录名">--%>
<%--    </div>--%>
<%--    <div class="input-group">--%>
<%--        <span class="input-group-addon">密码:</span>--%>
<%--        <input type="text" id="pwd" class="form-control" placeholder="输入你的密码">--%>
<%--    </div>--%>
<%--    <div class="input-group">--%>
<%--        <span class="input-group-addon">昵称:</span>--%>
<%--        <input type="text" id="user_name" class="form-control" placeholder="输入你的昵称">--%>
<%--    </div>--%>
<%--</form>--%>
<%--<button class="btn btn-info" style="align-content: center" id="addUser">提交</button>--%>
<%--<button class="btn btn-info" style="align-content: center" id="returnLogin">返回</button>--%>
<form id="itemsForm" action="${pageContext.request.contextPath}/user/register.do" method="post">
    <table border="1">
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
                真名
            </td>
            <td>
                <input type="text" name="realname" tyle="width: 100%; height: 100%">
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
            <td>
                电话
            </td>
            <td>
                <input type="text" name="phone" style="width: 100%; height: 100%">
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
                <input type="submit" value="注册" style="width: 100%; height: 100%">
            </td>
        </tr>
    </table>

</form>
</body>
</html>
