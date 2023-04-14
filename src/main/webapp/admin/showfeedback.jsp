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
					
					
					<h1 style="text-align:center;">Feedback</h1><br><br>
					<table class="table table-bordered" id="myTable">
					    <tr>
					    <th>Sr No.</th>
					    <th>Name</th>
					     <th>Email</th>
					     <th>Phone</th>
					     <th>Message</th>
					     <th>Delete</th>
					     
					     
					    </tr>
					    <tbody>
					    <tr>
					    
					        <%
					      Class.forName("com.mysql.jdbc.Driver");
					      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
					      String sql ="select * from feedback";
					      PreparedStatement ps = con.prepareStatement(sql);
					      ResultSet rs = ps.executeQuery();
					      int i = 1;
					      while(rs.next()){
					    %>
					    <td><%=i %></td>
					    <td><%=rs.getString("name")%></td>
					    <td><%=rs.getString("email") %> </td> 
					    <td><%=rs.getString("phone")%></td>
					    <td><%=rs.getString("message") %> </td>
                        <td><a href="deletefeedback.jsp?Id=<%=rs.getString("Id")%>" class="btn btn-danger btn-sm">Delete </a></td>
					    					    
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
		
</body>
</html>