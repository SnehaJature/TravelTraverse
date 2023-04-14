<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Easy Travelling</title>
<jsp:include page="link.jsp"></jsp:include>
</head>
<body>

<div class="container" style="margin-top:120px;background-image:">
		<div class="row">
			<div class="col-md-offset-3 col-md-6">
			<br><br>
			<h1 style="text-align: center;" class="text-danger"> Easy Travelling </h1><br>
			
			<h3 style="text-align: center;"> Admin Login</h3><br>
			
			     <form action="logincheck.jsp" method="post">
			     
			     <div class="form-group">
			        <input type='email' name='email' id='email' placeholder="Enter Email" class="form-control" required>
			     </div> 
			     
			     <div class="form-group">
			        <input type='password' name='password' id='password' placeholder="Enter Password" class="form-control" required>
			     </div> 
			     
			     <input type="submit" value="login" class="brn btn-info">
			       
			     </form>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>