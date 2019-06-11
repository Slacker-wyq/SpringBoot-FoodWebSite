<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wyq
  Date: 2019/4/5
  Time: 13:37
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
    <h1>商家</h1>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">

                <c:forEach items="${businesses}" var="business">
                <div class="panel-footer">
                    <a href="/foodOwerDetail?id=${business.id}">${business.name}</a>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>
</html>

