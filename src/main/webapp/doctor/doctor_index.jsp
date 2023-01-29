<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Index Page</title>
<style type="text/css">
.paint-card {
	border-radius: 1.25rem;
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	font-size:2rem;
}
</style>
<%@include file="../component/allcss.jsp"%>
</head>
<body>
	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>

	<c:if test="${not empty successMsg }">
<!-- 		<div class="alert alert-success alert-dismissible fade show" style="margin-top:100px;font-size: 2rem;width: auto;text-align: center;"> -->
<%--     		<i class="fa-sharp fa-solid fa-circle-check"></i><strong> Good Job!</strong> ${successMsg} ${doctObj.fullName }. --%>
<!--     		<button type="button" class="close" data-dismiss="alert">&times;</button> -->
<!--   		</div> -->
			<div id="successMsg">${successMsg} ${doctObj.fullName }</div>
		<c:remove var="successMsg" scope="session" />
	</c:if>
	
	<c:if test="${not empty errorMsg }">
<!-- 		<div class="alert alert-danger alert-dismissible fade show" style="margin-top:100px;font-size: 2rem;width: auto;text-align: center;"> -->
<%--     		<i class="fa-sharp fa-solid fa-circle-exclamation"></i><strong> Bad Job!</strong> ${errorMsg}. --%>
<!--     		<button type="button" class="close" data-dismiss="alert">&times;</button> -->
<!--     	</div> -->
			<div id="errorMsg">${errorMsg}</div>
		<c:remove var="errorMsg" scope="session" />
	</c:if>
	
	<%@include file="navbar.jsp"%>
	
	
	<div class="container mt-5 p-5">
			<p class="text-center fs-1 fw-bold"" style="margin-top:10rem;">Doctor Dashboard</p>

				<%
				Doctor d = (Doctor) session.getAttribute("doctObj");
				DoctorDao dao = new DoctorDao(DBConnect.getConn());
				%>
		<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-1 text-center">
							Doctor <br><%=dao.countDoctor()%>
						</p>
					</div>
				</div>
			</div>


			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-1 text-center">
							Total Appointment <br>
							<%=dao.countAppointmentByDoctorId(d.getId())%>
						</p>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
<script>
		let successMsg=document.getElementById("successMsg")
		let errorMsg=document.getElementById("errorMsg")
		
		if(successMsg){
			msg=successMsg.innerHTML;
			swal({ 
			  title: "Good job!", 
			  text: msg, 
		      icon: "success",
			  button: "Okay",
			});
		}
		
		if(errorMsg){
			msg=errorMsg.innerHTML;
			swal({ 
			   title: "Bad job!", 
			   text: msg, 
			   icon: "error",
			   button: "Okay",
			});
		}

</script>
</html>