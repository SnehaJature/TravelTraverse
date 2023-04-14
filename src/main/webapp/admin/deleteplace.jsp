<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

     <%@page import="java.sql.*" %>
    
    <%
     String placename= request.getParameter("placename");
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
     String sql = "delete from AddPlace where placename=?";
     PreparedStatement ps = con.prepareStatement(sql);
     ps.setString(1, placename);
     int done = ps.executeUpdate();
     if(done>0){
    %>
    <script>
     alert("Deleted Success!!");
     location.href="viewplace.jsp";
    </script>
    <%}else{ %>
    <script>
     alert("Failed Try Again!!");
     location.href="viewplace.jsp";
    </script>
    <%} %>