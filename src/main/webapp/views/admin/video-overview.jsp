<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Video</title>

<%@ include file="/common/admin/head.jsp"%>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake"
				src="<c:url value='/templates/admin/dist/img/AdminLTELogo.png'/>"
				alt="AdminLTELogo" height="60" width="60">
		</div>

		<!-- Main Sidebar Container -->
		<%@ include file="/common/admin/slidebar.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">List Video</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Video</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">

							<div class="card">
								<div class="card-header">
									<h3 class="card-title">List Video</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Title</th>
												<th>Description</th>
												<th>Link</th>
												<th>Poster</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${videos}">
												<tr>
													<td>${item.title}</td>
													<td>${item.description}</td>
													<td><a
														href="<c:url value='/video?action=watch&id=${item.href}'/>">${item.href}</a>
													</td>
													<td><img src="${item.poster}" width="150px"
														height="150px"></td>
													<td>
														<a href="<c:url value='/admin/video?action=edit&href=${item.href}'/>"
															class="btn btn-block btn-success btn-sm">Edit</a>
														<button type="button"
															onClick="deleteVideo('${item.href}')"
															class="btn btn-block btn-danger btn-sm">Delete</button>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
							</div>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@ include file="/common/admin/footer.jsp"%>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script
		src="<c:url value='/templates/admin/plugins/jquery/jquery.min.js'/>"></script>
	<!-- jQuery UI 1.11.4 -->
	<script
		src="<c:url value='/templates/admin/plugins/jquery-ui/jquery-ui.min.js'/>"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script
		src="<c:url value='/templates/admin/plugins/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<!-- ChartJS -->
	<script
		src="<c:url value='/templates/admin/plugins/chart.js/Chart.min.js'/>"></script>
	<!-- Sparkline -->
	<script
		src="<c:url value='/templates/admin/plugins/sparklines/sparkline.js'/>"></script>
	<!-- JQVMap -->
	<script
		src="<c:url value='/templates/admin/plugins/jqvmap/jquery.vmap.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/jqvmap/maps/jquery.vmap.usa.js'/>"></script>
	<!-- jQuery Knob Chart -->
	<script
		src="<c:url value='/templates/admin/plugins/jquery-knob/jquery.knob.min.js'/>"></script>
	<!-- daterangepicker -->
	<script
		src="<c:url value='/templates/admin/plugins/moment/moment.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/daterangepicker/daterangepicker.js'/>"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="<c:url value='/templates/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js'/>"></script>
	<!-- Summernote -->
	<script
		src="<c:url value='/templates/admin/plugins/summernote/summernote-bs4.min.js'/>"></script>
	<!-- overlayScrollbars -->
	<script
		src="<c:url value='/templates/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js'/>"></script>
	<!-- AdminLTE App -->
	<script src="<c:url value='/templates/admin/dist/js/adminlte.js'/>"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<c:url value='/templates/admin/dist/js/demo.js'/>"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script
		src="<c:url value='/templates/admin/dist/js/pages/dashboard.js'/>"></script>
	<!-- DataTables  & Plugins -->
	<script
		src="<c:url value='/templates/admin/plugins/datatables/jquery.dataTables.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/jszip/jszip.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/pdfmake/pdfmake.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/pdfmake/vfs_fonts.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.html5.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.print.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.colVis.min.js'/>"></script>
	<!-- Page specific script -->
	<script>
		$(function() {
			$("#example1").DataTable({
						"responsive" : true,
						"lengthChange" : false,
						"autoWidth" : false,
						"buttons" : [ "copy", "csv", "excel", "pdf", "print", "colvis" ]
					}).buttons().container().appendTo(
					'#example1_wrapper .col-md-6:eq(0)');
		});
		
		function deleteVideo(href) {
			$.ajax({
				url: '/ASM/admin/video?action=delete&href=' + href
			}).then(function(data) {
				window.location.href = "http://localhost:8082/ASM/admin/video?action=view"
			}).fail(function(error) {
				alert("Oop! Please try againt")
			});
		}
	</script>
</body>
</html>