<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>My Trip </title>

<jsp:include page="link.jsp"></jsp:include>
</head>
<body>
	<!-- banner -->
	<div class="banner">
		<div class="top-banner">
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
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1>
						<a href="index.jsp">My Trip</a>
					</h1>
				</div>
				<div class="top-nav">
				<nav class="navbar navbar-default">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">Menu						
							</button>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a class="active" href="index.jsp">Home</a></li>
								<li><a href="about.jsp">About</a></li>
								<li><a href="places.jsp">Places</a></li>
								<li><a href="gallery.jsp">Gallery</a></li>
								<li><a href="contact.jsp">Contact</a></li>
								
								<div class="clearfix"> </div>
							</ul>	
						</div>	
					</nav>		
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<div id="kb" class="carousel kb_elastic animate_text kb_wrapper" data-ride="carousel" data-interval="6000" data-pause="hover">
            <!-- Wrapper for Slides -->
            <div class="carousel-inner" role="listbox">
                <!-- First Slide -->
                <div class="item active">
					<div class="slider">
						<div class="carousel-caption kb_caption slider-grid">
							<h3>Goa</h3>

						</div>
					</div>
                </div>

                <!-- Second Slide -->
                <div class="item">
					<div class="slider slider1">
						<div class="carousel-caption kb_caption kb_caption_right slider-grid">
							<h3>Hawaii</h3>
							
						</div>
					</div>
                </div>

                <!-- Third Slide -->
                <div class="item">
					<div class="slider slider2">
						<div class="carousel-caption kb_caption kb_caption_center slider-grid">
						   <h3>Hong Kong</h3>
							
						</div>
					</div>
                </div>

            </div>
            <!-- Navigation Buttons -->
            <!-- Left Button -->
            <a class="left carousel-control kb_control_left" href="#kb" role="button" data-slide="prev">
                <span class="fa fa-angle-left kb_icons" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <!-- Right Button -->
            <a class="right carousel-control kb_control_right" href="#kb" role="button" data-slide="next">
                <span class="fa fa-angle-right kb_icons" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
    </div> 
	<!-- about -->
	<div class="about">
		<div class="container">
			<div class="w3l-about-heading">
				<h2>Top Tours</h2>
			</div>
			
			<div class="about-grids" id="state">
			
			
			
			</div>
			
			
				</div>
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
				<div class="about-grid-info about-grid-info`+i+` effect-1">
					<h4><a href="placedetail.jsp?state=`+state[i]+`" style="text-decoration:none;color:white;">`+ state[i] +` </a></h4>
				</div>
			</div>
			
		  `;
		  
		   document.getElementById("state").innerHTML = text; 
		   
	  }
	  
	  
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>	
</html>