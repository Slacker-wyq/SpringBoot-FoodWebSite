<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wyq
  Date: 2019/4/23
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h2>
              ${business.name}
            </h2>
            <p>
                ${business.detail}
                 </p>
            <p>
                联系电话:${business.phone}
            </p>
            <img alt="140x140" src="/temp-rainy/${business.photo}" width="400px" height="350px" />
        </div>
    </div>
    <div class="row clearfix">
            <h3>餐馆菜单：</h3>
            <c:forEach items="${foods}" var="food">
                <div class="col-md-4 column">
                    <h3>
                            菜名：${food.foodname}
                    </h3>
                    <p>
                    <h4>地址：${food.address}</h4>
                    <img alt="140x140" src="/temp-rainy/${food.phonto}" width="300px" height="300px" />
                    </p>
                    <p>
                        <a class="btn" href="/businessMyfoodDetail?id=${food.id}">详细»</a>
                    </p>
                </div>
            </c:forEach>



    </div>
</div>
</body>
</html>
