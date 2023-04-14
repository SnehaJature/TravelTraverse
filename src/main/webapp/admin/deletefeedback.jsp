<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

     <%@page import="java.sql.*" %>
    
    <%
     String fId= request.getParameter("Id");
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
     String sql = "delete from feedback where Id=?";
     PreparedStatement ps = con.prepareStatement(sql);
     ps.setString(1, fId);
     int done = ps.executeUpdate();
     if(done>0){
    %>
    <script>
     alert("Deleted Success!!");
     location.href="showfeedback.jsp";
    </script>
    <%}else{ %>
    <script>
     alert("Failed Try Again!!");
     location.href="showfeedback.jsp";
    </script>
    <%} %>