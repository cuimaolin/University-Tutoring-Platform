<%--
  Created by IntelliJ IDEA.
  User: 56808
  Date: 2020/4/5
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <%-- 引入JQ和Bootstrap --%>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet">

    <title>大学生家教平台 - 老师列表</title>

</head>
<body>

<div class="listDIV">
    <table class="table table-striped table-bordered table-hover table-condensed" style="white-space:nowrap">
        <caption>亲爱的${student.name}家长，这是我们平台的老师名单：</caption>
        <thead>
        <tr class="success">
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>学号</td>
            <td>联系方式</td>
            <td>所在年级</td>
            <td>讲授科目</td>
            <td>期望薪资</td>
            <td>发布日期</td>
            <td>其他信息</td>
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
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

</body>
</html>

