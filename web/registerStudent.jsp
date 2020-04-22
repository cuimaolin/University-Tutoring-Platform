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
            <h3 class="panel-title">亲爱的家长，请注册</h3>
        </div>
        <div class="panel-body">
            <form method="post" action="registerStudent" role="form">
                <table class="editTable">
                    <tr>
                        <td>用户名：</td>
                        <td><input type="text" name="nick" placeholder="请输入您的用户名"></td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input type="password" name="password" placeholder="请输入您的密码"></td>
                    </tr>
                    <tr>
                        <td>真实姓名：</td>
                        <td><input type="text" name="name" placeholder="请输入您的真实姓名"></td>
                    </tr>
                    <tr>
                        <td>性别：</td>
                        <td><input type="text" name="sex" placeholder="请输入您的性别"></td>
                    </tr>
                    <tr>
                        <td>年龄：</td>
                        <td><input type="text" name="age" placeholder="请输入您的年龄"></td>
                    </tr>
                    <tr>
                        <td>学习程度：</td>
                        <td><input type="text" name="grade" placeholder="请输入您目前的学习程度"></td>
                    </tr>
                    <tr>
                        <td>地址：</td>
                        <td><input type="text" name="address" placeholder="请输入您的地址"></td>
                    </tr>
                    <tr>
                        <td>电话：</td>
                        <td><input type="text" name="tele" placeholder="请输入您的电话"></td>
                    </tr>
                    <tr>
                        <td>辅导科目：</td>
                        <td><input type="text" name="subjects" placeholder="请输入您需要辅导的科目"></td>
                    </tr>
                    <tr>
                        <td>可支付薪资：</td>
                        <td><input type="text" name="salary" placeholder="请输入您可以支付的薪资"></td>
                    </tr>
                    <tr>
                        <td>其他信息：</td>
                        <td><input type="text" name="demo" placeholder="请输入其他信息"></td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <button type="submit" class="btn btn-success">注册</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>

</body>
</html>