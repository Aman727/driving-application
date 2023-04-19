<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>
<body>
	


	<div class="container">
		<table border="1">
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Address</th>
						<th>Postcode</th>
						<th>Phone number</th>
						<th>Age</th>
					</tr>
		
						<tr>
							<td>${student.id}</td>
							<td><a href="/updateStudent">${student.name}</a></td>
							<td>${student.email}</td>
							<td>${student.address}</td>
							<td>${student.postcode}</td>
							<td>${student.phoneNumber}</td>
							<td>${student.age}</td>
						</tr>

				</table>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>