<%--
  Created by IntelliJ IDEA.
  User: 56808
  Date: 2020/4/26
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <li class="layui-nav-item"><a href="../home.jsp">首页</a></li>
            <li class="layui-nav-item layui-nav-itemed">
                <a href="listStudent">学员列表</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">小学</a></dd>
                    <dd><a href="javascript:;">初中</a></dd>
                    <dd><a href="javascript:;">高中</a></dd>
                    <dd><a href="javascript:;">其他</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="listTeacher">家教列表</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">列表一</a></dd>
                    <dd><a href="javascript:;">列表二</a></dd>
                    <dd><a href="">超链接</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>
