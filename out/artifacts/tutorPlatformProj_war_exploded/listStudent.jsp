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

    <title>大学生家教平台 - 学员列表</title>

</head>
<body>

<div class="listDIV">
    <table class="table table-striped table-bordered table-hover table-condensed">
        <caption>亲爱的${teacher.name}老师，这是我们平台的学员名单：</caption>
        <thead>
        <tr class="success">
            <td>学生id</td>
            <td>学生姓名</td>
            <td>需要补习科目</td>
            <td>联系方式</td>
            <td>可支付薪资(元/小时)</td>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${students}" var="student" varStatus="st">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.subject}</td>
                <td>${student.number}</td>
                <td>${student.piece}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

</body>
</html>

