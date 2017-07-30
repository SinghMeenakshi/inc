<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PACKAGE FORM</title>
</head>
<body>
	<%@ include file="navigation.jsp"%>
	<div class="container">

						<form:form action="/admin/savepack" method="post" modelAttribute="pack"
							enctype="multipart/form-data">

							<div class="form-group">
								<form:hidden path="id" class="form-control" />
							</div>

							<br>
							<div class="form-group">
								ENTER THE PAKAGE NAME:
								<form:input path="packageName" class="form-control" />
								<form:errors path="packageName" cssStyle="color:red;"></form:errors>
							</div>
							<br>
							<div class="form-group">
								ENTER THE PRICE:
								<form:input path="price" class="form-control" />
								<form:errors path="price" cssStyle="color:red;"></form:errors>
							</div>
							<br>
							<div class="form-group">
								ENTER THE VACANCY:
								<form:input path="vacancy" class="form-control" />
								<form:errors path="vacancy" cssStyle="color:red;"></form:errors>
							</div>
							<br>
							<div class="form-group">
								ENTER THE DESCRIPTION:
								<form:textarea path="description" class="form-control" />
								<form:errors path="description" cssStyle="color:red;"></form:errors>
							</div>
							<br>
							<div class="form-group">
								SELECT CATEGORY
								<form:select path="category.id">
									<c:forEach items="${categories }" var="c">
										<form:option value="${c.id }">${c.categoryName }</form:option>
										<%-- <form:radiobutton path="category.id" value=" ${c.id }" /> ${c.categoryName } --%>

									</c:forEach>
								</form:select>
							</div>
							<div class="form-group">
								UPLOAD AN IMAGE: <input type="file" name="image" />

							</div>
							<div class="form-group ">
								<button type="submit" class="btn btn-info btn-lg"
									>ADD PRODUCT</button>
							</div>
					</div>
					</form:form>
				</div>
</body>
</html>
<%@ include file="footer.jsp"%>