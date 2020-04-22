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
    <%-- 引入JQ和Bootstrap --%>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet">

    <title>大学生家教平台 - 老师注册界面</title>
</head>
<body>

<div class="editDIV">
    <div class="panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">亲爱的老师，请注册</h3>
        </div>
        <div class="panel-body">
            <form method="post" action="registerTeacher" role="form">
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
                        <td>所在年级：</td>
                        <td><input type="text" name="grade" placeholder="请输入您所在的年级"></td>
                    </tr>
                    <tr>
                        <td>学号：</td>
                        <td><input type="text" name="studentID" placeholder="请输入您的学号"></td>
                    </tr>
                    <tr>
                        <td>电话：</td>
                        <td><input type="text" name="tele" placeholder="请输入您的电话"></td>
                    </tr>
                    <tr>
                        <td>讲授科目：</td>
                        <td><input type="text" name="subjects" placeholder="请输入您想要讲授的科目"></td>
                    </tr>
                    <tr>
                        <td>期望薪资：</td>
                        <td><input type="text" name="salary" placeholder="请输入您期望的薪资"></td>
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
