<%--
  Created by IntelliJ IDEA.
  User: wyq
  Date: 2019/4/6
  Time: 17:36
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
            <div class="page-header">
                <h1>
                    用户注册中心
                </h1>
            </div>
            <form class="form-horizontal" role="form" action="register" method="post">
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputEmail3">用户名：</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="inputEmail3" type="text" name="username" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputPassword3">密码：</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="inputPassword3" type="password" name="password"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputPassword3">Email：</label>
                    <div class="col-sm-10">
                        <input class="form-control" type="email" name="email"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            性别：<label><select name="sex">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select></label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button class="btn btn-default" type="submit">注册</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
