<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>

<%
/*
String city = request.getParameter("city");
String placename = request.getParameter("placename");
String image = request.getParameter("image");
String District = request.getParamater("District");
String pin = request.getParameter("pin");
String address = request.getParameter("address");
String location = request.getParameter("location");
String description = request.getParameter("description");
*/
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "");
 
String s="//Users//snehajature//eclipse-workspace//Travelling//src//main//webapp//web 5//image";
MultipartRequest m = new MultipartRequest(request,s,1024*1024*1024);
 %>
 <%
 String sql = "insert into AddPlace(city,placename,image,District,pin,address,location,discription) values(?,?,?,?,?,?,?,?)";
 PreparedStatement ps = con.prepareStatement(sql) ;
 
 
 String city = m.getParameter("city");
 String placename = m.getParameter("placename");
String photo="images/"+m.getFilesystemName("image");
String District = m.getParameter("District");
String pin = m.getParameter("pin");
String address = m.getParameter("address");
String location = m.getParameter("location");
String discription = m.getParameter("discription");

 
 
 ps.setString(1, city);
 ps.setString(2, placename);
 ps.setString(3, photo	);
 ps.setString(4, District);
 ps.setString(5, pin);
 ps.setString(6, address);
 ps.setString(7, location);
 ps.setString(8, discription);
 
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
  
