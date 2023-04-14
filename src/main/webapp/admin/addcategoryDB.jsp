<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    
    <%
Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
 

 %>
 <%
 String sql = "insert into Category(CategoryId,CategoryName) values(?,?)";
 PreparedStatement ps = con.prepareStatement(sql) ;
 
 
 String CategoryId = request.getParameter("categoryId");
 String CategoryName = request.getParameter("categoryname");


 
 
 ps.setString(1, CategoryId);
 ps.setString(2, CategoryName);
 
 
 int done=ps.executeUpdate();	
 if(done>0){%>
 <script type="text/javascript">
 alert("Added Successfully!!!!!");
 location.href="addcategory.jsp";
 </script>
 <%}
 else{%>
 <script type="text/javascript">
 alert("Fail try again!!!");
location.href="addcategory.jsp";
</script>
<% }
 %>
