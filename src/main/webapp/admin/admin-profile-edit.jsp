<%@page import="com.erp.DAO.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>
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
<title>Admin Edit | ERP</title>
<link rel="apple-touch-icon"
	href="../app-assets/images/favicon/apple-touch-icon-152x152.png">
<link rel="shortcut icon" type="image/x-icon"
	href="../app-assets/images/favicon/favicon-32x32.png">
<link href="../icon.css?family=Material+Icons" rel="stylesheet">
<!-- BEGIN: VENDOR CSS-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/vendors/vendors.min.css">
<link rel="stylesheet"
	href="../app-assets/vendors/select2/select2.min.css" type="text/css">
<link rel="stylesheet"
	href="../app-assets/vendors/select2/select2-materialize.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/vendors/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/vendors/flag-icon/css/flag-icon.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/vendors/dropify/css/dropify.min.css">
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
	
<%try{
AdminDAO ad1=new AdminDAO();
int id=Integer.parseInt(request.getParameter("admin_id"));
a2=ad1.getSpecificAdminData(id);
}catch(Exception e){
	e.printStackTrace();
}
%>
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
								<span>Admin Profile Edit</span>
							</h5>
						</div>
						<div class="col s12 m6 l6 right-align-md">
							<ol class="breadcrumbs mb-0">
								<li class="breadcrumb-item"><a href="admin-index.jsp">Home</a></li>
								<li class="breadcrumb-item"><a href="admin-profile.jsp">Admin Profile</a></li>
								<li class="breadcrumb-item active">Profile Edit</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			 <%try{
			Boolean msg1 = (Boolean) session.getAttribute("upload-success");
			if (msg1==true) {
			%>
				<div class="card-alert card green">
                <div class="card-content white-text">
                   <p><i class="material-icons">check</i> Success : Profile Photo Uploaded Successfully.</p>
                </div>
                <button type="button" class="close white-text" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("upload-success");
			%>
			
			  <%try{
			Boolean msg1 = (Boolean) session.getAttribute("upload-fail");
			if (msg1==false) {
			%>
				<div class="card-alert card red lighten-5">
                <div class="card-content red-text">
                   <p><i class="material-icons">warning</i> Error : Something Went Wrong ,Try Again Later</p>
                </div>
                <button type="button" class="close red-text" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("upload-fail");
			%>
			<%try{
			Boolean msg1 = (Boolean) session.getAttribute("admin-profile-edit-success");
			if (msg1==true) {
			%>
				<div class="card-alert card green">
                <div class="card-content white-text">
                   <p><i class="material-icons">check</i> Success : Profile Updated Successfully.</p>
                </div>
                <button type="button" class="close white-text" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("admin-profile-edit-success");
			%>
			
			  <%try{
			Boolean msg1 = (Boolean) session.getAttribute("admin-profile-edit-fail");
			if (msg1==false) {
			%>
				<div class="card-alert card red lighten-5">
                <div class="card-content red-text">
                   <p><i class="material-icons">warning</i> Error : Something Went Wrong ,Try Again Later</p>
                </div>
                <button type="button" class="close red-text" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("admin-profile-edit-fail");
			%>
			
			<div class="col s12">
				<div class="container">
					<!-- users edit start -->
					<div class="section users-edit">
						<div class="card">
							<div class="card-content">
								<!-- <div class="card-body"> -->
								<ul class="tabs mb-2 row">
									<li class="tab"><a
										class="display-flex align-items-center active"
										id="account-tab" href="#account"> <i
											class="material-icons mr-1">person_outline</i><span>Account</span>
									</a></li>
									<li class="tab"><a class="display-flex align-items-center"
										id="information-tab" href="#information"> <i
											class="material-icons mr-2">error_outline</i><span>Information</span>
									</a></li>
								</ul>
								<div class="divider mb-3"></div>
								<div class="row">
									<div class="col s12" id="account">
										<!-- users edit media object start -->
										<div class="media display-flex align-items-center mb-2">
											<a class="mr-2" href="#"> 
											<%try{
              if(a2.getProfile_photo()==null){
            	  %>
            	 <img
												src="../images/avtar.jpg" alt="users avatar"
												class="z-depth-4 circle" height="64" width="64">
            	  <% 
              }else{
            	  %>
            	  <img
												src="../admin-images/<%=a2.getProfile_photo() %>" alt="users avatar"
												class="z-depth-4 circle" height="64" width="64">
 				  <% 
              }}catch(Exception e){
            	  e.printStackTrace();
              }
              %>
											
											
											
											</a>
											<div class="media-body">
												<h5 class="media-heading mt-0">Avatar</h5>
												<div class="user-edit-btns display-flex">
													<a class="btn-small indigo btn modal-trigger"
														href="#modal1">Change</a> <a href="#"
														class="btn-small btn-light-pink">Reset</a>
												</div>
											</div>
										</div>

										<!-- Modal Structure -->
																		<form action="../AdminProfileUploadServlet" method="post" enctype='multipart/form-data'>
											<div id="modal1" class="modal">
												<div class="modal-content">
													<h4>Upload Your Profile Photo</h4>
													<input type="hidden" name="id" value="<%=a2.getAdmin_id() %>">
													<div id="file-upload" class="section">
														<div class="row section">

															<div class="col s12 m8 l9">
																<input type="file" name="profile-photo" id="input-file-now"
																	accept="image/*" class="dropify" >
															</div>
														</div>
													</div>

												</div>
												<div class="modal-footer">
													<button type="submit"
														class="modal-action modal-close waves-effect waves-green btn-flat">Upload</button>
												</div>
											</div>
										</form>
										
										<form action="../AdminEditProfileServlet" method="post">



											<div class="row">
												<div class="col s12 m6">
													<div class="row">
														<div class="col s12 input-field">
														<input type="hidden" name="id" value="<%=a2.getAdmin_id() %>">
														<input type="hidden" name="name" value="<%=a2.getAdmin_name() %>">
														<input type="hidden" name="email" value="<%=a2.getAdmin_email() %>">
														<input type="hidden" name="phone" value="<%=a2.getAdmin_phone() %>">
															<input id="username" name="username" type="text"
																class="validate" value="<%=a2.getAdmin_username()%>"
																data-error=".errorTxt1"> <label for="username">Username</label>
															<small class="errorTxt1"></small>
														</div>


													</div>
												</div>
												<div class="col s12 m6">
													<div class="row">
														<div class="col s12 input-field">
															<select>
																<option>Admin</option>
															</select> <label>Role</label>
														</div>

													</div>
												</div>
												<div class="col s12">
													<table class="mt-1">
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
																<td>Student</td>
																<td><label> <input type="checkbox"
																		checked=""> <span></span>
																</label></td>
																<td><label> <input type="checkbox">
																		<span></span>
																</label></td>
																<td><label> <input type="checkbox">
																		<span></span>
																</label></td>
																<td><label> <input type="checkbox"
																		checked=""> <span></span>
																</label></td>
															</tr>
															<tr>
																<td>Faculty</td>
																<td><label> <input type="checkbox">
																		<span></span>
																</label></td>
																<td><label> <input type="checkbox"
																		checked=""> <span></span>
																</label></td>
																<td><label> <input type="checkbox">
																		<span></span>
																</label></td>
																<td><label> <input type="checkbox"
																		checked=""> <span></span>
																</label></td>
															</tr>
															<tr>
																<td>Admin</td>
																<td><label> <input type="checkbox"
																		checked=""> <span></span>
																</label></td>
																<td><label> <input type="checkbox"
																		checked=""> <span></span>
																</label></td>
																<td><label> <input type="checkbox">
																		<span></span>
																</label></td>
																<td><label> <input type="checkbox">
																		<span></span>
																</label></td>
															</tr>
														</tbody>
													</table>
													<!-- </div> -->
												</div>
												<div class="col s12 display-flex justify-content-end mt-3">
													<button type="submit" class="btn indigo">Save
														changes</button>
													<button type="button" class="btn btn-light">Cancel</button>
												</div>
											</div>
										</form>
										<!-- users edit account form ends -->
									</div>
									<div class="col s12" id="information">
										<!-- users edit Info form start -->
										<form id="infotabForm" action="../AdminEditProfileServlet"
											method="post" >
											<div class="row">
												<div class="col s12 m6">
												
												<input type="hidden" name="username" value="<%=a2.getAdmin_username() %>">
													<div class="row">
														<div class="col s12 input-field">
															<input id="phonenumber" type="text" class="validate"
																name="id" value="<%=a2.getAdmin_id()%>" readonly="readonly">
															<label for="">Id</label>
														</div>
														<div class="col s12 input-field">
															<input id="" type="text" class="validate" name="name"
																value="<%=a2.getAdmin_name()%>"> <label for="">Name</label>
														</div>
														<div class="col s12 input-field">
															<input id="" type="text" class="validate" name="email"
																value="<%=a2.getAdmin_email()%>"> <label for="">Email_id</label>
														</div>

													</div>
												</div>
												<div class="col s12 m6">
													<div class="row">


														<div class="col s12 input-field">
															<select id="accountSelect">
																<option>India</option>
															</select> <label>Country</label>
														</div>

														<div class="col s12 input-field">
															<input id="phonenumber" type="text" name="phone"
																class="validate" value="<%=a2.getAdmin_phone()%>"> <label
																for="phonenumber">Phone</label>
														</div>


														<div class="col s12 input-field">
															<select id="accountSelect">
																<option>English</option>
															</select> <label>Language</label>
														</div>

													</div>
												</div>

												<div class="col s12 display-flex justify-content-end mt-1">
													<button type="submit" class="btn indigo">Save
														changes</button>
													<button type="button" class="btn btn-light">Cancel</button>
												</div>
											</div>
										</form>
										<!-- users edit Info form ends -->
									</div>
								</div>
								<!-- </div> -->
							</div>
						</div>
					</div>
					

					<!-- users edit media object ends -->
					<!-- users edit account form start -->

					<!-- users edit ends -->
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
	<script src="../app-assets/vendors/select2/select2.full.min.js"></script>
	<script
		src="../app-assets/vendors/jquery-validation/jquery.validate.min.js">
		
	</script>
	<!-- END PAGE VENDOR JS-->
	<!-- BEGIN THEME  JS-->
	<script src="../app-assets/vendors/dropify/js/dropify.min.js"></script>
	<script src="../app-assets/js/plugins.min.js"></script>
	<script src="../app-assets/js/search.min.js"></script>
	<script src="../app-assets/js/custom/custom-script.min.js"></script>
	<script src="../app-assets/js/scripts/customizer.min.js"></script>
	<!-- END THEME  JS-->
	<!-- BEGIN PAGE LEVEL JS-->
	<script src="../app-assets/js/scripts/page-users.min.js"></script>
	<script src="../app-assets/js/scripts/advance-ui-modals.min.js"></script>
	<script src="../app-assets/js/scripts/ui-alerts.min.js"></script>
	<script src="../app-assets/js/scripts/form-file-uploads.min.js"></script>
	<!-- END PAGE LEVEL JS-->
</body>
</html>