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
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
 .paint-card { 
 	border-radius: 1.25rem;
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	font-size:2rem;
 }
 .form-label{
 	font-weight: 600;
    font-family: auto;
 } 
 .form-control{
	font-size:2rem;
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
	
	<div class="container-fluid p-3">
		<div class="row" style="margin-top:10rem;">

			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-1 text-center" style="font-family: sans-serif;
    						font-weight: bold;">Edit Doctor Details</p>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
						Doctor d = dao2.getDoctorById(id);
 						%> 


						<form action="../updateDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control"
									value="<%=d.getFullName()%>" >
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									value="<%=d.getDob()%>" required name="dob"
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input required
									value="<%=d.getQualification()%>" name="qualification"
									type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control">
									<option><%=d.getSpecialist()%></option>

									<%
 									SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									List<Specalist> list = dao.getAllSpecialist();
 									for (Specalist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%> 


								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									value="<%=d.getEmail()%>" required name="email"
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mobile Number</label> <input type="number"
									value="<%=d.getMobileNumber()%>"required name="mobilenumber" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									value="<%=d.getPassword()%>" name="password" type="text"
									class="form-control">
							</div>
							
							<input type="hidden" name="id" value="<%=d.getId()%>">

							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>
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