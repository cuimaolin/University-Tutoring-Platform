<%--
  Created by IntelliJ IDEA.
  User: 56808
  Date: 2020/4/6
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<html>
<head>
    <title>请注册</title>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
</head>
<body>
    <form action="registerTeacher" method="post">
        <div>
            <label>账号：</label>
            <input type="text" name="name">
        </div>
        <div>
            <label>密码：</label>
            <input type="password" name="password">
        </div>
        <div>
            <label>辅导科目：</label>
            <input type="text" name="subject">
        </div>
        <div>
            <label>联系方式：</label>
            <input type="text" name="number">
        </div>
        <div>
            <label>期望薪资：</label>
            <input type="text" name="piece">
        </div>
        <div>
            <input type="submit"  value="注册">
        </div>
    </form>

</body>
</html>
