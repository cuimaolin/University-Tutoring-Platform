<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>大学生家教平台 - 登录界面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="css/layui.css" media="all" />
    <link rel="stylesheet" href="css/login.css" media="all" />
</head>
<body>
<form class="layui-form" action="login" method="post">
    <video class="video-player" preload="auto" autoplay="autoplay" loop="loop" data-height="1080" data-width="1920" height="1080" width="1920">
        <source src="images/login.mp4" type="video/mp4">
    </video>
    <div class="video_mask"></div>
    <div class="login">
        <h1>大学生家教平台-登录</h1>
        <form class="layui-form" action="login" method="post">
            <div class="layui-form-item">
                <input class="layui-input" name="nick" placeholder="用户名" lay-verify="required" type="text" autocomplete="off">
            </div>
            <div class="layui-form-item">
                <input class="layui-input" name="password" placeholder="密码" lay-verify="required" type="password" autocomplete="off">
            </div>
            <div class="layui-form-item form_code">
                <input class="layui-input" name="code" placeholder="验证码" lay-verify="required" type="text" autocomplete="off">
                <div class="code"><img src="../../images/code.jpg" width="116" height="36"></div>
            </div>
            <button class="layui-btn login_btn" lay-submit="" lay-filter="login">登录</button>
            <a href="registerTeacher.jsp" style="color: white; text-align: left">老师注册 </a>
            <a href="registerStudent.jsp" style="color: white; text-align: center">家长注册 </a>
            <a href="registerStudent.jsp" style="color: white; text-align: right">管理员注册</a>
        </form>
    </div>
</body>
<script src="js/layui.js"></script>
</html>