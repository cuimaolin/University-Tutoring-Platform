<%--
  Created by IntelliJ IDEA.
  User: 56808
  Date: 2020/4/5
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <title>学员名单</title>
        <link rel="stylesheet" href="./css/style.css" type="text/css">
    </head>
    <body>
        <c:if test="${!empty student}">
            <div align="center">
                你好，亲爱的${student.name}家长，以下是我们平台的老师名单：
            </div>
        </c:if>

        <table align="center" border="1" cellpadding="0">
            <tr>
                <td>老师id</td>
                <td>老师姓名</td>
                <td>擅长科目</td>
                <td>联系方式</td>
                <td>期望薪资(元/小时)</td>
            </tr>
            <c:forEach items="${teachers}" var="teacher" varStatus="st">
                <tr>
                    <td>${teacher.id}</td>
                    <td>${teacher.name}</td>
                    <td>${teacher.subject}</td>
                    <td>${teacher.number}</td>
                    <td>${teacher.piece}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>