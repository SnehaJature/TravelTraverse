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
			<div class="container" style="margin-left:200px;">
				
				<div class="row">
					<div class="col-md-8 table-responsive">
					
					
					<br><h1 style="text-align: center;">Category Details</h1><br><br>
					<input type="search" id="myInput" placeholder="Search Any Keyword" class="form-control">
					   <table class="table table-bordered" id="myTable">
					    <tr>
					    
					    <th>Sr No.</th>
					     <th>Category Name</th>
					     
					    </tr>
					    <tbody id="myTable">
					    <tr>
					    
					        <%
					      Class.forName("com.mysql.jdbc.Driver");
					      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
					      String sql = "select * from Category ";
					      PreparedStatement ps = con.prepareStatement(sql);
					      ResultSet rs = ps.executeQuery();
					      int i = 1;
					      while(rs.next()){
					    %>
					    
					    <td><%=rs.getString("categoryId") %> </td> 
					    <td><%=rs.getString("categoryname") %> </td> 
					    
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