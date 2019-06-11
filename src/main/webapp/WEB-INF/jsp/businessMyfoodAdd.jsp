<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wyq
  Date: 2019/4/5
  Time: 13:30
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
    <h1>添加美食</h1>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="/myfoodAddSuccess" method="post" enctype="multipart/form-data" >
                <div class="form-group">
                    <label for="exampleInputEmail1">美食名</label><input class="form-control" id="exampleInputEmail1" type="text" name="foodname" />
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">美食所在</label><input class="form-control" id="exampleInputPassword1" type="text" name="address"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputFile">美食图片</label><input id="exampleInputFile" type="file" name="file"/>
                </div>
                <div class="checkbox">
                    烹饪类型：<label><select name="type">
                    <option>海鲜</option>
                    <option>烧烤</option>
                    <option>青菜</option>
                    <option>冷饮</option>
                </select></label>
                    <span  style="display:none"><input type="text" name="businessid" value="${businessid}" /></span>
                </div> <button class="btn btn-default" type="submit">发布</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
