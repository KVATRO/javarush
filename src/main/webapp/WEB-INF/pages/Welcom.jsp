<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" language="java" %>
<html>
<head>
    <title>Книжная полка</title>
    <style type="text/css">
        body{
            margin: 0;
            background: #c7b39b url("/resources/images/back.jpg") no-repeat;
            background-size: cover;
        }
        .main{
            color: chocolate;
            text-align: center;
            line-height: 5cm;
            font-family: 'trebuchet MS', sans-serif;
            font-size: 72px;
            font-weight: bold;
            font-style: italic;
            letter-spacing: 3pt;
            word-spacing: 10.2pt;
        }
        .p1{
            color: chocolate;
            text-align: center;
            font-family: 'trebuchet MS', sans-serif;
            font-size: 30px;
            margin-left: 1cm;
        }
        .p2{
            color: chocolate;
            text-align: left;
            font-family: 'trebuchet MS', sans-serif;
            font-size: 30px;
            margin-left: 1cm;
        }
    </style>
</head>
<body>
    <div class="main">
        <b>Книжная полка</b>
    </div>
    <div class="p1">
        <p>Для перехода в режим просмотра списка книг нажмите на иконку ниже</p>
    </div>
    <p align="center">
        <a href="/crudbook/list">
            <img src="/resources/images/kniga133.png" alt=""
              width="70" height="70">
        </a>
    </p>
    <p class="p2">
        Функционал:
    </p>
    <ul class="p2">
        <li>Просмотр списка книг</li>
        <li>Добавление новой книги</li>
        <li>Отметка прочитаных книг</li>
        <li>Поиск книг по названию или ее части</li>
        <li>Редактирование книг</li>
        <li>Удаление книг</li>
    </ul>
</body>
</html>
