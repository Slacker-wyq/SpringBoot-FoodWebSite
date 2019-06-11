<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>cssmoban</title>
	<!-- Bootstrap Styles-->
    <link href="loginSpecial/admin/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link href="loginSpecial/admin/assets/css/font-awesome.css" rel="stylesheet" />
        <!-- Custom Styles-->
    <link href="loginSpecial/admin/assets/css/custom-styles.css" rel="stylesheet" />
     <!-- Google Fonts-->
   <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><strong>舌尖上的中国后台</strong></a>
            </div>
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a href="/adminmain"><i class="fa fa-bar-chart-o"></i> 数据显示</a>
                    </li>
                    <li>
                        <a href="/adminfoods"><i class="fa fa-desktop"></i> 美食列表</a>
                    </li>
                    <li>
                        <a class="active-menu" href="/adminbusiness"><i class="fa fa-dashboard"></i>商家列表</a>
                    </li>
                    <li>
                        <a href="/admincomments"><i class="fa fa-qrcode"></i> 评论列表</a>
                    </li>

                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
			  <div class="header"> 
                        <h1 class="page-header">
                            商家列表 <small>列表显示</small>
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">首页</a></li>
					  <li><a href="#">商家列表</a></li>
                            <li class="active"><a href="/adminbusinesshandle">待验证</a></li>
					</ol> 
									
		</div>
		
            <div id="page-inner"> 
                                 

                    <!-- /. ROW  -->
            <div class="row">
                <c:forEach items="${businesses}" var="business">
                <div class="col-md-6 col-sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          <a href="/adminbusinessDetail?id=${business.id}"> ${business.name}</a>
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-pills">
                                <li class=""><a href="#home-pills" data-toggle="tab">营业时间</a>
                                </li>
                                <li class=""><a href="#profile-pills" data-toggle="tab">地点</a>
                                </li>
                                <li class=""><a href="#messages-pills" data-toggle="tab">商家详情</a>
                                </li>
                                <li class="active"><a href="#settings-pills" data-toggle="tab">联系方式</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade" id="home-pills">
                                    <h4>The time</h4>
                                    <p>营业时间为：${business.time}</p>
                                </div>
                                <div class="tab-pane fade" id="profile-pills">
                                    <h4>The address</h4>
                                    <p>地点为：${business.address}</p>
                                </div>
                                <div class="tab-pane fade" id="messages-pills">
                                    <h4>The detail</h4>
                                    <p>商家详细信息：${business.detail}</p>
                                </div>
                                <div class="tab-pane fade active in" id="settings-pills">
                                    <h4>The contact </h4>
                                    <p>联系电话：${business.phone}</p>
                                    <p>email:${business.email}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/deleteBusiness">删除此商家</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            </div>
        </div>
    </div>
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="loginSpecial/admin/assets/js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="loginSpecial/admin/assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="loginSpecial/admin/assets/js/jquery.metisMenu.js"></script>
      <!-- Custom Js -->
    <script src="loginSpecial/admin/assets/js/custom-scripts.js"></script>
    
   
</body>
</html>
