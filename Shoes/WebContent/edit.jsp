<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	.myclass
	{
		margin:0 auto;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
		<sql:setDataSource driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost:3306/shoes"
					   user="root"
					   password="roy"
					   var="con"/>
					
		<sql:query var="rs" dataSource="${con}">
			select * from shoe where shoeid=?
			<sql:param>${param.shoeid}</sql:param>
		</sql:query>
	
		<div class="container">
		
		<c:forEach items="${rs.rows}" var="row">
		<form action='update' method='post' class="myclass col-lg-6 col-md-9 col-sm-12 col-xs-12">
			<div class="form-group">
				<label>Enter Shoe id</label>
				<input type="text" name="shoeid" value="${row.shoeid}" placeholder="Enter shoeid" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Shoe Name</label>
				<input type="text" name="shoename" value="${row.shoename}" placeholder="Enter ShoeName" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Brand</label>
				<input type="text" name="brand" value="${row.brand}" placeholder="Enter Brand" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Price</label>
				<input type="text" name="price" value="${row.price}" placeholder="Enter Price" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Link</label>
				<input type="text" name="link" value="${row.link}"  placeholder="Enter Link" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Update shoe" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
		</c:forEach>
		<jsp:include page="footer.jsp"></jsp:include>
		</div>
</body>
</html>