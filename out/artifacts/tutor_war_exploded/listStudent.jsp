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
        <title>学员名单</title>
        <link rel="stylesheet" href="./css/style.css" type="text/css">
    </head>
    <body>
        <c:if test="${!empty teacher}">
            <div align="center">
                你好，亲爱的${teacher.name}老师，以下是我们平台的学员名单：
            </div>
        </c:if>
        <table align="center" border="1" cellpadding="0">
            <tr>
                <td>学生id</td>
                <td>学生姓名</td>
                <td>需要补习科目</td>
                <td>联系方式</td>
                <td>可支付薪资(元/小时)</td>
            </tr>
            <c:forEach items="${students}" var="student" varStatus="st">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.subject}</td>
                    <td>${student.number}</td>
                    <td>${student.piece}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

