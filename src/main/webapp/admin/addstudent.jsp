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
<title>Add STUDENT| ERP</title>
<link rel="apple-touch-icon"
	href="../app-assets/images/favicon/apple-touch-icon-152x152.png">
<link rel="shortcut icon" type="image/x-icon"
	href="../app-assets/images/favicon/favicon-32x32.png">
<link href="../icon.css?family=Material+Icons" rel="stylesheet">
<!-- BEGIN: VENDOR CSS-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/vendors/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/vendors/flag-icon/css/flag-icon.min.css">
<!-- END: VENDOR CSS-->
<!-- BEGIN: Page Level CSS-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/themes/vertical-dark-menu-template/materialize.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/themes/vertical-dark-menu-template/style.min.css">
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
								<span>Add Student</span>
							</h5>
						</div>
						<div class="col s12 m6 l6 right-align-md">
							<ol class="breadcrumbs mb-0">
								<li class="breadcrumb-item"><a href="admin-index.jsp">Home</a></li>
								
								<li class="breadcrumb-item active">Add Student</li>
							</ol>
						</div>
					</div>
				</div>
			</div>

			<div class="col s12">
				<div class="container">
					<div class="seaction">
<%try{
			Boolean msg1 = (Boolean) session.getAttribute("add-student-success");
			if (msg1==true) {
			%>
	<div class="card-alert card green">
		<div class="card-content white-text">
			<p>
				<i class="material-icons">check</i> Success : New Student Has Been
				Added Successfully.
			</p>
		</div>
		<button type="button" class="close white-text" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">×</span>
		</button>
	</div>
	<%
		}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("add-faculty-success");
			%>

	<%try{
			Boolean msg1 = (Boolean) session.getAttribute("add-studnet-fail");
			if (msg1==false) {
			%>
	<div class="card-alert card red lighten-5">
		<div class="card-content red-text">
			<p>
				<i class="material-icons">warning</i> Error : Something Went Wrong
				,Try Again Later
			</p>
		</div>
		<button type="button" class="close red-text" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">×</span>
		</button>
	</div>
	<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("add-faculty-fail");
			%>

						<!-- Form with validation -->
						<div class="col s12 m6 l6 mx-auto" style="width: 1269.2px">
							<div id="validation" class="card card card-default scrollspy"
								style="margin: 50px auto; width: 450px">


								<div class="card-content ">
									<h4 class="card-title">Add Student</h4>
									<form action="../AddStudentServlet" method="post">
										<div class="row">
											<div class="input-field col s12">
												<i class="material-icons prefix">account_circle</i> <input
													id="name4" type="text" class="validate" name="name">
												<label for="name4">Name</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12">
												<i class="material-icons prefix">email</i> <input
													id="email4" type="email" name="email" class="validate">
												<label for="email4">Email</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12">
												<i class="material-icons prefix">phone</i> <input
													 type="number" name="phone" class="validate">
												<label for="">Phone</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12">
												<i class="material-icons prefix">Department</i> <input
													 type="text" name="department" class="validate">
												<label for="">Department</label>
											</div>
											
										</div>
										
										<div class="row">
											<div class="input-field col s12">
												<i class="material-icons prefix">Division</i> <input
													 type="text" name="div" class="validate">
												<label for="">Division</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col  s12">
											<i class="material-icons prefix">person</i>
												<select name="gender">
													<option value="" disabled="" selected="">Choose
														Gender</option>
													<option value="Male">Male</option>
													<option value="Female">Female</option>
													<option value="Other">Other</option>
												</select> <label>Select Gender</label>
											</div>
											</div>
											<div class="row">
												
												<div class="row">
													<div class="input-field col s12">
														<button class="btn cyan waves-effect waves-light right"
															type="submit" name="action">
															Add Student<i class="material-icons right">send</i>
														</button>
													</div>
												</div>
											</div>
									</form>
								</div>

							</div>
						</div>


					</div>
					<div class="content-overlay"></div>
				</div>
			</div>
		</div>

		<!-- END: Page Main-->

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
		<script src="../app-assets/js/scripts/customizer.min.js"></script>
		<script src="../app-assets/js/scripts/advance-ui-modals.min.js"></script>
		<script src="../app-assets/js/scripts/ui-alerts.min.js"></script>
		<!-- END THEME  JS-->
		<!-- BEGIN PAGE LEVEL JS-->
		<!-- END PAGE LEVEL JS-->
</body>
</html>