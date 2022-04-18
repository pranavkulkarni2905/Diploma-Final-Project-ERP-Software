<%@page import="java.sql.ResultSet"%>
<%@page import="com.erp.DAO.CommanDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Verify Email | ERP</title>
<script src="sweetalert2.all.min.js"></script>
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
     @import url(http://fonts.googleapis.com/css?family=Calibri:400,300,700);

body {
    background-color: lightyellow;
    font-family: 'Calibri', sans-serif !important
}
h5{
    color: red;
}

.mt-100 {
    margin-top: 100px
}

.container {
    margin-top: 200px
}

.card {
    position: relative;
    display: flex;
    width: 450px;
    margin-left: 500px;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid #d2d2dc;
    border-radius: 4px;
    height: 14pc;
    -webkit-box-shadow: 0px 0px 5px 0px rgb(249, 249, 250);
    -moz-box-shadow: 0px 0px 5px 0px rgba(212, 182, 212, 1);
    box-shadow: 0px 0px 5px 0px rgb(161, 163, 164)
}

.card .card-body {
    padding: 1rem 1rem
}

.card-body {
    flex: 1 1 auto;
    padding: 1.25rem
}

p {
    font-size: 14px
}

h4 {
    margin-top: 18px
}

.cross {
    padding: 10px;
    color: #d6312d;
    cursor: pointer
}

.continue:focus {
    outline: none
}

.continue {
    border-radius: 5px;
    text-transform: capitalize;
    font-size: 13px;
    padding: 8px 19px;
    cursor: pointer;
    color: #fff;
    background-color: #D50000
}

.continue:hover {
    background-color: #D32F2F !important
}
</style>
</head>
<body>
<%!String status=null; %>
<%try{
int id=Integer.parseInt(request.getParameter("faculty_id"));

CommanDAO cd=new CommanDAO();
ResultSet rs=cd.getFacultyById(id);
if(rs.next()){
	status=rs.getString(16);
}
if(status.equals("No")){
	%>
	<script type="text/javascript">
					Swal.fire('Congrats.!!  ',
				'Email Verified Successfully..&#128077 '
					, 'success')
				</script>
	<div class="container d-flex justify-content-center">
    <div class="row">
        <div class="col-md-6"> <button type="button" class="btn btn-lg btn-warning" data-toggle="modal" data-target="#myModal"></button> </div>
    </div>
</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
        <div class="card">
            <div class="text-right cross"> <i class="fa fa-times"></i> </div>
            <div class="card-body text-center"> 
                <h4>CONGRATULATIONS!</h4>
                <p>You email id Has Been Verified !</p>
                <h5>Click Here to Login Your Account</h5>
            </div>
        </div>
    </div>
</div>
	<%
	
int i=cd.updateVerifiedStatus(id);
}else{
	%>
	<script type="text/javascript">
			Swal.fire('Warning !!', 'Link Expired, Your email is verified already.', 'warning').then(function() {
			    window.location = "faculty/faculty-login.jsp";
			});

		</script>
	<% 
}
}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>