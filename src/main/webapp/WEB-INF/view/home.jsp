<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Home Page Security Application</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
	</head>
	<body>
		<div class="jumbotron">
			<div class="container">
				<h1 class="text-center">Home Page For Security Application</h1>
				<hr/>
				<form:form action="${pageContext.request.contextPath}/logout" method="POST">
					<input type="submit" class="btn btn-primary btn-lg" value="Logout"/>
				</form:form>
				<h4><i class="fas fa-id-card"></i> User: <security:authentication property="principal.username"/></h4>
				<h4><i class="fas fa-briefcase"></i> Role: <security:authentication property="principal.authorities"/></h4>
				<hr/>
				<security:authorize access="hasRole('MANAGER')">
					<span><a class="btn btn-warning btn-sm" href="${pageContext.request.contextPath}/leaders">(Only For Managers): Managers</a></span> 
				</security:authorize>
				| 
				<security:authorize access="hasRole('ADMIN')">
					<span><a class="btn btn-info btn-sm" href="${pageContext.request.contextPath}/systems">(Only For Administration): Administration</a></span>
				</security:authorize>
			</div>
		</div>
		<div class="m-5 p-5"></div>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</body>
</html>