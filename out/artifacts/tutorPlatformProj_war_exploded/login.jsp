<%--
  Created by IntelliJ IDEA.
  User: 56808
  Date: 2020/4/5
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<html>
<head>
    <%-- 引入JQ和Bootstrap --%>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet">

    <title>大学生家教平台 - 登录界面</title>
</head>

<body>

<div class="addDIV">
    <div class="panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">亲爱的用户，请登录</h3>
        </div>
        <div class="panel-body">
            <form method="post" action="login" role="form">
                <table class="editTable">
                    <tr>
                        <td>账号：</td>
                        <td><input type="text" name="name" placeholder="请输入您的账号"></td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input type="password" name="password" placeholder="请输入您的密码"></td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <button type="submit" class="btn btn-success">登录</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div align="center">
            <a href="registerTeacher.jsp">注册成为老师</a>
        </div>
        <div align="center">
            <a href="registerStudent.jsp" align="center">注册成为家长</a>
        </div>
    </div>
</div>

</body>
</html>
