<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Easy Travelling</title>
<jsp:include page="link.jsp"></jsp:include>

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>



<!-- main content start-->
		 <div id="page-wrapper">
			<div class="main-page">
			<div class="container">
				
				<div class="row">
					<div class="col-md-12 table-responsive">
					
					
					<h1 style="text-align:center;">Places Details</h1><br><br>
					<input type="search" id="myInput" placeholder="Search Any Keyword" class="form-control">
					   <table class="table table-bordered" id="myTable">
					    <tr>
					    <th>Sr No.</th>
					    <th>State</th>
					     <th>City</th>
					     <th>Category Name</th>
					     <th>Place Name</th>
					     <th>Image</th>
					     <th>District</th>
					     <th>Pin Code</th>
					     <th>Address</th>
					     <th>Location</th>
					     <th>Description</th>
					     <th>Update</th>
					     <th>Delete</th>
					    </tr>
					    <tbody id="myTable">
					    <tr>
					    
					        <%
					      Class.forName("com.mysql.jdbc.Driver");
					      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
					      String sql = "select A.*, C.* from AddPlace as A inner join Category as C on A.CategoryName = C.CategoryId";
					      PreparedStatement ps = con.prepareStatement(sql);
					      ResultSet rs = ps.executeQuery();
					      int i = 1;
					      while(rs.next()){
					    %>
					    <td><%=i %></td>
					    <td><%=rs.getString("state")%></td>
					    <td><%=rs.getString("city") %> </td> 
					    <td><%=rs.getString(13)%></td>
					    <td><%=rs.getString("placename") %> </td> 
					    <td> <img src="<%=rs.getString("image")%>" height="100" width="100"> </td>
					    <td><%=rs.getString("District") %> </td>  
					    <td><%=rs.getString("pin") %> </td> 
					    <td><%=rs.getString("address") %> </td> 
					    <td><%=rs.getString("location") %> </td>
					    <td><%=rs.getString("discription") %> </td> 
					    <td><a href="updateplace.jsp?placeId=<%=rs.getString("placeid")%>">Update </a></td>
					    <td><a href="deleteplace.jsp?placename=<%=rs.getString("placename")%>" class="btn btn-danger btn-sm">Delete </a></td>
					    
					    
					    </tr>
					    
					    <%i++;} %>
					    </tbody>
					   </table>
					   
					</div>
					    
				</div>
				</div>
				</div>
				</div>
				
<jsp:include page="footer.jsp"></jsp:include>	
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>			
</body>
</html>