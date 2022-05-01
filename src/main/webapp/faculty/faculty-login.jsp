<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Faculty Login | ERP</title>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <!--=======Font Open Sans======-->
  <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  <!--StyleSheet-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="sweetalert2.all.min.js"></script>
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>




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
    #snackbar {
  visibility: hidden;
  min-width: 250px;
  margin-left: -125px;
  background-color: #333;
  color: #fff;
  text-align: center;
  border-radius: 2px;
  padding: 16px;
  position: fixed;
  z-index: 1;
  left: 50%;
  bottom: 30px;
  font-size: 17px;
}

#snackbar.show {
  visibility: visible;
  -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
  animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@-webkit-keyframes fadein {
  from {bottom: 0; opacity: 0;} 
  to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
  from {bottom: 0; opacity: 0;}
  to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
  from {bottom: 30px; opacity: 1;} 
  to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
  from {bottom: 30px; opacity: 1;}
  to {bottom: 0; opacity: 0;}
}
  </style>
</head>

<body>
 
<%try{
			Boolean msg1 = (Boolean) session.getAttribute("otp-sent-success");
			if (msg1==true) {
			%>
				<div id="snackbar">OTP Has Been Sent to your mobile no successfuly..</div>
				<script>

  var x = document.getElementById("snackbar");
  x.className = "show";
  setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);

</script>
	
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("otp-sent-success");
			%>
			
			<%try{
			Boolean msg1 = (Boolean) session.getAttribute("otp-sent-success");
			if (msg1==true) {
			%>
				<script type="text/javascript">

				Swal.fire({
				    title: "Enter 6 Digit OTP",
				    text: "Enter OTP",
				    input: 'number',
				    
				    showCancelButton: true        
				}).then((result) => {
				    if (result.value) {
				    	window.location = "../FacultyOTPVerifyServlet?otp="+result.value;
				    }
				}); 

				</script>
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("otp-sent-success");
			%>
			
<%try{
			Boolean msg1 = (Boolean) session.getAttribute("faculty-login-fail");
			if (msg1==false) {
			%>
				<script type="text/javascript">
					Swal.fire('Error.!!  ',
				'Invalid Username and Password.'
					, 'warning')
				</script>
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("faculty-login-fail");
			%>
			
<%try{
			Boolean msg1 = (Boolean) session.getAttribute("verified-fail");
			if (msg1==false) {
			%>
				<script type="text/javascript">
					Swal.fire('Error.!!  ',
				'Email Not Verified, Verify Before Login.'
					, 'warning')
				</script>
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("verified-fail");
			%>
			
			<%try{
			Boolean msg1 = (Boolean) session.getAttribute("invalid-phone");
			if (msg1==false) {
			%>
				<script type="text/javascript">
					Swal.fire('Error.!!  ',
				'Entered Number Is Invalid'
					, 'warning')
				</script>
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("invalid-phone");
			%>
			<%try{
			Boolean msg1 = (Boolean) session.getAttribute("not-exist-phone");
			if (msg1==false) {
			%>
				<script type="text/javascript">
					Swal.fire('Error.!!  ',
				'Entered Number does not exist..'
					, 'warning')
				</script>
			<%
			}
       	
			}catch(Exception e){
				//e.printStackTrace();
			}
			session.removeAttribute("not-exist-phone");
			%>
			
  <div class="forms">
    <ul class="tab-group">
      <li class="tab active"><a href="#login">Log In</a></li>
      <li class="tab"><a href="#signup">Login With OTP</a></li>
    </ul>
    <form action="../FacultyLoginServlet" method="post" id="login">
      <h1>Login with Credentials</h1>
      <div class="input-field">
        <label for="email">Username</label>
        <input type="email" name="uname" required="required" />
        <label for="password">Password</label>
        <input type="password" name="password" required />
        <input type="submit" value="Login" class="button" />
        <p class="text-p"> <a href="#">Forgot password?</a> </p>
      </div>
    </form>
    <form action="../FacultyLoginServlet2" id="signup">
      <h1>Login With OTP</h1>
      <div class="input-field">
        <label for="email" id="lbl1">Mobile Number</label>
        <input type="number" maxlength="10" min="10" id="mob" name="phone" required="required" />

        <input type="submit" id="send" class="button" />
       
        
       
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


   
  </script>
</body>
<!-- onclick="TestsFunction()" value="Send Otp" disabled-->
</html>