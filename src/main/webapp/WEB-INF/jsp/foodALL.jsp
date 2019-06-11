<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wyq
  Date: 2019/4/5
  Time: 13:32
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
    <link href="loginSpecial/css/xcode.min.css" rel="stylesheet">
    <link href="loginSpecial/css/style.min.css" rel="stylesheet">
    <script src="loginSpecial/js/jquery.min.js"></script>
    <style>
        ul,li{
            list-style-type: none;
            position: relative;
        }
        .profile{
            /* top: 100%;
            position: absolute;
            display: none;
            background: #f8f9fa;
            margin-top:-15px;
            overflow: hidden;
            border:#ddd 1px solid; */
            min-width: 10rem;
            padding: 0.5rem 0;
            margin: 0.125rem 0 0;
            font-size: 1rem;
            color: #212529;
            text-align: left;
            z-index: 1000;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid rgba(0, 0, 0, 0.15);
            border-radius: 0.25rem;
            display: none;
            left: 80%;
            width: 25%;
            margin-top:-15px;
        }

        .profile li{
            height: 40px;
            line-height: 40px;
        }

    </style>
    <script type="text/javascript">
        $(function(){
            $('#user').on('click',function(){
                if($(this).next('ul').css('display')=='none'){
                    $(this).next('ul').slideDown(300)
                }else{
                    $(this).next('ul').slideUp(300)
                }
            })
        })

    </script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="/backmain">首页</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">

                        <li class="dropdown">


                    <form class="navbar-form navbar-left" role="search" action="/foodLike">
                        <div class="form-group">
                            <input class="form-control" type="text" name="likename" />
                        </div> <button class="btn btn-default" type="submit">查找</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">

                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown">分类<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="/foodType?type=海鲜">海鲜</a>
                                </li>
                                <li>
                                    <a href="/foodType?type=烧烤">烧烤</a>
                                </li>
                                <li>
                                    <a href="/foodType?type=清淡">清淡</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="/foodType?type=冷饮">冷饮</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">麻辣</a>
                                </li>
                    </ul>
                </div>

            </nav>
            <div class="carousel slide" id="carousel-509678">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-509678" data-slide-to="0">
                    </li>
                    <li data-target="#carousel-509678" data-slide-to="1">
                    </li>
                    <li class="active" data-target="#carousel-509678" data-slide-to="2">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item">
                        <img alt="" src="loginSpecial/img/1.jpg" />
                        <div class="carousel-caption">
                            <h4>
                               走向世界
                            </h4>
                            <p>
                                体验世界美食，享受人生
                                 </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="loginSpecial/img/2.jpg" />
                        <div class="carousel-caption">
                            <h4>
                                走进美食
                            </h4>
                            <p>
                                舌尖上的美味
                                 </p>
                        </div>
                    </div>
                    <div class="item active">
                        <img alt="" src="loginSpecial/img/3.jpg" />
                        <div class="carousel-caption">
                            <h4>
                                创新生活
                            </h4>
                            <p>
                              享受新的每一天   </p>
                        </div>
                    </div>
                </div> <a class="left carousel-control" href="#carousel-509678" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-509678" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
    </div>


    <div class="row clearfix">
        <c:forEach items="${foods}" var="food">
            <div class="post-list-item">
                <div class="post-list-item-container">
                    <div class="item-thumb bg-deepgrey" style="background-image:url(/temp-rainy/${food.phonto});"></div>
                    <a href="/foodDetail?id=${food.id}">
                        <div class="item-desc">
                            <p>${food.foodname}</p>
                        </div>
                    </a>
                    <div class="item-slant reverse-slant bg-deepgrey"></div>
                    <div class="item-slant"></div>
                    <div class="item-label">
                        <div class="item-title"><a href="/foodDetail?id=${food.id}">${food.foodname}</a>
                        </div>
                        <div class="item-meta clearfix">
                            <div class="item-meta-ico"
                                 style="background: url(loginSpecial/static/img/bg-ico.png) no-repeat;background-size: 40px auto;"></div>
                            <div class="item-meta-cat">
                                    ${food.type}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<script src="loginSpecial/js/headroom.min.js"></script>
<script src="loginSpecial/js/instantclick.min.js"></script>
<script type="text/javascript">

    var header = new Headroom(document.getElementById("header"), {
        tolerance: 10,
        offset : 80,
        classes: {
            initial: "animated",
            pinned: "slideDown",
            unpinned: "slideUp"
        }
    });
    header.init();
    $('#search-inp').keypress(function (e) {
        var key = e.which; //e.which是按键的值
        if (key == 13) {
            var q = $(this).val();
            if (q && q != '') {
                window.location.href = '/search/' + q;
            }
        }
    });
</script>
<script data-no-instant>
    InstantClick.on('change', function (isInitialLoad) {
        var blocks = document.querySelectorAll('pre code');
        for (var i = 0; i < blocks.length; i++) {
            hljs.highlightBlock(blocks[i]);
        }
        if (isInitialLoad === false) {
            if (typeof ga !== 'undefined') ga('send', 'pageview', location.pathname + location.search);
        }
    });
    InstantClick.init('mousedown');


</script>

</body>

</html>
