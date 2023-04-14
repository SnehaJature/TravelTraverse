<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>

<%

 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
 
String s="/Users/snehajature/eclipse-workspace/travel1/src/main/webapp/admin/image";
MultipartRequest m = new MultipartRequest(request,"/Users/snehajature/eclipse-workspace/travel1/src/main/webapp/admin/image",1024*1024*1024);
 %>
 <%
 String sql = "insert into AddPlace(state,city,CategoryName,placename,image,District,pin,address,location,discription) values(?,?,?,?,?,?,?,?,?,?)";
 PreparedStatement ps = con.prepareStatement(sql) ;
 
 String State = m.getParameter("state");
 String city = m.getParameter("city");
 String categoryname = m.getParameter("categoryname");
 String placename = m.getParameter("placename");
String photo="image/"+m.getFilesystemName("image");
String District = m.getParameter("District");
String pin = m.getParameter("pin");
String address = m.getParameter("address");
String location = m.getParameter("location");
String discription = m.getParameter("discription");

 
 
ps.setString(1,State);
 ps.setString(2, city);
 ps.setString(3,categoryname);
 ps.setString(4, placename);
 ps.setString(5, photo	);
 ps.setString(6, District);
 ps.setString(7, pin);
 ps.setString(8, address);
 ps.setString(9, location);
 ps.setString(10, discription);
 
 int done=ps.executeUpdate();	
 if(done>0){%>
 <script type="text/javascript">
 alert("Added Successfully!!!!!");
 location.href="addplace.jsp";
 </script>
 <%}
 else{%>
 <script type="text/javascript">
 alert("Fail try again!!!");
location.href="addplace.jsp";
</script>
<%}
 %>
  
