<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@
taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<title>Update Student</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>
<body>
	<c:url var="update_student_url" value="/updateStudent" />

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Student Application</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="/showStudents">Students</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/addStudent">Add
						students</a></li>
				<li class="nav-item"><a class="nav-link" href="/updateStudent">Update
						students</a></li>
				<li class="nav-item"><a class="nav-link" href="/deleteStudent">Delete
						students</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<form action="/updateStudent" method="post">
			
			

		
		<table>
			<tr>
				<td><form:label path="name">Student Name: </form:label></td>
				<td><form:input type="text" id="name" name="name" /></td>
			</tr>
			
			<tr>
				<td><form:label path="email">Email </form:label></td>
				<td><form:input type="text" id="email" name="email" /></td>
			</tr>
			
			<tr>
				<td><form:label path="name">Address </form:label></td>
				<td><form:input type="text" id="address" name="address" /></td>
			</tr>	
				
			<tr>	
				<td><form:label path="name">Postcode </form:label></td>
				<td><form:input type="text" path="postcode" /></td>
			</tr>
			
			<tr>	
				<td><form:label path="name">Phone number </form:label></td>
				<td><form:input type="text" path="phoneNumber" /></td>
			</tr>	
				
			<tr>
				<td><form:label path="dob">Date of birth </form:label></td>
				<td><form:input type="text" path="dob" /></td>
			</tr>	
				
			<tr>
				<td></td>
				<td><input type="submit" value="submit" /></td>
			</tr>	
				
		</table>
		
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>


