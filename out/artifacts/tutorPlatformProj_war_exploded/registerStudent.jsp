<%--
  Created by IntelliJ IDEA.
  User: 56808
  Date: 2020/4/6
  Time: 15:35
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

    <title>大学生家教平台 - 家长注册界面</title>
</head>
<body>

<div class="editDIV">
    <div class="panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">亲爱的家长，请登录</h3>
        </div>
        <div class="panel-body">
            <form method="post" action="registerStudent" role="form">
                <table class="editTable">
                    <tr>
                        <td>账号：</td>
                        <td><input type="text" name="name" placeholder="请输入您的账号"></td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input type="password" name="password" placeholder="请输入您的密码"></td>
                    </tr>
                    <tr>
                        <td>科目：</td>
                        <td><input type="text" name="subject" placeholder="请输入您需要辅导的科目"></td>
                    </tr>
                    <tr>
                        <td>联系方式：</td>
                        <td><input type="text" name="number" placeholder="请输入您的联系方式"></td>
                    </tr>
                    <tr>
                        <td>支付薪资：</td>
                        <td><input type="text" name="piece" placeholder="请输入您能支付的薪资"></td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <button type="submit" class="btn btn-success">登录</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>

</body>
</html>