<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wyq
  Date: 2019/4/5
  Time: 13:38
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
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>
                全部${type}
            </h3>
            <div class="row">
                <c:forEach items="${foods}" var="food">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img alt="300x200" src="/temp-rainy/${food.phonto}" />
                        <div class="caption">
                            <h3>
                                ${food.foodname}
                            </h3>
                            <p>
                                ${food.address}
                            </p>
                            <p>
                                <a class="btn btn-primary" href="/foodDetail?id=${food.id}">详情</a>
                            </p>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>

</html>
