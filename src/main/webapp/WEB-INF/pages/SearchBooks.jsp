<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" language="java" %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Добавление книг</title>
    <style type="text/css">
        body{
            margin: 5mm;
            background: #c7b39b;
            text-align: center;
            line-height: 1cm;
        }
        .button{
            width: 5cm;
            height: 1cm;
            background-color: chocolate;
            color: gainsboro;
            font-size: 18px;
            font-weight: bold;;
        }
        .tg td {
            font-family: Arial, sans-serif;
        }
    </style>
</head>
<body>
<h1 align="center">Поиск книги по названию или по его части без учета регистра</h1>
<div align="center">
    <c:url var="searchAction" value="/crudbook/findbooks"/>
    <form:form action="${searchAction}" method="post" modelAttribute="book">
        <table border="1" align="center">
            <tr>
                <td>Введите название книги:</td>
                <td><form:input path="title"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Найти" class="button">
                    <a href="/crudbook/list"><input type="button" value="Назад к списку" class="button"></a>
                </td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
