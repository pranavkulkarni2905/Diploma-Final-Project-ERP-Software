<%@page import="com.erp.model.Admin"%>
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
<head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Materialize is a Material Design Admin Template,It's modern, responsive and based on Material Design by Google.">
    <meta name="keywords" content="materialize, admin template, dashboard template, flat admin template, responsive admin template, eCommerce dashboard, analytic dashboard">
    <meta name="author" content="ThemeSelect">
    <title>Add Faculty | ERP</title>
    <link rel="apple-touch-icon" href="../app-assets/images/favicon/apple-touch-icon-152x152.png">
    <link rel="shortcut icon" type="image/x-icon" href="../app-assets/images/favicon/favicon-32x32.png">
    <link href="../icon.css?family=Material+Icons" rel="stylesheet">
    <!-- BEGIN: VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/vendors.min.css">
    <!-- END: VENDOR CSS-->
    <!-- BEGIN: Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/themes/vertical-dark-menu-template/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/themes/vertical-dark-menu-template/style.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/login.css">
    <!-- END: Page Level CSS-->
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/custom/custom.css">
    <!-- END: Custom CSS-->
    <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<%

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
    if(session.getAttribute("token")==null){
    //response.sendRedirect(request.getContextPath() + "/LogOut.jsp");

}
%>
</head>
<body class="vertical-layout page-header-light vertical-menu-collapsible vertical-dark-menu preload-transitions 1-column login-bg   blank-page blank-page" data-open="click" data-menu="vertical-dark-menu" data-col="1-column" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>
    <div>
    	<%@ include file="_sidebar.jsp"%>
    </div>
    <div style="margin-left:250px;" id="breadcrumbs-wrapper" data-image="../images/breadcrumb-bg.jpg">
          <!-- Search for small screen-->
          <div class="container">
            <div class="row">
              <div class="col s12 m6 l6">
                <h5 class="breadcrumbs-title mt-0 mb-0"><span>Add Faculty</span></h5>
              </div>
              <div class="col s12 m6 l6 right-align-md">
                <ol class="breadcrumbs mb-0">
                  <li class="breadcrumb-item"><a href="admin-index.jsp">Home</a>
                  </li>
                  <li class="breadcrumb-item"><a href="add-faculty.jsp">Faculty</a>
                  </li>
                  <li class="breadcrumb-item active">Add Faculty
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>
<div class="row" style="margin-left: 250px">
    <form class="col s12">
      <div class="row">
        <div class="input-field col s4">
          <input id="first_name" type="text" class="validate">
          <label for="first_name">First Name</label>
      </div>
      <div class="input-field col s4">
          <input id="middle_name" type="text" class="validate">
          <label for="middle_name">Middle Name</label>
        </div>
      <div class="input-field col s4">
          <input id="last_name" type="text" class="validate">
          <label for="last_name">Last Name</label>
        </div>
      </div>
      
      <div class="row">
       
        <div class="input-field col s4">
          <input id="email" type="email" class="validate">
          <label for="email">Email</label>
        </div>
        
        <div class="input-field col s4">
          <input id="education" type="text" class="validate">
          <label for="education">Education</label>
        </div>
        
        <div class="input-field col s4">
          <input id="password" type="password" class="validate">
          <label for="password">Password</label>
        </div>
      </div>
      <br><br><br>
      <center><a class="waves-effect waves-light  btn">ADD FACULTY</a></center>
    </form>
  </div>
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