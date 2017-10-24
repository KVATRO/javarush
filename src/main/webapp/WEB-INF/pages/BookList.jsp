<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Список книг</title>
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
        .button_edit{
            width: 3cm;
            height: 8mm;
            background-color: chocolate;
            color: antiquewhite;
            font-size: 12px;
            font-weight: bold;;
        }
        .nextprev {
            color: chocolate;
            font-size: 24px;
        }
    </style>
</head>
<body>
<div align="center">
    <h1>Книги на вашей полке</h1>
    <c:url var="addAction" value="/crudbook/add"/>
    <c:url var="searchAction" value="/crudbook/search"/>
    <table>
        <tr>
            <td>
                <form:form action="${addAction}" method="get">
                <input type="submit" value="Добавить книгу" class="button" >
                </form:form>
            </td>
            <td>
                <form:form action="${searchAction}" method="get">
                <input type="submit" value="Найти книгу" class="button" >
                </form:form>
            </td>
        </tr>
    </table>

    <table border="1">

        <th>№</th>
        <th>Название</th>
        <th>Описание</th>
        <th>Автор</th>
        <th>ISBN</th>
        <th>Год издания</th>
        <th>Прочитана</th>
        <c:forEach var="book" items="${listBook}">
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
                        <a href="/crudbook/updateread?id=${book.id}"><input type="button" align="center" value="Прочитано" class="button_edit"></a>
                    </td>
                </c:if>
                <td>
                    <a href="/crudbook/delete/${book.id}"><input type="button" align="center" value="Удалить" class="button_edit"></a>
                    <a href="/crudbook/edit?id=${book.id}"><input type="button" align="center" value="Редактировать" class="button_edit"></a>
                </td>

            </tr>
        </c:forEach>
    </table>

    <div id="pagination">
        <c:url value="/crudbook/list" var="prev">
            <c:param name="page" value="${page-1}"/>
        </c:url>
        <c:if test="${page > 1}">
            <a href="<c:out value="${prev}"/>" class="nextprev"> < </a>
        </c:if>


        <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
            <c:choose>
                <c:when test="${page == i.index}">
                    <span class="nextprev">${i.index}</span>
                </c:when>
                <c:otherwise>
                    <c:url value="/crudbook/list" var="url">
                        <c:param name="page" value="${i.index}"/>
                    </c:url>
                    <a href='<c:out value="${url}" />' class="nextprev">${i.index}</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>


        <c:url value="/crudbook/list" var="next">
            <c:param name="page" value="${page + 1}"/>
        </c:url>
        <c:if test="${page + 1 <= maxPages}">
            <a href='<c:out value="${next}" />' class="nextprev"> > </a>
        </c:if>
    </div>
</div>
</body>
</html>
