<%@page import="java.sql.ResultSet"%>
<%@page import="com.erp.DAO.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
ServletContext sc1 = request.getServletContext();
Admin a = (Admin) sc1.getAttribute("admin-login-success-context");
if (a == null) {
	session.setAttribute("admin-login", 404);
	response.sendRedirect("../404-page.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<!-- BEGIN: Head-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="description"
	content="Materialize is a Material Design Admin Template,It's modern, responsive and based on Material Design by Google.">
<meta name="keywords"
	content="materialize, admin template, dashboard template, flat admin template, responsive admin template, eCommerce dashboard, analytic dashboard">
<meta name="author" content="ThemeSelect">
<title>View Departments | ERP</title>
<link rel="apple-touch-icon"
	href="../app-assets/images/favicon/apple-touch-icon-152x152.png">
<link rel="shortcut icon" type="image/x-icon"
	href=../app-assets/images/favicon/favicon-32x32.png">
<link href="../icon.css?family=Material+Icons" rel="stylesheet">
<!-- BEGIN: VENDOR CSS-->

<link rel="stylesheet" type="text/css"
	href="../app-assets/vendors/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/vendors/data-tables/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/vendors/data-tables/extensions/responsive/css/responsive.dataTables.min.css">
<!-- END: VENDOR CSS-->
<!-- BEGIN: Page Level CSS-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/themes/vertical-dark-menu-template/materialize.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/themes/vertical-dark-menu-template/style.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/pages/page-users.min.css">
<!-- END: Page Level CSS-->
<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/custom/custom.css">
<!-- END: Custom CSS-->
</head>
<!-- END: Head-->
<body
	class="vertical-layout page-header-light vertical-menu-collapsible vertical-dark-menu preload-transitions 2-columns   "
	data-open="click" data-menu="vertical-dark-menu" data-col="2-columns">
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>
	<%@ include file="_sidebar.jsp"%>

	<!-- BEGIN: Page Main-->

	<div id="main">
		<div class="row">
			<div id="breadcrumbs-wrapper"
				data-image="../images/breadcrumb-bg.jpg">
				<!-- Search for small screen-->
				<div class="container">
					<div class="row">
						<div class="col s12 m6 l6">
							<h5 class="breadcrumbs-title mt-0 mb-0">
								<span>Department Section</span>
							</h5>
						</div>
						<div class="col s12 m6 l6 right-align-md">
							<ol class="breadcrumbs mb-0">
								<li class="breadcrumb-item"><a href="admin-index.jsp">Home</a>
								</li>
								<li class="breadcrumb-item"><a href="add-dept.jsp">Add
										Department</a></li>
								<li class="breadcrumb-item active">View Department</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			<%try{
			Boolean msg1 = (Boolean) session.getAttribute("dept-deleted");
			if (msg1==true) {
			%>
							<div class="card-alert card green">
								<div class="card-content white-text">
									<p>
										<i class="material-icons">check</i> Success : Department Has
										Been Deleted successfully.
									</p>
								</div>
								<button type="button" class="close white-text"
									data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
							</div>
							<%
			}
			if (msg1==false) {
				%>
								<div class="card-alert card red lighten-5">
									<div class="card-content white-text">
										<p>
											<i class="material-icons">check</i> Error: Something went wrong..Try again Later !
										</p>
									</div>
									<button type="button" class="close white-text"
										data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">×</span>
									</button>
								</div>
								<%
				}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("dept-deleted");
			%>
			<div class="col s12">
				<div class="container">
					<!-- users list start -->
					<section class="users-list-wrapper section">

						<div class="users-list-table">
							<div class="card card card-default scrollspy">
								<div class="card-content">
									<!-- datatable start -->
									<div class="responsive-table">
										<table id="users-list-datatable" class="table">
											<thead>
												<tr>
													<th></th>

													<th>Id</th>
													<th>Dept Code</th>
													<th>Dept Name</th>
													<th>Intake</th>
													<th>Semester</th>
													<th>Dept Establishment Date</th>
													<th>Action</th>

												</tr>
											</thead>
											<tbody>
												<%
												DepartmentDAO dd = new DepartmentDAO();
												ResultSet rs = dd.displayAll();
												if (!rs.next()) {
												%>
												<center>
													<img src="../images/no-data.webp" width="400px"
														height="400px">
												</center>
												<%
												} else {

												do {
												%>
												<tr>
													<td></td>


													<td><%=rs.getInt(1)%></td>

													<td><%=rs.getString(2)%></td>
													<td><%=rs.getString(3)%></td>
													<td><%=rs.getString(4)%></td>
													<td><%=rs.getString(5)%></td>
													<td><%=rs.getString(6)%></td>
													<td><a class="modal-trigger" href="#modal2"><i class="material-icons">create</i></a>&nbsp&nbsp
													<a href="../DeleteDeptServlet?deptid=<%=rs.getInt(1) %>"><i class="material-icons">delete</i></a></td>
													<td><a href=""><i class="material-icons">remove_red_eye</i></a></td>
												
											
											
										
	<div id="modal2" class="modal">
		<div class="modal-content">
			<h4>Edit Department</h4>
				<div class="card-content">
					<form action="../EditDepartmentServlet" method="post">

						<input type="hidden" name="id" value="<%=rs.getInt(1)%>">
						
							<div class="input-field col m8 s6">
								<i class="material-icons prefix">domain</i> <input
									id="icon_prefix1" name="dept_code" type="text"
									class="validate" value="<%=rs.getString(2)%>"> <label for="icon_prefix1">Department
									code</label>
							</div>
							<div class="input-field col m8 s6">
								<i class="material-icons prefix">label</i> <input
									id="icon_password" name="dept_name" type="text" value="<%=rs.getString(3)%>"> <label
									for="icon_password">Department name</label>
							</div>
							<div class="input-field col m8 s6">
								<i class="material-icons prefix">layers</i> <input
									id="icon_password" name="semesters" type="number" value="<%=rs.getString(4)%>"> <label
									>Total Intakes</label>
							</div>
							<div class="input-field col m8 s6">
								<i class="material-icons prefix">layers</i> <input
									id="icon_password" name="intake" type="number" value="<%=rs.getString(5)%>"> <label
								>Total Semesters</label>
							</div>
							<div class="input-field col m4 s12">
								<div class="input-field col s12">
									<button class="btn cyan waves-effect waves-light" type="submit">
										<i class="material-icons left">edit</i> Save changes
									</button>
								</div>
							</div>
					</form>

				</div>
			</div>
		<div class="modal-footer">
			<a href="#!"
				class="modal-action modal-close waves-effect waves-green btn-flat">Close</a>
		</div>
	</div>
	</tr>
	<%
												} while (rs.next());
												
												}
												%>
												</table>
									</div>
									<!-- datatable ends -->
								</div>
							</div>
						</div>
					</section>


				</div>
				
		</div>
	</div>
	<!-- END: Page Main-->

	<!-- END: Footer-->
	<!-- BEGIN VENDOR JS-->
	<script src="../app-assets/js/vendors.min.js"></script>
	<!-- BEGIN VENDOR JS-->
	<!-- BEGIN PAGE VENDOR JS-->
	<script
		src="../app-assets/vendors/data-tables/js/jquery.dataTables.min.js"></script>
	<script
		src="../app-assets/vendors/data-tables/extensions/responsive/js/dataTables.responsive.min.js"></script>
	<!-- END PAGE VENDOR JS-->
	<!-- BEGIN THEME  JS-->
	<script src="../app-assets/js/plugins.min.js"></script>
	<script src="../app-assets/js/search.min.js"></script>
	<script src="../app-assets/js/custom/custom-script.min.js"></script>
	<script src="../app-assets/js/scripts/customizer.min.js"></script>
	<script src="../app-assets/js/scripts/advance-ui-modals.min.js"></script>
	<script src="../app-assets/js/scripts/ui-alerts.min.js"></script>
	<!-- END THEME  JS-->
	<!-- BEGIN PAGE LEVEL JS-->
	<script src="../app-assets/js/scripts/page-users.min.js"></script>
	<!-- END PAGE LEVEL JS-->

</body>
</html>