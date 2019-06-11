<%--
  Created by IntelliJ IDEA.
  User: wyq
  Date: 2019/4/23
  Time: 16:12
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
<h1>添加商家</h1>
<div class="row clearfix">
    <div class="col-md-12 column">
        <form action="/businessAddSuccess" method="post" enctype="multipart/form-data" >
            <div class="form-group">
                <label for="exampleInputEmail1">商家名</label><input class="form-control" id="exampleInputEmail1" type="text" name="name" />
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">地址</label><input class="form-control" id="exampleInputPassword1" type="text" name="address"/>
            </div>
            <div class="form-group">
                <label for="exampleInputFile">图片</label><input id="exampleInputFile" type="file" name="file"/>

            </div>
            <div class="form-group"><label for="exampleInputFile">商家联系电话<input class="form-control" type="text" name="phone"></label></div>
            <div class="form-group"><label for="exampleInputFile">商家email<input class="form-control" type="email" name="email"></label></div>
            <div class="form-group"><label for="exampleInputFile">商家详情</label><input class="form-control" type="text" name="detail"></div>
            <div class="form-group"><label for="exampleInputFile">营业时间</label><input class="form-control" type="text" name="time"></div>
            <div class="form-group"><label for="exampleInputFile">用户名</label><input class="form-control" type="text" name="username"></div>
            <div class="form-group"><label for="exampleInputFile">密码</label><input class="form-control" type="text" name="password"></div>
            <button class="btn btn-default" type="submit">注册</button>
        </form>
    </div>
</div>
</div>
</body>
</html>
