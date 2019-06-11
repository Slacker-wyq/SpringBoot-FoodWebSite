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
    <!-- Morris Chart Styles-->
    <link href="loginSpecial/admin/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="loginSpecial/admin/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="loginSpecial/admin/assets/js/Lightweight-Chart/cssCharts.css">
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
                        <a class="active-menu" href="/adminmain"><i class="fa fa-dashboard"></i> 数据显示</a>
                    </li>
                    <li>
                        <a href="/adminfoods"><i class="fa fa-desktop"></i> 美食列表</a>
                    </li>
					<li>
                        <a href="/adminbusiness"><i class="fa fa-bar-chart-o"></i>商家列表</a>
                    </li>
                    <li>
                        <a href="/admincomments"><i class="fa fa-qrcode"></i> 评论列表</a>
                    </li>

                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
      
		<div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            美食数据 <small>总体显示</small>
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">首页</a></li>
					  <li><a href="#">美食数据</a></li>
					  <li class="active">详细</li>
					</ol> 
									
		</div>
            <div id="page-inner">

                <!-- /. ROW  -->
	
		<div class="row">
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>海鲜</h4>
						<div class="easypiechart" id="easypiechart-blue" data-percent="${hxFood}%" ><span class="percent">${hxFood}%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>冷饮</h4>
						<div class="easypiechart" id="easypiechart-orange" data-percent="${lyFood}%" ><span class="percent">${lyFood}%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>青菜</h4>
						<div class="easypiechart" id="easypiechart-teal" data-percent="${qcFood}%" ><span class="percent">${qcFood}%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>烧烤</h4>
						<div class="easypiechart" id="easypiechart-red" data-percent="${skFood}%" ><span class="percent">${skFood}%</span>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
			
		
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder blue">
                            <div class="panel-left pull-left blue">
                                <i class="fa fa-eye fa-5x"></i>
                                
                            </div>
                            <div class="panel-right">
								<h3>${hxFoodCount}</h3>
                               <strong>海鲜</strong>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder blue">
                              <div class="panel-left pull-left blue">
                                <i class="fa fa-shopping-cart fa-5x"></i>
								</div>
                                
                            <div class="panel-right">
							<h3>${lyFoodCount}</h3>
                               <strong> 冷饮</strong>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder blue">
                            <div class="panel-left pull-left blue">
                                <i class="fa fa fa-comments fa-5x"></i>
                               
                            </div>
                            <div class="panel-right">
							 <h3>${qcFoodCount} </h3>
                               <strong> 青菜</strong>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder blue">
                            <div class="panel-left pull-left blue">
                                <i class="fa fa-users fa-5x"></i>
                                
                            </div>
                            <div class="panel-right">
							<h3>${skFoodCount}</h3>
                             <strong>烧烤</strong>

                            </div>
                        </div>
                    </div>
                </div>


                    <div class="col-md-8 col-sm-12 col-xs-12">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                最新发布
                            </div> 
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>id</th>
                                                <th>美食名</th>
                                                <th>地点</th>
                                                <th>发布者</th>
                                                <th>类型</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <% int count=1;%>
                                        <c:forEach items="${foods}" var="food" end="5">
                                            <tr>
                                                <td><%=count%></td>

                                                <td><a href="/businessMyfoodDetail?id=${food.id}">${food.foodname}</a></td>
                                                <td>${food.address}</td>
                                                <td>${food.publisher}</td>
                                                <td>${food.type}</td>

                                            </tr>
                                            <% count++;%>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /. ROW  -->
			

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="loginSpecial/admin/assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="loginSpecial/admin/assets/js/bootstrap.min.js"></script>
	 
    <!-- Metis Menu Js -->
    <script src="loginSpecial/admin/assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="loginSpecial/admin/assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="loginSpecial/admin/assets/js/morris/morris.js"></script>
	
	
	<script src="loginSpecial/admin/assets/js/easypiechart.js"></script>
	<script src="loginSpecial/admin/assets/js/easypiechart-data.js"></script>
	
	 <script src="loginSpecial/admin/assets/js/Lightweight-Chart/jquery.chart.js"></script>
	
    <!-- Custom Js -->
    <script src="loginSpecial/admin/assets/js/custom-scripts.js"></script>

      <script>
    
      </script>

</body>

</html>