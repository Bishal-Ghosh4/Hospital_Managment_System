<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@page isELIgnored="false"%> 

<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>View Appointment</title>
</head>
<body>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
 .paint-card {
	margin-top:10rem;
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	font-size:16px;
	border-radius:1.5rem;
}

.backImg {
 	background-image:url("img/hospital.jpg"); 
 	height: 45vh; 
 	width: 50%; 
 	background-size: cover; 
  	background-repeat: no-repeat; 
 } 
</style> 
</head>
<body>

	<c:if test="${empty userObj }">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>
	<%@include file="component/navbar.jsp"%>
<div class="container-fulid backImg ">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container ">
		<div class="row" style="width: 124%;height: 118%;">
		<div class="col-md-3 ">
				<img alt="" src="img/doc.jpg" style="width: 153%;float: right;">
			</div>
			<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-1 fw-bold text-center text-success" >Appointment List</p>
						<table class="table">
							<thead style="color: hsl(4deg 96% 62%);">
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>

								</tr>
							</thead>
							<tbody>
								<%
	 								User u = (User) session.getAttribute("userObj"); 								
									AppointmentDao dao = new AppointmentDao(DBConnect.getConn()); 
	 								DoctorDao dao2 = new DoctorDao(DBConnect.getConn()); 
		 							List<Appointment> list = dao.getAllAppointmentByLoginUser(u.getId());
		 							for (Appointment ap : list) {
									Doctor d = dao2.getDoctorById(ap.getDoctorId());
								%> 
								<tr>
									<th><%=ap.getFullName()%></th>
									<td><%=ap.getGender()%></td>
									<td><%=ap.getAge()%></td>
									<td><%=ap.getAppointmentdate()%></td>
									<td><%=ap.getDiseases()%></td>
									<td><%=d.getFullName()%></td>
									<td>
										<%
 										if ("Pending".equals(ap.getStatus())) {
										%> <a href="#" class="btn btn-sm btn-warning" style="width: 100px;font-size: 15px;">Pending</a> <%
										 } 
	 										else {
										 %> <%=ap.getStatus()%> <%
										 }
										 %>
									</td>
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
</html>