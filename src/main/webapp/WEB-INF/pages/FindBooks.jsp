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
<h1 align="center">Найденые книги</h1>
<div align="center">
    <table border="1" <c:if test="${listBooks.size() == 0}">hidden="hidden"</c:if>>

        <th>№</th>
        <th>Название</th>
        <th>Описание</th>
        <th>Автор</th>
        <th>ISBN</th>
        <th>Год издания</th>
        <th>Прочитана</th>
        <c:forEach var="book" items="${listBooks}">
            <tr>

                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${book.description}</td>
                <td>${book.author}</td>
                <td>${book.isbn}</td>
                <td align="center">${book.printYear}</td>
                <c:if test="${book.readAlready == true}">
                    <td align="center">Да</td>
                </c:if>
                <c:if test="${book.readAlready == false}">
                    <td align="center">
                        Нет
                        <a href="/crudbook/updateread?id=${book.id}"><input type="button" align="center" value="Прочитано" class="button"></a>
                    </td>
                </c:if>
                <td>
                    <a href="/crudbook/delete/${book.id}"><input type="button" align="center" value="Удалить" class="button"></a>
                    <a href="/crudbook/edit?id=${book.id}"><input type="button" align="center" value="Редактировать" class="button"></a>
                </td>

            </tr>
        </c:forEach>
    </table>
    <c:if test="${listBooks.size()} == 0">
        <h1>К сожалению ничего нет, повторите поиск</h1>
    </c:if>
    <table>
        <tr>
            <td colspan="2" align="center">
                <a href="/crudbook/search"><input type="submit" value="Назад к поиску" class="button"></a>
                <a href="/crudbook/list"><input type="button" value="Назад к списку" class="button"></a>
            </td>
        </tr>
    </table>
</div>

</body>
</html>
