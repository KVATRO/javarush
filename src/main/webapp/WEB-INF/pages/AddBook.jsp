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
<h1 align="center">Внесите информацию о новой книге</h1>
<div align="center">
    <c:url var="saveAction" value="/crudbook/save"/>
    <form:form action="${saveAction}" method="post" modelAttribute="book">
        <table border="1" align="center">
            <form:hidden path="id"/>
            <tr>
                <td>Название книги:</td>
                <td><form:input path="title"/></td>
            </tr>
            <tr>
                <td>Краткое описание:</td>
                <td><form:input path="description"/></td>
            </tr>
            <tr>
                <td>Автор:</td>
                <td><form:input path="author"/></td>
            </tr>
            <tr>
                <td>ISBN:</td>
                <td><form:input path="isbn"/></td>
            </tr>
            <tr>
                <td>Год издания:</td>
                <td><form:input path="printYear"/></td>
            </tr>
            <form:hidden path="readAlready"/>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Сохранить" class="button">
                    <a href="/crudbook/list"><input type="button" value="Назад к списку" class="button"></a>
                </td>
            </tr>
        </table>
    </form:form>
</div>

</body>
</html>
