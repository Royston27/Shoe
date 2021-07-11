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
		<sql:setDataSource driver="com.mysql.jdbc.Driver"
								url="jdbc:mysql://localhost:3306/shoes"
								user="root"
								password="roy"
								var="con"/>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<sql:query var="rs" dataSource="${con}">
		select * from shoe where shoeid=?
		<sql:param>${param.shoeid}</sql:param>
	</sql:query>
			
	
	<div class="container">
		<div class="row">
			<c:forEach items="${rs.rows}" var="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<a href="shoes.jsp?shoeid=${row.shoeid}"><img src="image?id=${row.shoeid}" style="height:250px" style="width:450px" class="col-lg-12"/></a>
				</div>
				
				
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<h3 class="col-lg-12">${row.brand}</h3>
					<h4 class="col-lg-12">${row.shoename}</h4>
					<h5 class="col-lg-12">Rs. ${row.price}</h5>
					
					<form action="addtocart" method="post">
						<input type="text" name="shoeid" value="${row.shoeid}" hidden/>
						Quantity: <input type="number" name="qty"/>
						<input type="submit" class="btn btn-success btn-block" value="Add To Cart">
					</form>
					
					<c:if test="${u.role=='Admin'}">
						<a href="delete?shoeid=${row.shoeid}" class="btn btn-danger btn-block">Delete</a>
						<a href="edit.jsp?shoeid=${row.shoeid}" class="btn btn-warning btn-block">Edit</a>
					</c:if>
				</div>
			</c:forEach>
		</div>
	</div>	    
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>