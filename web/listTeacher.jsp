<%--
  Created by IntelliJ IDEA.
  User: 56808
  Date: 2020/4/5
  Time: 17:06
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
    <table class="table table-striped table-bordered table-hover table-condensed">
        <caption>亲爱的${student.name}家长，这是我们平台的老师名单：</caption>
        <thead>
        <tr>
            <td>老师id</td>
            <td>老师姓名</td>
            <td>擅长科目</td>
            <td>联系方式</td>
            <td>期望薪资(元/小时)</td>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${teachers}" var="teacher" varStatus="st">
            <tr>
                <td>${teacher.id}</td>
                <td>${teacher.name}</td>
                <td>${teacher.subject}</td>
                <td>${teacher.number}</td>
                <td>${teacher.piece}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

</body>
</html>