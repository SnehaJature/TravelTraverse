<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.*" %>

<%
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
 String s="/Users/snehajature/eclipse-workspace/travel1/src/main/webapp/admin/image";
 MultipartRequest m = new MultipartRequest(request,s,1024*1024*1024);
 
 String sql = "";
 PreparedStatement ps = null;
 int done = 0;
 
 String State = m.getParameter("state");
 String city = m.getParameter("city");
 String CategoryName = m.getParameter("categoryname");
 String placename = m.getParameter("placename");
 String photo="image/"+m.getFilesystemName("image");
 String photo1=m.getFilesystemName("image");
 String District = m.getParameter("District");
 String pin = m.getParameter("pin");
 String address = m.getParameter("address");
 String location = m.getParameter("location");
 String discription = m.getParameter("discription");
 String placeid = m.getParameter("placeid");
 
 if(photo1==null){
	 
	 sql = "update AddPlace set State=?, city=?, CategoryName=?, placename=?, District=?, pin=?, address=?, location=?, discription=? where placeid=?";
	 ps = con.prepareStatement(sql);	
	 ps.setString(1, State);
	 ps.setString(2, city);
	 ps.setString(3, CategoryName);
	 ps.setString(4, placename);
	 //ps.setString(5, photo);
	 ps.setString(5, District);
	 ps.setString(6, pin);
	 ps.setString(7, address);
	 ps.setString(8, location);
	 ps.setString(9, discription);
	 ps.setString(10, placeid);
	 done = ps.executeUpdate();
	 
 }else{
	 sql = "update AddPlace set State=?, city=?, CategoryName=?, placename=?, image=?, District=?, pin=?, address=?, location=?, discription=? where placeid=?";
	 ps = con.prepareStatement(sql);	
	 ps.setString(1,State);
	 ps.setString(2, city);
	 ps.setString(3, CategoryName);
	 ps.setString(4, placename);
	 ps.setString(5, photo);
	 ps.setString(6, District);
	 ps.setString(7, pin);
	 ps.setString(8, address);
	 ps.setString(9, location);
	 ps.setString(10, discription);
	 ps.setString(11, placeid);
	 done = ps.executeUpdate();
 }
 
 if(done>0){ %>
	 

<script>
     alert("Update Success!!");
     location.href="viewplace.jsp?placeId=<%=placeid%>";
    </script>
<%}else{ %>
<script>
     alert("Failed Try Again!!");
     location.href="updateplace.jsp?placeId=<%=placeid%>";
    </script>
<%} %>
