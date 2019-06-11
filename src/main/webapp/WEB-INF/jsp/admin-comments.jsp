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

	<!-- Custom Styles-->
	<link href="loginSpecial/admin/assets/css/custom-styles.css" rel="stylesheet" />
	<!-- Google Fonts-->
	<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
	<!-- TABLE STYLES-->
	<link href="loginSpecial/admin/assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
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
					<a href="/adminmain"><i class="fa fa-dashboard"></i> 数据显示</a>
				</li>
				<li>
					<a href="/adminfoods"><i class="fa fa-desktop"></i> 美食列表</a>
				</li>
				<li>
					<a href="/adminbusiness"><i class="fa fa-bar-chart-o"></i>商家列表</a>
				</li>
				<li>
					<a class="active-menu" href="/admincomments"><i class="fa fa-qrcode"></i> 评论列表</a>
				</li>

			</ul>

		</div>

	</nav>
	<!-- /. NAV SIDE  -->
	<div id="page-wrapper" >
		<div class="header">
			<h1 class="page-header">
				评论列表 <small>列表显示</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#">首页</a></li>
				<li><a href="#">评论列表</a></li>
				<li class="active">详细</li>
			</ol>

		</div>

		<div id="page-inner">

			<div class="row">
				<div class="col-md-12">
					<!-- Advanced Tables -->
					<div class="panel panel-default">
						<div class="panel-heading">
							所有评论
						</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover" id="dataTables-example">
									<thead>
									<tr>
										<th>编号</th>
										<th>内容</th>
										<th>评论美食</th>
										<th>评论者</th>
										<th>操作</th>

									</tr>
									</thead>
									<tbody>
									<c:forEach items="${comments}" var="comment">
									<tr class="odd gradeX">
										<td>${comment.id}</td>
										<td>${comment.content}</td>
										<td>${comment.food.foodname}</td>
										<td class="center">${comment.user.username}</td>
										<td class="center"><center><a href="/adminCommentDelete?id=${comment.id}">删除</a></center></td>
									</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>

						</div>
					</div>
					<!--End Advanced Tables -->
				</div>
			</div>
		</div>
		<!-- /. PAGE INNER  -->
	</div>
</div>
<!-- /. PAGE WRAPPER  -->
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="loginSpecial/admin/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="loginSpecial/admin/assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="loginSpecial/admin/assets/js/jquery.metisMenu.js"></script>
<!-- DATA TABLE SCRIPTS -->
<script src="loginSpecial/admin/assets/js/dataTables/jquery.dataTables.js"></script>
<script src="loginSpecial/admin/assets/js/dataTables/dataTables.bootstrap.js"></script>
<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>
<!-- Custom Js -->
<script src="loginSpecial/admin/assets/js/custom-scripts.js"></script>


</body>
</html>
