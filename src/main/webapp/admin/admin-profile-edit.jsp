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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Materialize is a Material Design Admin Template,It's modern, responsive and based on Material Design by Google.">
    <meta name="keywords" content="materialize, admin template, dashboard template, flat admin template, responsive admin template, eCommerce dashboard, analytic dashboard">
    <meta name="author" content="ThemeSelect">
    <title>Admin Edit | ERP</title>
    <link rel="apple-touch-icon" href="../app-assets/images/favicon/apple-touch-icon-152x152.png">
    <link rel="shortcut icon" type="image/x-icon" href="../app-assets/images/favicon/favicon-32x32.png">
    <link href="../icon.css?family=Material+Icons" rel="stylesheet">
    <!-- BEGIN: VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/vendors.min.css">
    <link rel="stylesheet" href="../app-assets/vendors/select2/select2.min.css" type="text/css">
    <link rel="stylesheet" href="../app-assets/vendors/select2/select2-materialize.css" type="text/css">
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
                <h5 class="breadcrumbs-title mt-0 mb-0"><span>Admin Profile Edit</span></h5>
              </div>
              <div class="col s12 m6 l6 right-align-md">
                <ol class="breadcrumbs mb-0">
                  <li class="breadcrumb-item"><a href="index.html">Home</a>
                  </li>
                  <li class="breadcrumb-item"><a href="#">Admin Profile</a>
                  </li>
                  <li class="breadcrumb-item active">Profile Edit
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="col s12">
          <div class="container">
            <!-- users edit start -->
<div class="section users-edit">
  <div class="card">
    <div class="card-content">
      <!-- <div class="card-body"> -->
      <ul class="tabs mb-2 row">
        <li class="tab">
          <a class="display-flex align-items-center active" id="account-tab" href="#account">
            <i class="material-icons mr-1">person_outline</i><span>Account</span>
          </a>
        </li>
        <li class="tab">
          <a class="display-flex align-items-center" id="information-tab" href="#information">
            <i class="material-icons mr-2">error_outline</i><span>Information</span>
          </a>
        </li>
      </ul>
      <div class="divider mb-3"></div>
      <div class="row">
        <div class="col s12" id="account">
          <!-- users edit media object start -->
          <div class="media display-flex align-items-center mb-2">
            <a class="mr-2" href="#">
              <img src="../images/avatar-11.png" alt="users avatar" class="z-depth-4 circle" height="64" width="64">
            </a>
            <div class="media-body">
              <h5 class="media-heading mt-0">Avatar</h5>
              <div class="user-edit-btns display-flex">
                <a href="#" class="btn-small indigo">Change</a>
                <a href="#" class="btn-small btn-light-pink">Reset</a>
              </div>
            </div>
          </div>
          <!-- users edit media object ends -->
          <!-- users edit account form start -->
          <form id="accountForm" action="../AdminEditProfileServlet" method="post">
            <div class="row">
              <div class="col s12 m6">
                <div class="row">
                  <div class="col s12 input-field">
                    <input id="username" name="username" type="text" class="validate" value="<%=a.getAdmin_username() %>" data-error=".errorTxt1">
                    <label for="username">Username</label>
                    <small class="errorTxt1"></small>
                  </div>
                 
                  
                </div>
              </div>
              <div class="col s12 m6">
                <div class="row">
                  <div class="col s12 input-field">
                    <select>
                      <option>Admin</option>
                    </select>
                    <label>Role</label>
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
                      <td>
                        <label>
                          <input type="checkbox" checked="">
                          <span></span>
                        </label>
                      </td>
                      <td>
                        <label>
                          <input type="checkbox">
                          <span></span>
                        </label>
                      </td>
                      <td>
                        <label>
                          <input type="checkbox">
                          <span></span>
                        </label>
                      </td>
                      <td>
                        <label>
                          <input type="checkbox" checked="">
                          <span></span>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <td>Faculty</td>
                      <td>
                        <label>
                          <input type="checkbox">
                          <span></span>
                        </label>
                      </td>
                      <td>
                        <label>
                          <input type="checkbox" checked="">
                          <span></span>
                        </label>
                      </td>
                      <td>
                        <label>
                          <input type="checkbox">
                          <span></span>
                        </label>
                      </td>
                      <td>
                        <label>
                          <input type="checkbox" checked="">
                          <span></span>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <td>Admin</td>
                      <td>
                        <label>
                          <input type="checkbox" checked="">
                          <span></span>
                        </label>
                      </td>
                      <td>
                        <label>
                          <input type="checkbox" checked="">
                          <span></span>
                        </label>
                      </td>
                      <td>
                        <label>
                          <input type="checkbox">
                          <span></span>
                        </label>
                      </td>
                      <td>
                        <label>
                          <input type="checkbox">
                          <span></span>
                        </label>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <!-- </div> -->
              </div>
              <div class="col s12 display-flex justify-content-end mt-3">
                <button type="submit" class="btn indigo">
                  Save changes</button>
                <button type="button" class="btn btn-light">Cancel</button>
              </div>
            </div>
          </form>
          <!-- users edit account form ends -->
        </div>
        <div class="col s12" id="information">
          <!-- users edit Info form start -->
          <form id="infotabForm">
            <div class="row">
              <div class="col s12 m6">
                <div class="row">
                  <div class="col s12 input-field">
                    <input id="phonenumber" type="text" class="validate" name="id" value="<%=a.getAdmin_id() %>" readonly="readonly">
                    <label for="phonenumber">Id</label>
                  </div>
                  <div class="col s12 input-field">
                    <input id="" type="text" class="validate" name="name" value="<%=a.getAdmin_name() %>" >
                    <label for="">Name</label>
                  </div>
                  <div class="col s12 input-field">
                    <input id="" type="text" class="validate" name="email" value="<%=a.getAdmin_email() %>" >
                    <label for="">Email_id</label>
                  </div>
                  
                </div>
              </div>
              <div class="col s12 m6">
                <div class="row">
                  
                 
                  <div class="col s12 input-field">
                    <select id="accountSelect">
                      <option>India</option>
                    </select>
                    <label>Country</label>
                  </div>
                  
                  <div class="col s12 input-field">
                    <input id="phonenumber" type="text" name="phone" class="validate" value="<%=a.getAdmin_phone() %>" >
                    <label for="phonenumber">Phone</label>
                  </div>
                  
                  <div class="col s12">
                    <label>Languages</label>
                    <select class="browser-default" id="users-language-select2" multiple="multiple">
                      <option value="English" selected="">English</option>
                      <option value="Spanish">Spanish</option>
                      <option value="French">French</option>
                      <option value="Russian">Russian</option>
                      <option value="German">German</option>
                      <option value="Arabic">Arabic</option>
                      <option value="Sanskrit">Sanskrit</option>
                    </select>
                  </div>
                  
                  
                </div>
              </div>
              
                            <div class="col s12 display-flex justify-content-end mt-1">
                <button type="submit" class="btn indigo">
                  Save changes</button>
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
    <script src="../app-assets/vendors/jquery-validation/jquery.validate.min.js">   </script>
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