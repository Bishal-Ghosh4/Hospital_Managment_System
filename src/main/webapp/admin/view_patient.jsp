<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Details</title>
</head>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	margin-top:10rem;
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	font-size:16px;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${not empty successMsg }">
		<div class="alert alert-success alert-dismissible fade show" style="margin-top:100px;font-size: 2rem;width: auto;text-align: center;">
    		<i class="fa-sharp fa-solid fa-circle-check"></i><strong> Good Job!</strong> ${successMsg}.
    		<button type="button" class="close" data-dismiss="alert">&times;</button>
  		</div>
		<c:remove var="successMsg" scope="session" />
	</c:if>
	
	<c:if test="${not empty errorMsg }">
		<div class="alert alert-danger alert-dismissible fade show" style="margin-top:100px;font-size: 2rem;width: auto;text-align: center;">
    			<i class="fa-sharp fa-solid fa-circle-exclamation"></i><strong> Bad Job!</strong> ${errorMsg}.
    			<button type="button" class="close" data-dismiss="alert">&times;</button>
    	</div>
		<c:remove var="errorMsg" scope="session" />
	</c:if>
	<br>
	<br>
	<br>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-1 fw-bold text-center">Patient Details</p>
						

						<table class="table">
							<thead style="color: hsl(4deg 96% 62%);">
								<tr>
									<th scope="col">Full Name   </th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name </th>
									<th scope="col">Status</th>
									
								</tr>
							</thead>
							<tbody>
								<%
// 								Doctor d = (Doctor) session.getAttribute("doctObj");
								AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
								DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
								
								List<Appointment> list = dao.getAllAppointment();
								for (Appointment ap : list) {
									Doctor d=dao2.getDoctorById(ap.getDoctorId());
								%>
								<tr>
								
									<th><%=ap.getFullName()%></th>
									<td><%=ap.getGender()%></td>
									<td><%=ap.getAge()%></td>
									<td><%=ap.getAppointmentdate()%></td>
									<td><%=ap.getEmail()%></td>
									<td><%=ap.getPhNo()%></td>
									<td><%=ap.getDiseases()%></td>
									<td><%=d.getFullName()%></td>
									<td><%=ap.getStatus()%></td>
					
								</tr>
								<%
								}
								%>


							</tbody>
						</table>

					</div>
				</div>
			</div>

		</div>
	</div>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

    $(".alert").fadeTo(8000, 0).slideUp(8000, function(){
        $(this).remove(); 
    });
</script>
</html>