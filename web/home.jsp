<%--
  Created by IntelliJ IDEA.
  User: 56808
  Date: 2020/4/26
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>首页 - 开发日记</legend>
        </fieldset>
        <ul class="layui-timeline">
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis"></i>
                <div class="layui-timeline-content layui-text">
                    <h3 class="layui-timeline-title">4月27日</h3>
                    <p>
                        增加了管理员表，并实现了其增删查改功能
                    </p>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis"></i>
                <div class="layui-timeline-content layui-text">
                    <h3 class="layui-timeline-title">4月25日</h3>
                    <p>利用LayUi前端框架重写了前端界面</p>
                    <ul>
                        <li>增加了登录界面</li>
                        <li>增加了首页 - 开发日记</li>
                    </ul>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis"></i>
                <div class="layui-timeline-content layui-text">
                    <h3 class="layui-timeline-title">4月24日</h3>
                    <p>
                        对于Student以及Teacher，都增加了更丰富的属性，并重写了部分后端代码
                    </p>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis"></i>
                <div class="layui-timeline-content layui-text">
                    <h3 class="layui-timeline-title">4月15日</h3>
                    <p>
                        利用Bootstrap框架编写前端界面
                        <br>添加了filter，以解决中文乱码的问题
                        <br>添加了UserDao接口，并针对Student和Teacher分别实现了其接口
                    </p>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis"></i>
                <div class="layui-timeline-content layui-text">
                    <h3 class="layui-timeline-title">4月10日</h3>
                    <p>
                        引入DButil的方式以连接数据库
                    </p>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis"></i>
                <div class="layui-timeline-content layui-text">
                    <h3 class="layui-timeline-title">4月1日</h3>
                    <p>
                        以servlet+bean+dao的设计模式，实现了家教平台的基本功能
                    </p>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis"></i>
                <div class="layui-timeline-content layui-text">
                    <div class="layui-timeline-title">过去</div>
                </div>
            </li>
        </ul>
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
