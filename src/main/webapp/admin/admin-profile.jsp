<%@page import="java.sql.ResultSet"%>
<%@page import="com.erp.model.Admin"%>
<%@page import="com.erp.DAO.AdminDAO"%>
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
<title>Admin Profile | ERP</title>
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

	<%!ResultSet rs=null; %>



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
								<span>Admin Profile</span>
							</h5>
						</div>
						<div class="col s12 m6 l6 right-align-md">
							<ol class="breadcrumbs mb-0">
								<li class="breadcrumb-item"><a href="admin-index.jsp">Home</a>
								</li>
								<li class="breadcrumb-item"><a href="#">Admin Profile</a></li>

							</ol>
						</div>
					</div>
				</div>
			</div>

			<%try{
			Boolean msg1 = (Boolean) session.getAttribute("change-pass-success");
			if (msg1==true) {
			%>
			<div class="card-alert card green">
				<div class="card-content white-text">
					<p>
						<i class="material-icons">check</i> Success : Password Has Been
						Changed Successfully.
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
			session.removeAttribute("change-pass-success");
			%>

			<%try{
			Boolean msg1 = (Boolean) session.getAttribute("change-pass-fail");
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
			session.removeAttribute("change-pass-fail");
			%>


			<% 
try{
	ServletContext sct=request.getServletContext();
int id=(Integer)sct.getAttribute("admin-id");
AdminDAO ad=new AdminDAO();
rs=ad.getSpecificAdminDataById(id);
if(rs.next()){
	%>
			<div class="col s12">
				<div class="container">
					<!-- users view start -->
					<div class="section users-view">
						<!-- users view media object start -->
						<div class="card-panel">
							<div class="row">
								<div class="col s12 m7">
									<div class="display-flex media">
										<%try{
              if(rs.getString(7)==null){
            	  %>
										<img src="../images/avtar.jpg" alt="users view avatar"
											class="z-depth-4 circle" height="64" width="64">
										<% 
              }else{
            	  %>
										<img src="../admin-images/<%=rs.getString(7) %>"
											alt="users view avatar" class="z-depth-4 circle" height="64"
											width="64">
										<% 
              }}catch(Exception e){
            	  e.printStackTrace();
              }
              %>

										<div class="media-body">
											<h6 class="media-heading">

												<span class="grey-text">@</span> <span
													class="users-view-username grey-text"><%=rs.getString(3) %></span>
											</h6>

										</div>
									</div>
								</div>
								<div
									class="col s12 m5 quick-action-btns display-flex justify-content-end align-items-center pt-2">
									<a href="app-email.html" class="btn-small btn-light-indigo"><i
										class="material-icons">mail_outline</i></a> <a
										class="btn-small indigo btn modal-trigger" href="#modal1">Change
										Password</a> <a
										href="admin-profile-edit.jsp?admin_id=<%= rs.getInt(1) %>"
										class="btn-small indigo">Edit</a>
								</div>
							</div>
						</div>

						<!-- Change password modal -->
						<!-- Modal Trigger -->

						<!-- Modal Structure -->
						<div id="modal1" class="modal">
							<div class="modal-content">
								<h4>Change Password</h4>


								<div id="inline-form" class="card card card-default scrollspy">
									<div class="card-content">
										<form action="../AdminChangePasswordServlet" method="post">

											<input type="hidden" name="id" value="<%=id %>">
											<div class="row">
												<div class="input-field col m4 s6">
													<i class="material-icons prefix">lock_outline</i> <input
														id="icon_prefix1" name="current_pass" type="password"
														class="validate"> <label for="icon_prefix1">Current
														Password</label>
												</div>
												<div class="input-field col m4 s6">
													<i class="material-icons prefix">lock_outline</i> <input
														id="icon_password" name="new_pass" type="password">
													<label for="icon_password">New Password</label>
												</div>
												<div class="input-field col m4 s12">
													<div class="input-field col s12">
														<button class="btn cyan waves-effect waves-light"
															type="submit">
															<i class="material-icons left">lock_open</i> Reset
															Password
														</button>
													</div>
												</div>
											</div>
										</form>

									</div>
								</div>
							</div>
							<div class="modal-footer">
								<a href="#!"
									class="modal-action modal-close waves-effect waves-green btn-flat">Close</a>
							</div>
						</div>


						<!-- users view media object ends -->
						<!-- users view card data start -->
						<div class="card">
							<div class="card-content">
								<div class="row">
									<div class="col s12 m4">
										<table class="striped">
											<tbody>
												<tr>
													<td>Registered:</td>
													<td><%=rs.getString(8) %></td>
												</tr>
												<tr>
													<td>Latest Activity:</td>
													<td class="users-view-latest-activity"><%=rs.getString(9) %></td>
												</tr>
												<tr>
													<td>Verified:</td>
													<td class="users-view-verified">Yes</td>
												</tr>
												<tr>
													<td>Role:</td>
													<td class="users-view-role">Admin</td>
												</tr>

											</tbody>
										</table>
									</div>
									<div class="col s12 m8">
										<table class="responsive-table">
											<thead>
												<tr>
													<th>Module Permission</th>
													<th>Read</th>
													<th>Write</th>
													<th>Create</th>
													<th>Delete</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>Students</td>
													<td>Yes</td>
													<td>Yes</td>
													<td>Yes</td>
													<td>Yes</td>
												</tr>
												<tr>
													<td>Faculty</td>
													<td>Yes</td>
													<td>Yes</td>
													<td>Yes</td>
													<td>Yes</td>
												</tr>
												<tr>
													<td>Admin</td>
													<td>Yes</td>
													<td>No</td>
													<td>Yes</td>
													<td>Yes</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- users view card data ends -->

						<!-- users view card details start -->
						<div class="card">
							<div class="card-content">

								<div class="row">
									<div class="col s12">
										<h6 class="mb-2 mt-2">
											<i class="material-icons">error_outline</i> Personal Info
										</h6>
										<table class="striped">
											<tbody>
												<tr>
													<td>Id :</td>
													<td class="users-view-username"><%=rs.getInt(1)%></td>
												</tr>
												<tr>
													<td>Username:</td>
													<td class="users-view-username"><%=rs.getString(3) %></td>
												</tr>
												<tr>
													<td>Name:</td>
													<td class="users-view-name">
														<%
                if(rs.getString(2)==null){
                	%> - <% 
                }else{
                	%> <%=rs.getString(2) %> <% 
                }
                %>
													</td>
												</tr>
												<tr>
													<td>E-mail:</td>
													<td class="users-view-email"><%=rs.getString(4) %></td>
												</tr>


											</tbody>
										</table>


										<table class="striped">
											<tbody>

												<tr>
													<td>Country:</td>
													<td>India</td>
												</tr>
												<tr>
													<td>Languages:</td>
													<td>English</td>
												</tr>
												<tr>
													<td>Contact:</td>
													<td><%=rs.getString(5) %></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<% 
}
}catch(Exception e){
	e.printStackTrace();
}
%>



								<!-- </div> -->
							</div>
						</div>
						<!-- users view card details ends --

</div>
<!-- users view ends -->
					</div>
					<div class="content-overlay"></div>
				</div>
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