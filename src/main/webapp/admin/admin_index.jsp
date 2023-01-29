<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Index Page</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	border-radius: 1.25rem;
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	font-size:2rem;
}
</style>

</head>
<body>

	<%@include file="navbar.jsp" %>

	<c:if test="${ empty adminObj }">
		<c:redirect url="index.jsp"></c:redirect>
	</c:if>
	
	<c:if test="${not empty successMsg }">
<!-- 		<div class="alert alert-success alert-dismissible fade show" style="margin-top:100px;font-size: 2rem;width: auto;text-align: center;"> -->
<%--     		<i class="fa-sharp fa-solid fa-circle-check"></i><strong> Good Job!</strong> ${successMsg}. --%>
<!--     		<button type="button" class="close" data-dismiss="alert">&times;</button> -->
<!--   		</div> -->
			<div id="successMsg">${successMsg} </div>
		<c:remove var="successMsg" scope="session" />
	</c:if>
	
	<c:if test="${not empty errorMsg }">
<!-- 		<div class="alert alert-danger alert-dismissible fade show" style="margin-top:100px;font-size: 2rem;width: auto;text-align: center;"> -->
<%--     			<i class="fa-sharp fa-solid fa-circle-exclamation"></i><strong> Bad Job!</strong> ${errorMsg}. --%>
<!--     			<button type="button" class="close" data-dismiss="alert">&times;</button> -->
<!--     	</div> -->
			<div id="errorMsg">${errorMsg}</div>
		<c:remove var="errorMsg" scope="session" />
	</c:if>

		
		<div class="container mt-5 p-5" >
			<p class="text-center fs-1 fw-bold" style="margin-top:10rem;">Admin Dashboard</p>
			
			<%
				DoctorDao dao = new DoctorDao(DBConnect.getConn());
			%>
			<br>
			<div class="row">
				<div class="col-md-4">
					<div class="card paint-card " data-bs-toggle="doctor.jsp">
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
							<i class="fas fa-user-circle fa-3x"></i><br>
							<p class="fs-1 text-center">
								User <br><%=dao.countUSer()%>
							</p>
						</div>
					</div>
				</div>
	
				<div class="col-md-4">
					<div class="card paint-card">
						<div class="card-body text-center text-success">
							<i class="far fa-calendar-check fa-3x"></i><br>
							<p class="fs-1 text-center">
								Total Appointment <br><%=dao.countAppointment()%>
							</p>
						</div>
					</div>
				</div>
	
				<div class="col-md-4 mt-3">
	
					<div class="card paint-card " data-bs-toggle="modal"
						data-bs-target="#exampleModal">
						<div class="card-body text-center text-success">
							<i class="far fa-calendar-check fa-3x"></i><br>
							<p class="fs-1 text-center">
								Specialist <br><%=dao.countSpecialist()%>
							</p>
						</div>
					</div>
	
				</div>
	
			</div>
		</div>




	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../addSpecialist" method="post">

						<div class="form-group">
							<label>Enter Specialist Name</label> <input type="text"
								name="specName" class="form-control">
						</div>
						<div class="text-center mt-3">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>

					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>


</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
			   button: "Okay!",
			});
		}

    $(".alert").fadeTo(8000, 0).slideUp(8000, function(){
        $(this).remove(); 
    });
</script>
</html>
