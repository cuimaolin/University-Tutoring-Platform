<%--
  Created by IntelliJ IDEA.
  User: 56808
  Date: 2020/4/26
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>大学生家教平台</title>
    <link rel="stylesheet" href="css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <%@include file="jsp/home_head.jsp" %>
    <%@include file="jsp/home_left.jsp" %>
    <%@include file="jsp/home_down.jsp" %>

    <div class="layui-body">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>家教注册</legend>
        </fieldset>
        <form class="layui-form" action="registerTeacher" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名：</label>
                <div class="layui-input-block">
                    <input type="text" name="nick" lay-verify="title" autocomplete="off" placeholder="请输入用户名" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-block">
                    <input type="text" name="password" lay-verify="title" autocomplete="off" placeholder="请输入密码" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">真实姓名</label>
                <div class="layui-input-block">
                    <input type="text" name="name" lay-verify="title" autocomplete="off" placeholder="请输入您的真实姓名" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-block">
                    <input type="text" name="sex" lay-verify="title" autocomplete="off" placeholder="请输入您的性别" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">年龄</label>
                <div class="layui-input-block">
                    <input type="text" name="age" lay-verify="title" autocomplete="off" placeholder="请输入您的年龄" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">所在年级</label>
                <div class="layui-input-block">
                    <input type="text" name="grade" lay-verify="title" autocomplete="off" placeholder="请输入您所在的年级" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">学号</label>
                <div class="layui-input-block">
                    <input type="text" name="studentID" lay-verify="title" autocomplete="off" placeholder="请输入您的学号" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">联系方式</label>
                <div class="layui-input-block">
                    <input type="text" name="tele" lay-verify="title" autocomplete="off" placeholder="请输入您的联系方式" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">讲授科目</label>
                <div class="layui-input-block">
                    <input type="text" name="subjects" lay-verify="title" autocomplete="off" placeholder="请输入您想要讲授的科目" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">期望薪资</label>
                <div class="layui-input-block">
                    <input type="text" name="salary" lay-verify="title" autocomplete="off" placeholder="请输入您期望的薪资" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">备注</label>
                <div class="layui-input-block">
                    <textarea name="demo" placeholder="其他内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>

    </div>

</div>
<script src="js/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>
