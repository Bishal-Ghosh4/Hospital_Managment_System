<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Password Change | User</title>
</head>
<body>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
.paint-card {
	    margin-top: 10rem;
    box-shadow: 0 20px 25px 0 rgb(0 0 0 / 80%);
    font-size: 16px;
    width: 110%;
    height: 400px;
    border: var(--border);
    border-radius: 1.5rem;
}
.form-control{
	font-size:2rem;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<c:if test="${ empty userObj }">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<p class="text-center fs-1 fw-bold">Change Password</p>
					<c:if test="${not empty successMsg }">
						<p class="text-center text-success fs-3">${successMsg}</p>
						<c:remove var="successMsg" scope="session" />
					</c:if>

					<c:if test="${not empty errorMsg }">
						<p class="text-center text-danger fs-5">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>
					<div class="card-body">
						<form action="userChangePassword" method="post">
							
							<div class="mb-3">
								<label>Enter Old Password</label> <input type="text"
									name="oldPassword" class="form-control" required>
							</div>
							
							<div class="mb-3">
								<label>Enter New Password</label> <input type="text"
									name="newPassword" class="form-control" required>
							</div>
							
							<input type="hidden" value="${userObj.id }" name="uid">
							<button class="btn btn-lg btn-primary col-md-12">Change Password</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>