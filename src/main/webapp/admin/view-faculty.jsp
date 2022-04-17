<%@page import="com.erp.DAO.CommanDAO"%>
<%@page import="java.sql.ResultSet"%>
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
 <!-- BEGIN: Head-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Materialize is a Material Design Admin Template,It's modern, responsive and based on Material Design by Google.">
    <meta name="keywords" content="materialize, admin template, dashboard template, flat admin template, responsive admin template, eCommerce dashboard, analytic dashboard">
    <meta name="author" content="ThemeSelect">
    <title>View Faculty | ERP</title>
    <link rel="apple-touch-icon" href="../app-assets/images/favicon/apple-touch-icon-152x152.png">
    <link rel="shortcut icon" type="image/x-icon" href=../app-assets/images/favicon/favicon-32x32.png">
    <link href="../icon.css?family=Material+Icons" rel="stylesheet">
    <!-- BEGIN: VENDOR CSS-->
    
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/data-tables/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/data-tables/extensions/responsive/css/responsive.dataTables.min.css">
    <!-- END: VENDOR CSS-->
    <!-- BEGIN: Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/themes/vertical-dark-menu-template/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/themes/vertical-dark-menu-template/style.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/page-users.min.css">
    <!-- END: Page Level CSS-->
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/custom/custom.css">
    <!-- END: Custom CSS-->
  </head>
  <!-- END: Head-->
  <body class="vertical-layout page-header-light vertical-menu-collapsible vertical-dark-menu preload-transitions 2-columns   " data-open="click" data-menu="vertical-dark-menu" data-col="2-columns">
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>
	 <%@ include file="_sidebar.jsp"%>
	 
	 <!-- BEGIN: Page Main-->
    <div id="main">
      <div class="row">
        <div id="breadcrumbs-wrapper" data-image="../images/breadcrumb-bg.jpg">
          <!-- Search for small screen-->
          <div class="container">
            <div class="row">
              <div class="col s12 m6 l6">
                <h5 class="breadcrumbs-title mt-0 mb-0"><span>Faculties List</span></h5>
              </div>
              <div class="col s12 m6 l6 right-align-md">
                <ol class="breadcrumbs mb-0">
                  <li class="breadcrumb-item"><a href="admin-index.jsp">Home</a>
                  </li>
                 
                  <li class="breadcrumb-item active">Faculties List
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="col s12">
          <div class="container">
           <!-- users list start -->
<section class="users-list-wrapper section">
  
  <div class="users-list-table">
    <div class="card">
      <div class="card-content">
        <!-- datatable start -->
        <div class="responsive-table">
          <table id="users-list-datatable" class="table">
            <thead>
              <tr>
                <th></th>
                <th>Id</th>
                <th>First Name</th>
                <th>Middle Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Education</th>
                <th>Action</th>
                <th>view</th>
              </tr>
            </thead>
           <tbody>
            <%
    CommanDAO cd=new CommanDAO();
    ResultSet rs= cd.viewAllFaculty();
        while(rs.next()){
        	%>
        	<tr>
                <td></td>
                
                <td><%=rs.getInt(1) %></td>
                <td><a href=""><%=rs.getString(2) %></a>
                </td>
                <td>
                	 <%=rs.getString(3) %>
               </td>
                <td><%=rs.getString(4) %></td>
                <td><%=rs.getString(5) %></td>
               	<td><%=rs.getString(6) %></td>
               	<td>
                <a href=""><i class="material-icons">delete</i></a>
               </td>
                <td><a href=""><i class="material-icons">remove_red_eye</i></a></td>
              </tr>
        	<% 
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
          <div class="content-overlay"></div>
        </div>
      </div>
    </div>
    <!-- END: Page Main-->
    
    <!-- END: Footer-->
    <!-- BEGIN VENDOR JS-->
    <script src="../app-assets/js/vendors.min.js"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <script src="../app-assets/vendors/data-tables/js/jquery.dataTables.min.js"></script>
    <script src="../app-assets/vendors/data-tables/extensions/responsive/js/dataTables.responsive.min.js"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN THEME  JS-->
    <script src="../app-assets/js/plugins.min.js"></script>
    <script src="../app-assets/js/search.min.js"></script>
    <script src="../app-assets/js/custom/custom-script.min.js"></script>
    <script src="../app-assets/js/scripts/customizer.min.js"></script>
    <!-- END THEME  JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="../app-assets/js/scripts/page-users.min.js"></script>
    <!-- END PAGE LEVEL JS-->

</body>
</html>