<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@  page import="java.sql.*" %>
 
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
<head>
<title>My Trip</title>
<jsp:include page="link.jsp"></jsp:include>
<style type="text/css">
  #content{
    text-align : left;
    line-height : 1.8;
    margin-left : 70px;
  }
</style>
</head>
<body>
  
  <div class="banner about-bg">
		<div class="top-banner about-top-banner">
			<div class="container">
				<div class="top-banner-left">
					<ul>
						<li><i class="fa fa-phone" aria-hidden="true"></i> +91 8830 2640 74</li>
						<li><a href="mailto:example@email.com"><i class="fa fa-envelope" aria-hidden="true"></i> mahadevilokhande610@gmail.com</a></li>
					</ul>
				</div>
				<div class="top-banner-right">
					<ul>
						<li><a class="facebook" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a class="facebook" href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						<li><a class="facebook" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						<li><a class="facebook" href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<jsp:include page="header.jsp"></jsp:include>
		
				<div class="clearfix"> </div>
			</div>
			
			
    <div id="page-wrapper">
	<div class="main-page">
	<div class="container">
		
		
		<div class="col-md-12 ">
				
			 <%
					      Class.forName("com.mysql.jdbc.Driver");
					      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
					      String sql = "select A.*, C.* from AddPlace as A inner join Category as C on A.CategoryName = C.CategoryId where state=?";
					      PreparedStatement ps = con.prepareStatement(sql);
					      ps.setString(1, request.getParameter("state"));
					      ResultSet rs = ps.executeQuery();
					
					      while(rs.next()){
					    %>
			<div class="row" style="margin : 3%;">
		
			<div class="col-md-6">
			<img src="../admin/<%=rs.getString("image")%>" height="500" width="500">
			</div>
			
			<div class="col-md-6">
			<h1 style="text-align: center;"><%=rs.getString("placename") %></h1>
			<div id="content">
			State : <a style="text-decoration:none;color:black;"><%=rs.getString("state")%></a><br>
			City : <a style="text-decoration:none;color:black;"><%=rs.getString("city")%></a><br>
			Address : <a style="text-decoration:none;color:black;"><%=rs.getString("address")%></a><br>
			Category : <a style="text-decoration:none;color:black;"><%=rs.getString(13)%></a><br>
			Location : <a style="text-decoration:none;color:black;"><%=rs.getString("location")%></a><br>
			District : <a style="text-decoration:none;color:black;"><%=rs.getString("District")%></a><br>
			Pin : <a style="text-decoration:none;color:black;"><%=rs.getString("pin")%></a><br>
			Description : <a style="text-decoration:none;color:black;"><%=rs.getString("discription")%></a><br>
		  </div>
		  </div>
		  </div>
			 <%}
			 %>
			
			  
			
			    
		</div>
		</div>
		</div>
		</div>
		
		<jsp:include page="footer.jsp"></jsp:include>
    
   </body>
   </html>
 
