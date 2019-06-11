<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wyq
  Date: 2019/4/5
  Time: 13:33
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
            <h3>图片</h3>
            <img alt="140x140" src="/temp-rainy/${food.phonto}" width="400px" height="350px" />
            <dl>
                <dt>
                    <label>美食名：</label> ${food.foodname}
                </dt>
                <dd>
                    <label>地点：</label>  ${food.address}
                </dd>
                <dt>
                    <label>发布者：</label>${food.publisher}
                </dt>

                <dd>
                    <label>商家：</label>${food.business}

                </dd>

            </dl>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div style="float: left">
                <h2>
                    评价
                </h2>
            </div>
            <div style="margin-left: 100px;margin-top: 25px"></div>
            <div style="display:block"></div>
            <c:forEach items="${comments}" var="comment" end="2">
                <p style="clear: both">
                        ${comment.content}
                </p>
            </c:forEach>
            <p>
                <a class="btn" href="#">更多»</a>
            </p>
            
        </div>
    </div>
</div>
</body>

</html>