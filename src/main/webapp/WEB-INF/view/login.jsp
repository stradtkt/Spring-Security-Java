<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Login Security</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	</head>
	<body>
		<div class="m-5 p-5"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<div class="card shadow-lg">
						<div class="card-body p-3 m-3">
							<h3 class="text-center mb-4">Login</h3>
							<form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST">
								<c:if test="${param.error != null}">
									<div class="alert alert-danger" role="alert">
  										Invalid Credentials.
									</div>
								</c:if>
								<c:if test="${param.logout != null}">
									<div class="alert alert-success" role="alert">
										Successfully Logged Out.
									</div>
								</c:if>
								<div class="form-group">
									<input type="text" class="form-control" name="username" placeholder="Enter Your Username"/>
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="password" placeholder="Enter Your Password"/>
								</div>
								<input type="submit" class="btn btn-primary btn-block" value="Login"/>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</body>
</html>