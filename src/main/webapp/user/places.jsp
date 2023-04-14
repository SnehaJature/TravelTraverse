<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@  page import="java.sql.*" %>
 
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
<head>
<title>My Trip a Travel Category Flat Bootstrap responsive Website Template | Home :: w3layouts</title>
<jsp:include page="link.jsp"></jsp:include>
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
		<!-- about -->
	

			<div class="w3l-about-heading">
				<h2>Top Tours</h2>
				
			</div>
			
			<div class="about-grids" id="state">
			
			
			
			</div>
			
			

	<script type="text/javascript">
	
	  let state = [ "Andhra Pradesh",
        "Arunachal Pradesh",
        "Assam",
        "Bihar",
        "Chhattisgarh",
        "Goa",
        "Gujarat",
        "Haryana",
        "Himachal Pradesh",
        "Jammu & Kashmir",
        "Jharkhand",
        "Karnataka",
        "Kerala",
        "Madhya Pradesh",
        "Maharashtra",
        "Manipur",
        "Meghalaya",
        "Mizoram",
        "Nagaland",
        "Odisha",
        "Punjab",
        "Rajasthan",
        "Sikkim",
        "Tamil Nadu",
        "Telangana",
        "Tripura",
        "Uttarakhand",
        "Uttar Pradesh",
        "West Bengal",
        "Andaman & Nicobar",
        "Chandigarh",
        "Dadra & Nagar",
        "Daman & Diu",
        "Delhi",
        "Lakshadweep",
        "Puducherry"];
	  
	  
	   let text = "";
	  for(let i = 0; i< state.length; i++){
		  
		   text += `
			  <div class="col-md-3 about-grid">
				<div class="about-grid-info effect-1">
					<h4><a href="placedetail.jsp?state=`+state[i]+`" style="text-decoration:none;color:white;">`+ state[i] +` </a></h4>
				</div>
			</div>
			
		  `;
		  
		   document.getElementById("state").innerHTML = text; 
		   
	  }
	  
	  
	</script>
		
		
		</div>
		</div>
		</div>
		
		<jsp:include page="footer.jsp"></jsp:include>
    
   </body>
   </html>
 
