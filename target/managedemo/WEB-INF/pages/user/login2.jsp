<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<body>
<%--<script type="text/javascript" language="JavaScript" src="../../js/jquery.min.js">--%>
<%--    $(document).ready(function () {--%>
<%--        $('#login').click(function () {--%>
<%--            $.ajax({--%>
<%--                type: "post",--%>
<%--                url: "login_check.do",--%>
<%--                data: {--%>
<%--                    "login_name": $("#lg_name").val(),--%>
<%--                    "password": $("#pwd").val(),--%>
<%--                },--%>
<%--                dataType: "JSON",--%>
<%--                async: false,--%>
<%--                beforeSend: function () {--%>
<%--                    alert("正在提交");--%>
<%--                },--%>
<%--                success: function (data) {--%>
<%--                    if (data == 1) {--%>
<%--                        alert("登录成功")--%>
<%--                        window.location.href = "list.do";--%>

<%--                    } else {--%>
<%--                        alert("用户名或者密码错误!");--%>
<%--                    }--%>
<%--                },--%>
<%--                error: function () {--%>
<%--                    alert("提交失败");--%>
<%--                }--%>
<%--            });--%>
<%--        })--%>
<%--    })--%>
<%--</script>--%>

<%--<h1>登录页面</h1>--%>
<%--<form class="bs-example bs-example-form" role="form1" method="post">--%>
<%--    <div class="input-group">--%>
<%--        <span class="input-group-addon">username</span>--%>
<%--        <input type="text" id="lg_name" class="form-control" >--%>
<%--    </div>--%>
<%--    <div class="input-group">--%>
<%--        <span class="input-group-addon">password</span>--%>
<%--        <input type="text" id="pwd" class="form-control" >--%>
<%--    </div>--%>
<%--</form>--%>
<%--<button  class="btn btn-info" style="align-content: center" id="register"--%>
<%--         onclick="javascrtpt:window.location.href='toAdd.do'">注册</button>--%>
<%--<button  class="btn btn-info" style="align-content: center" id="login" >登录</button>--%>
<%--</div>--%>
<form id="itemsForm" action="${pageContext.request.contextPath}/user/login_check.do" method="post">
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
                密码
            </td>
            <td>
                <input type="password" name="password" style="width: 100%; height: 100%">
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <input type="submit" value="登陆" style="width: 100%; height: 100%">
                <input type="button" value="注册" onclick="document.location.href='toAdd.do'" style="width: 100%; height: 100%">
            </td>
        </tr>
    </table>

</form>
</body>
</html>
