<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wyq
  Date: 2019/4/5
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>我的发布</h1>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table">
                <thead>
                <tr>
                    <th>
                        编号
                    </th>
                    <th>
                       美食名
                    </th>
                    <th>
                        地址
                    </th>
                    <th>
                        类型
                    </th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${foods }" var="food">
                <tr>
                    <td>
                        ${food.id}
                    </td>
                    <td>
                      <a href="/foodDetail?id=${food.id}">${food.foodname}</a>
                    </td>
                    <td>
                        ${food.address}
                    </td>
                    <td>
                        ${food.type}
                    </td>
                    <td>
                        <a href="/foodDelete?id=${food.id}">删除</a>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<a href="/foodAdd">前往添加</a>
</body>
</html>
