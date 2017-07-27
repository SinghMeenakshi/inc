<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EDIT FORM</title>
</head>
<body>
	<%@ include file="navigation.jsp"%>
	<c:url value="/editpack" var="url2"></c:url>
	<form:form action="${url2 }" modelAttribute="pack" enctype="multipart/form-data">
		<div class="form-group">
			<form:hidden path="id" class="form-control" />
		</div>
		<div class="form-group">
				UPLOAD AN IMAGE:
				<input type="file" name="image">
			</div>
			<br>
		<div class="form-group">
			PACKAGE NAME:
			<form:input path="packageName" class="form-control" />
			<form:errors path="packageName" cssStyle="color:red;"></form:errors>
		</div>
		<br>
		<div class="form-group">
			PACKAGE DESCRIPTION:
			<form:input path="description" class="form-control" />
			<form:errors path="description" cssStyle="color:red;"></form:errors>
		</div>
		<br>
		<div class="form-group">
			PRICE:
			<form:input path="price" class="form-control" />
			<form:errors path="price" cssStyle="color:red;"></form:errors>
		</div>
		<br>
		<div class="form-group">
			SELECT CATEGORY
			<c:forEach items="${categories }" var="c">
				<form:radiobutton path="category.id" value="${c.id }" /> ${c.categoryName }
			</c:forEach>
		</div>
		<div class="form-group">
			<input type="submit" value="EDIT PACKAGE" />
			</div>
</form:form>
</body>
</html>
<%@ include file="footer.jsp"%>