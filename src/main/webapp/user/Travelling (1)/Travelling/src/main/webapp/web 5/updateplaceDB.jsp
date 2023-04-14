<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.*" %>

<%
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "");
 String s="//Users//snehajature//eclipse-workspace//Travelling//src//main//webapp//web 5//image";
 MultipartRequest m = new MultipartRequest(request,s,1024*1024*1024);
 
 String sql = "";
 PreparedStatement ps = null;
 int done = 0;
 
 String city = m.getParameter("city");
 String placename = m.getParameter("placename");
 String photo="images/"+m.getFilesystemName("image");
 String District = m.getParameter("District");
 String pin = m.getParameter("pin");
 String address = m.getParameter("address");
 String location = m.getParameter("location");
 String discription = m.getParameter("discription");
 

sql = "update AddPlace set city=?, placename=?, image=?, District=?, pin=?, address=?, location=?, discription=? where placename=?";
ps = con.prepareStatement(sql);	   
ps.setString(1, city);
ps.setString(2, placename);
ps.setString(3, photo	);
ps.setString(4, District);
ps.setString(5, pin);
ps.setString(6, address);
ps.setString(7, location);
ps.setString(8, discription);
ps.setString(9, placename);


 done = ps.executeUpdate(); 
 if(done>0){ %>
	 

<script>
     alert("Update Success!!");
     location.href="viewplace.jsp?placename=<%=placename%>";
    </script>
<%}else{ %>
<script>
     alert("Failed Try Again!!");
     location.href="updateplace.jsp?placename=<%=placename%>";
    </script>
<%} %>
