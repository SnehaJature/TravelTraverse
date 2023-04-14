 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Easy Travelling</title>
<jsp:include page="link.jsp"></jsp:include>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper">
<div class="main-page">
<h2 style="margin-top:50px;text-align:center;">Add Category</h2><br><br>
<div class="container" style="margin-left:250px;">
<form action="addcategoryDB.jsp" method="post" >



<div class="col-md-8">
<label>Category Name</label><br>
<div class="form-group">
<input type="hidden" id="categoryId">
<input class="form-control" type="text" name="categoryname" id="categoryname" placeholder="Enter Category Name" required>
<br><br>
<input class="btn btn-info " type="submit" value="Submit Category">
</div>
</div>

</form>
</div>



</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

