<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "/common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin</title>
	<%@ include file = "/common/admin/head.jsp" %>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="<c:url value='templates/admin/dist/img/AdminLTELogo.png' />" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <%@ include file = "/common/admin/header.jsp" %>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <%@ include file = "/common/admin/slidebar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Admin</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
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
		            <th>Link</th>
		            <th>Total Likes</th>
		          </tr>
		          </thead>
		          <tbody>
		          <c:forEach var="video" items="${videos}">
	          		<tr>
			            <td>${video.title}</td>
			            <td>
			            <a href="video?action=watch&id=${video.href}">${video.href}</a>
			            </td>
			            <td>${video.totalLike}</td>
			         </tr>
		          </c:forEach>
		          </tbody>
		        </table>
		      </div>
		      <!-- /.card-body -->
		    </div>
		    
		    <div class="card">
		      <div class="card-header">
		        <h3 class="card-title">Favorites Statistic</h3>
		      </div>
		      <!-- /.card-header -->
		      <div class="card-body">
		      	<div class="form-group">
		      		<label>Favorites Infomation</label>
		      		<select id="selectVideo" class="form-control" aria-label="label for the select">
		      			<option selected disabled>--- SELECT ONE ---</option>
			      		<c:forEach var="item" items="${videos}">
			      			<option value="${item.href}">${item.title}</option>
			      		</c:forEach>
		      		</select>
		      	</div>
		        <table id="example2" class="table table-bordered table-striped">
		          <thead>
		          <tr>
		            <th>Username</th>
		            <th>Fullname</th>
		            <th>Email</th>
		          </tr>
		          </thead>
		          <tbody>
		          
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
  <%@ include file = "/common/admin/footer.jsp" %>
  <%@ include file = "/common/admin/script.jsp" %>
  </div>
<!-- ./wrapper -->
	<script type="text/javascript">
		$('#selectVideo').change(function() {
			var videoHref = $(this).val();
			$.ajax({
				url: 'admin/favorites?href=' + videoHref,
				type: 'GET',
				contentType: 'application/json'
			}).done(function(data) {
				$('#example2').DataTable({
					destroy: true,
		       		"paging": true,
			      	"lengthChange": false,
			      	"searching": false,
			      	"ordering": true,
			      	"info": true,
			      	"autoWidth": false,
			      	"responsive": true,
			      	"aaData": data,
			      	"columns": 
			      		[
				      		{"data": "username"},
				      		{"data": "fullname"},
				      		{"data": "email"}
			      		]
			    });
			}).fail(function(error) {
				$('#example2').dataTable().fnClearTable();
			});
		});
	</script>
</body>
</html>

