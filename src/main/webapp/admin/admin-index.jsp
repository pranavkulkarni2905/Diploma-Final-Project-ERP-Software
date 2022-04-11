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
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard | Index</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <title></title>
    <link rel="apple-touch-icon" href="../app-assets/images/favicon/apple-touch-icon-152x152.png">
    <link rel="shortcut icon" type="image/x-icon" href="../app-assets/images/favicon/favicon-32x32.png">
    <link href="../icon.css?family=Material+Icons" rel="stylesheet">
    <!-- BEGIN: VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/vendors.min.css">
    <!-- END: VENDOR CSS-->
    <!-- BEGIN: Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/themes/vertical-dark-menu-template/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/themes/vertical-dark-menu-template/style.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/dashboard.min.css">
    <!-- END: Page Level CSS-->
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/custom/custom.css">
    <!-- END: Custom CSS-->
    
    <script src="sweetalert2.all.min.js"></script>
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>
<%@ include file="_sidebar.jsp"%>

 	<%try{
			Boolean msg1 = (Boolean) session.getAttribute("admin-login-success");
			if (msg1==true) {
			%>
				<script type="text/javascript">
			Swal.fire('Congrats.!! ', 'You Have Been Logged In Successfully.',
					'success')
		</script>
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("admin-login-success");
			%>

 







<%@ include file="_theme-setting.jsp"%>

 <!-- BEGIN VENDOR JS-->
    <script src="../app-assets/js/vendors.min.js"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
     <script src="../../../app-assets/vendors/sweetalert/sweetalert.min.js"></script>
    <script src="../app-assets/vendors/chartjs/chart.min.js"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN THEME  JS-->
    <script src="../app-assets/js/plugins.min.js"></script>
    <script src="../app-assets/js/search.min.js"></script>
    <script src="../app-assets/js/custom/custom-script.min.js"></script>
    <script src="../app-assets/js/scripts/customizer.min.js"></script>
    <!-- END THEME  JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="../app-assets/js/scripts/dashboard-ecommerce.min.js"></script>\
    <script src="../../../app-assets/js/scripts/extra-components-sweetalert.min.js"></script>
    <!-- END PAGE LEVEL JS-->
</body>
</html>