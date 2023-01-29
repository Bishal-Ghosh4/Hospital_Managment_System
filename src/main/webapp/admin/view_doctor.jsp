<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Doctor details</title>
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
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-1"></div>
			
			<div class="col-md-10">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-1 fw-bold text-center">Doctor Details</p>
						
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Specialist</th>
									<th scope="col">Email</th>
									<th scope="col">Mobile Number</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
								List<Doctor> list2 = dao2.getAllDoctor();
 								for (Doctor d : list2) {
								%> 
								<tr>
									<td><%=d.getFullName()%></td>
									<td><%=d.getDob()%></td>
									<td><%=d.getQualification()%></td>
									<td><%=d.getSpecialist()%></td>
									<td><%=d.getEmail()%></td>
									<td><%=d.getMobileNumber()%></td>
									<td><a href="edit_doctor.jsp?id=<%=d.getId()%>"
										class="btn btn-lg btn-primary">Edit</a> 
										
										<a href="../deleteDoctor?id=<%=d.getId()%>"
										class="btn btn-lg btn-danger">Delete</a></td>
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