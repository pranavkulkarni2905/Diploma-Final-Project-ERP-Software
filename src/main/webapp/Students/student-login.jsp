<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Student Login | ERP</title>
<head>
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
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <!--=======Font Open Sans======-->
  <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  <!--StyleSheet-->
  <link rel="stylesheet" href="css/style.css">
  <link href="../icon.css?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="../app-assets/vendors/vendors.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
    }

    body {
      background: #fff;
      font-family: 'open sans', sans-serif;
    }

    .forms {
      background: #fff;
      box-shadow: 0 0 3px #000;
      margin: 160px auto;
      max-width: 500px;
      overflow: hidden;
      position: relative;
      padding: 0;
    }

    .forms h1 {
      padding: 0 0 20px 0;
      font-size: 26px;
      color: #666;
      font-weight: lighter;
      text-align: center;
    }

    .forms form {
      padding: 30px;
    }

    #signup {
      display: none;
    }

    .forms .tab-group {
      list-style: none;
      padding: 0;
      margin: 0;
    }

    .forms .tab-group:after {
      content: "";
      display: table;
      clear: both;
    }

    .forms .tab-group li a {
      display: block;
      text-decoration: none;
      padding: 15px;
      background: #e5e6e7;
      color: #888;
      font-size: 20px;
      float: left;
      width: 50%;
      text-align: center;
      border-top: 3px solid transparent;
      -moz-transition: all 0.4s ease-in-out;
      -o-transition: all 0.4s ease-in-out;
      -webkit-transition: all 0.4s ease-in-out;
      transition: all 0.4s ease-in-out;
    }

    .forms .tab-group li a:hover {
      background: #dedfdf;
      color: #666;
    }

    .forms .tab-group .active a {
      background: #fff;
      color: #444;
      border-top: 3px solid #73cf41;
    }

    .forms input {
      font-size: 16px;
      display: block;
      width: 100%;
      padding: 10px 20px;
      border: 1px solid #ddd;
      color: #666;
      border-radius: 0;
      margin-bottom: 10px;
      -moz-transition: all 0.4s ease-in-out;
      -o-transition: all 0.4s ease-in-out;
      -webkit-transition: all 0.4s ease-in-out;
      transition: all 0.4s ease-in-out;
    }

    .forms input:focus {
      outline: 0;
      border-color: #2e5ed7;
    }

    .forms label {
      font-size: 16px;
      font-weight: normal;
      color: #666;
      margin-bottom: 5px;
      display: block;
    }

    .forms .button {
      border: 0;
      outline: none;
      border-radius: 0;
      padding: 10px 0;
      font-size: 18px;
      font-weight: 300;
      text-transform: uppercase;
      letter-spacing: 2px;
      background: blue;
      color: #ffffff;
      cursor: pointer;
      -moz-transition: all 0.4s ease-in-out;
      -o-transition: all 0.4s ease-in-out;
      -webkit-transition: all 0.4s ease-in-out;
      transition: all 0.4s ease-in-out;
    }

    .forms .button:hover,
    .button:focus {
      background: turquoise;
    }

    .text-p {
      text-align: right;

    }

    .text-p a {
      color: #1383ea;
      text-decoration: none;
    }
    .msgFail{
    	color : darkred;
    	background-color: pink;
    	border:2px solid red;
    }
    .msgFail button
    {
    	color : darkred;
    	background-color: pink;
    	margin-left:400px;
    }
    

  </style>
</head>

<body>

  <div class="forms">
    <ul class="tab-group">
      <li class="tab active"><a href="#login">Log In</a></li>
      <li class="tab"><a href="#signup">Login With OTP</a></li>
    </ul>
    <form action="../StudentLoginServlet" id="login" method="post">
      <h1>Login with Credentials</h1>
      <div class="input-field">
      <%try{
			Boolean msg1 = (Boolean) session.getAttribute("student-login-fail");
			if (msg1==false) {
			%>
				<div class="msgFail">
                
                   <i class="material-icons">error</i> Sorry : Invalid Credentials!
                <button type="button" class="close red-text" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("student-login-fail");
			%>
				 
				 <%try{
			Boolean msg1 = (Boolean) session.getAttribute("student-login-success");
			if (msg1==true) {
			%>
				<div class="card-alert card green">
                <div class="card-content white-text">
                   <p><i class="material-icons">check</i> Congratulations : Login Succeed</p>
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
			session.removeAttribute("student-login-success");
			%>
			 <%try{
			Boolean msg1 = (Boolean) session.getAttribute("student-logout-msg");
			if (msg1==true) {
		
				%>
				<div class="card-alert card green">
                <div class="card-content white-text">
                   <p><i class="material-icons">check</i> Success: You Have Been Successfully Logged Out.</p>
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
			session.removeAttribute("student-logout-msg");
			%>
        <label for="email">Email</label>
        <input type="email" name="uname" required="required" />
        <label for="password">Password</label>
        <input type="password" name="password" required />
        <input type="submit" value="Login" class="button" />
        <p class="text-p"> <a href="#">Forgot password?</a> </p>
      </div>
    </form>
    <form action="#" id="signup">
      <h1>Login With OTP</h1>
      <div class="input-field">
        <label for="email" id="lbl1">Mobile Number</label>
        <input type="number" id="mob" name="number" required="number" />

        <input type="submit" id="send" onclick="TestsFunction()" value="Send Otp" disabled class="button" />
        <label for="email" id="lbl2" style="display: none;">Enter OTP <small>(6 Digits)</small></label>
        <input type="number" id="otp" name="number" minlength="6" maxlength="6" style="display: none;"
          onKeyPress="if(this.value.length==6) return false;" required="number" />

        <input type="submit" id="verify" value="Verify" class="button" style="display: none;" disabled />
      </div>
    </form>
  </div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script type="text/javascript">
    $(document).ready(function () {
      $('.tab a').on('click', function (e) {
        e.preventDefault();

        $(this).parent().addClass('active');
        $(this).parent().siblings().removeClass('active');

        var href = $(this).attr('href');
        $('.forms > form').hide();
        $(href).fadeIn(500);
      });
    });

    function enableNum() {
      document.getElementById("verify").disabled = false;
    }

    function TestsFunction() {
      var T = document.getElementById("otp");
      var T1 = document.getElementById("verify");
      var T2 = document.getElementById("lbl2");

      var a = document.getElementById("lbl1");
      var b = document.getElementById("mob");
      var c = document.getElementById("send");

      T.style.display = "block";  // <-- Set it to block
      T1.style.display = "block";
      T2.style.display = "block";

      a.style.display = "none";
      b.style.display = "none";
      c.style.display = "none";
    }


    $('#mob').click(function () {
      if ($('#send').is(':disabled')) {
        $('#send').removeAttr('disabled');
      } else {
        $('#send').attr('disabled', 'disabled');
      }
    });

    $('#otp').click(function () {
      if ($('#verify').is(':disabled')) {
        $('#verify').removeAttr('disabled');
      } else {
        $('#verify').attr('disabled', 'disabled');
      }
    });
  </script>
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