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
    <title>登录界面</title>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
</head>
<body>
    <h2 align="center">亲爱的用户，请登录</h2>
    <form action="login" align="center" method="post">
        <div>
            <label>账号：</label>
            <input type="text" name="name">
        </div>
        <div>
            <label>密码：</label>
            <input type="password" name="password">
        </div>
        <div>
            <input type="submit"  value="登录">
        </div>
    </form>
    <div align="center">
        <a href="registerTeacher.jsp">注册成为老师</a>
    </div>
    <div align="center">
        <a href="registerStudent.jsp" align="center">注册成为家长</a>
    </div>
</body>
</html>
