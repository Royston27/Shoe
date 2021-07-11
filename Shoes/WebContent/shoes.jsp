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
	
	<c:if test="${param.shoename!=null}">	
	<sql:query var="rs" dataSource="${con}">
		select * from shoe where status='A'  
		<sql:param>${param.shoename}</sql:param>
	</sql:query>
	</c:if>
				
	<c:if test="${param.shoename==null}">					   
	<sql:query var="rs" dataSource="${con}">
		select * from shoe where status='A'
	</sql:query>
	</c:if>
			
	<div class="container">
		<div class="row">
			<c:forEach items="${rs.rows}" var="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<a href="shoe.jsp?shoeid=${row.shoeid}"><img src="image?id=${row.shoeid}" style="height:300px" class="col-lg-12"/></a>
					<h3 class="col-lg-12">${row.shoename}</h3>
					<h4 class="col-lg-12">Rs. ${row.price}</h4>
					<a href="" class="btn btn-success btn-block">Add To Cart</a>
					<a href="" class="btn btn-danger btn-block">Buy</a>
				</div>
			</c:forEach>
		</div>
	</div>	    
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>