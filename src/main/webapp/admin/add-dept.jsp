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
<html class="loading" lang="en" data-textdirection="ltr">
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
<title>Add Department | ERP</title>
<link rel="apple-touch-icon"
	href="../app-assets/images/favicon/apple-touch-icon-152x152.png">
<link rel="shortcut icon" type="image/x-icon"
	href="../app-assets/images/favicon/favicon-32x32.png">
<link href="../icon.css?family=Material+Icons" rel="stylesheet">
<!-- BEGIN: VENDOR CSS-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/vendors/vendors.min.css">
<!-- END: VENDOR CSS-->
<!-- BEGIN: Page Level CSS-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/themes/vertical-dark-menu-template/materialize.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/themes/vertical-dark-menu-template/style.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/pages/login.css">
<!-- END: Page Level CSS-->
<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/custom/custom.css">
	<link rel="stylesheet" type="text/css"
	href="../app-assets/css/pages/page-users.min.css">
<!-- END: Custom CSS-->
</head>
<!-- END: Head-->
<body
	class="vertical-layout page-header-light vertical-menu-collapsible vertical-dark-menu preload-transitions 1-column login-bg   blank-page blank-page"
	data-open="click" data-menu="vertical-dark-menu" data-col="1-column">
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>
	<%@ include file="_sidebar.jsp"%>

	<div id="breadcrumbs-wrapper" data-image="../images/breadcrumb-bg.jpg">
		<!-- Search for small screen-->
		<div class="container">
			<div class="row">
				<div class="col s12 m6 l6">
					<h5 class="breadcrumbs-title mt-0 mb-0">
						<span>Add Department</span>
					</h5>
				</div>
				<div class="col s12 m6 l6 right-align-md">
					<ol class="breadcrumbs mb-0">
						<li class="breadcrumb-item"><a href="admin-index.jsp">Home</a>
						</li>

						<li class="breadcrumb-item active">Add Department</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	
			
	<div class="row">
		<div class="col s12">
			<div class="container">

				<div id="login-page" class="row" style="margin-top: 20px;">
					<div
						class="col s12 m2 l4 z-depth-4 card-panel border-radius-6 login-card bg-opacity-8" style="margin-top: 20px;">
						<form class="login-form" action="../AddDeptServlet" method="post">
							<div class="row">
								<div class="input-field col s12">
									<h5 class="ml-4">Add Department</h5>
									
								</div>
							</div>
							<%try{
			Boolean msg1 = (Boolean) session.getAttribute("add-dept-success");
			if (msg1==true) {
			%>
							<div class="card-alert card green">
								<div class="card-content white-text">
									<p>
										<i class="material-icons">check</i> Success : New Department Has
										Been Added Successfully.
									</p>
								</div>
								<button type="button" class="close white-text"
									data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">�</span>
								</button>
							</div>
							<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("add-dept-success");
			%>

							<%try{
			Boolean msg1 = (Boolean) session.getAttribute("add-dept-fail");
			if (msg1==false) {
			%>
							<div class="card-alert card red lighten-5">
								<div class="card-content red-text">
									<p>
										<i class="material-icons">warning</i> Error : Something Went
										Wrong ,Try Again Later
									</p>
								</div>
								<button type="button" class="close red-text"
									data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">�</span>
								</button>
							</div>
							<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("add-dept-fail");
			%>



							<div class="row margin">
								<div class="input-field col s12">
									<i class="material-icons prefix pt-2">domain</i> <input
										id="username" type="text" name="code"> <label
										for="username" class="center-align">Department Code</label>
								</div>
							</div>
							<div class="row margin">
								<div class="input-field col s12">
									<i class="material-icons prefix pt-2">label</i> <input
										id="email" type="text" name="name"> <label for="email">Dept
										Name</label>
								</div>
							</div>
							<div class="row margin">
								<div class="input-field col s12">
									<i class="material-icons prefix pt-2">layers</i> <input
										id="phone" type="number" name="sem"> <label
										for="phone">Total Semester</label>
								</div>
							</div>
							<div class="row margin">
								<div class="input-field col s12">
									<i class="material-icons prefix pt-2">layers</i> <input
										id="password" type="number" name="intake"> <label
										for="password">Total Intake</label>
								</div>
							</div>

							<div class="row">
								<div class="input-field col s12">
									<button class="waves-effect waves-light btn mb-1 mr-1">
										<i class="material-icons right">add</i> Add New
									</button>
									 <a
										class="btn-small indigo btn modal-trigger" href="view-dept.jsp"><i class="material-icons right">visibility</i>View
										All Dept</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="content-overlay"></div>
		</div>
	</div>
	<%@ include file="_theme-setting.jsp"%>
	<!-- BEGIN VENDOR JS-->
	<script src="../app-assets/js/vendors.min.js"></script>
	<!-- BEGIN VENDOR JS-->
	<!-- BEGIN PAGE VENDOR JS-->
	<!-- END PAGE VENDOR JS-->
	<!-- BEGIN THEME  JS-->
	<script src="../app-assets/js/plugins.min.js"></script>
	<script src="../app-assets/js/search.min.js"></script>
	<script src="../app-assets/js/custom/custom-script.min.js"></script>
	<script src="../app-assets/js/scripts/ui-alerts.min.js"></script>
	<!-- END THEME  JS-->
	<!-- BEGIN PAGE LEVEL JS-->
	<!-- END PAGE LEVEL JS-->
</body>
</html>