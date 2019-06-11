<%--
  Created by IntelliJ IDEA.
  User: wyq
  Date: 2019/4/5
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>舌尖上的中国</title>
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
<body class="bg-grey" gtools_scp_screen_capture_injected="true">
<header id="header" class="header bg-white">
    <div class="navbar-container">
        <a href="index.html" class="navbar-logo">
            舌尖上的中国
        </a>

        <div class="navbar-menu">
            <a href="/foodAll">美食</a>
            <a href="/foodOwer">商家</a>
            <a href="/cancellation">注销</a>
            <c:choose>
                <c:when test="${sessionScope.username==null}">
                    <a href="/login"><c:out value="登录"/></a>
                </c:when>
                <c:otherwise>
                    <a id="user" href="javascript:;" style="position:relative;">${sessionScope.username}</a>
                    <ul class="profile">
                        <li><a href="/foodAdd">添加美食</a></li>
                        <li><a href="/foodMyAdd">我的发布</a></li>
                    </ul>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="navbar-search" onclick="" style="float:right;">
            <span class="icon-search"></span>
            <form role="search" onsubmit="return false;">
                    <span class="search-box">
                        <input type="text" id="search-inp" class="input" placeholder="搜索..." maxlength="30"
                               autocomplete="off">
                    </span>

            </form>
        </div>

    </div>

</header>
<div class="main-content index-page clearfix">
    <center><h1>最新推荐</h1></center>
    <div class="post-lists">
        <div class="post-lists-body">
<c:forEach items="${foods}" var="food" end="5">
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
