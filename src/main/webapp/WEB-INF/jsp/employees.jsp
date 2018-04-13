<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
    <style>
        .box {
            width: 800px;
            height: 400px;
            margin: 100px auto;
        }
        .box table {
            margin: 0 auto;
        }
        .box table, .box th, .box td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        .box th {
            background-color: black;
            color: white;
        }
        .box th, .box td {
            padding: 10px 70px;
        }
        .box tr:nth-child(even) {
            background-color: gainsboro;
        }
    </style>
</head>
<body>

<div class="box">
    <table>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
        </tr>
        <c:forEach items="${employees}" var="user">

            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.gender}</td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
