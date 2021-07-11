<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost:3306/shoes"
					   user="root"
					   password="roy"
					   var="con"/>
					
	  
	<sql:query var="rs" dataSource="${con}">
		select * from cartitems where username=?
		<sql:param>${u.username}</sql:param>
	</sql:query>
	
	<c:forEach items="${rs.rows}" var="cartdetails">
	<sql:query var="rs2" dataSource="${con}">
		select * from shoe where shoeid=?
		<sql:param>${cartdetails.shoeid}</sql:param>
	</sql:query>
			
	<div class="container">
		<div class="row">
			<c:forEach items="${rs2.rows}" var="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<a href="shoe.jsp?carid=${row.shoeid}"><img src="image?id=${row.shoeid}" class="col-lg-12"/></a>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<h3 class="col-lg-12">${row.brand}</h3>
					<h5 class="col-lg-12">${row.shoename}</h5>
					<h5 class="col-lg-12">Rs. ${row.price}</h5>
					<h5 class="col-lg-12">Total Price: ${row.price*cartdetails.quantity}</h5>
					
					
					<form action="addtocart" method="post">
					 	
						<input type="text" name="shoeid" value="${row.shoeid}" hidden/>
						Quantity: <input type="number" name="qty" value="${cartdetails.quantity}"/>
						<input type="submit" class="btn btn-primary btn-block" value="Update cart">
					</form>
					
					<c:if test="${u.role=='Admin'}">
						<a href="delete?shoeid=${row.shoeid}" class="btn btn-danger btn-block">Delete</a>
						<a href="edit.jsp?shoeid=${row.shoeid}" class="btn btn-warning btn-block">Edit</a>
					</c:if>
				</div>
			</c:forEach>
		</div>
	</div>	
	</c:forEach>    
	
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>