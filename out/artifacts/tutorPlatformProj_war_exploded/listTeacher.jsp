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
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>家教列表</legend>
        </fieldset>

        <form class="layui-form" action="listTeacher">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">所在年级</label>
                    <div class="layui-input-inline">
                        <input type="text" name="grade" lay-verify="title" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">讲授科目</label>
                    <div class="layui-input-inline">
                        <input type="text" name="subjects" lay-verify="title" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">薪酬</label>
                    <div class="layui-input-inline" style="width: 100px;">
                        <input type="text" name="price_min" placeholder="￥" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid">-</div>
                    <div class="layui-input-inline" style="width: 100px;">
                        <input type="text" name="price_max" placeholder="￥" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <div class="layui-input-block">
                        <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">查询</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </div>
        </form>

        <div class="layui-form" width="100%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;">
            <table class="layui-table">
<%--                <colgroup>--%>
<%--                    <col width="150">--%>
<%--                    <col width="150">--%>
<%--                    <col width="200">--%>
<%--                    <col>--%>
<%--                </colgroup>--%>
                <thead>
                <tr>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>年龄</th>
                    <th>学号</th>
                    <th>联系方式</th>
                    <th>所在年级</th>
                    <th>讲授科目</th>
                    <th>期望薪资</th>
                    <th>发布日期</th>
                    <th>其他信息</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${teachers}" var="teacher" varStatus="st">
                <tr>
                    <td>${teacher.name}</td>
                    <td>${teacher.sex}</td>
                    <td>${teacher.age}</td>
                    <td>${teacher.studentID}</td>
                    <td>${teacher.tele}</td>
                    <td>${teacher.grade}</td>
                    <td>${teacher.subjects}</td>
                    <td>${teacher.salary}</td>
                    <td>${teacher.releaseDate}</td>
                    <td>${teacher.demo}</td>
                    <td><button type="button" class="layui-btn layui-btn-primary layui-btn-xs">修改</button>
                        <button type="button" class="layui-btn layui-btn-primary layui-btn-xs">删除</button><td>
                </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
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
