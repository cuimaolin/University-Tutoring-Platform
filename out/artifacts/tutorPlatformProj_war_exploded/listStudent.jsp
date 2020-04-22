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
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>地址</td>
            <td>联系方式</td>
            <td>学习情况</td>
            <td>辅导科目</td>
            <td>可支付薪资</td>
            <td>发布日期</td>
            <td>其他信息</td>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${students}" var="student" varStatus="st">
            <tr>
                <td>${student.name}</td>
                <td>${student.sex}</td>
                <td>${student.age}</td>
                <td>${student.address}</td>
                <td>${student.tele}</td>
                <td>${student.grade}</td>
                <td>${student.subjects}</td>
                <td>${student.salary}</td>
                <td>${student.releaseDate}</td>
                <td>${student.demo}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

</body>
</html>

