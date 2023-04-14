<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  page import="java.sql.*"%>

<% 

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
%>
<%
String sql = "insert into feedback(name,email,phone,message) values(?,?,?,?)";
PreparedStatement ps = con.prepareStatement(sql) ;

String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String message = request.getParameter("message");

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,phone);
ps.setString(4,message);

int done=ps.executeUpdate();	
if(done>0){%>
<script type="text/javascript">
alert("Added Successfully!!!!!");
location.href="contact.jsp";
</script>
<%}
else{%>
<script type="text/javascript">
alert("Fail try again!!!");
location.href="contact.jsp";
</script>
<%}


%>