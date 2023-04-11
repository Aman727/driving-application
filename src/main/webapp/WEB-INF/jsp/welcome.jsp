<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>

<body>
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
	
		<div class="row">
			<div class="col-sm-6">
				<a href="/showStudents"> Show Students </a>
			</div>
			<div class="col-sm-6">
				<a href="/updateStudent"> Update Students </a>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-6">
				<a href="/addStudent"> Add Students </a>
			</div>
			<div class="col-sm-6">
				<a href="/deleteStudent"> Delete Students </a>
			</div>
		</div>
		
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>

</html>