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
<title>Doctor Add Page</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	border-radius: 1.25rem;
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	font-size:2rem;
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
    						font-weight: bold;">Add Doctor</p>
						
						<form action="../addDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control">
							</div>

							<div class="lg-3">
								<label class="form-label">DOB</label> <input type="date"
									required name="dob" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input required
									name="qualification" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control">
									<option>--select--</option>

									<% SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									List<Specalist> list = dao.getAllSpecialist();
									for (Specalist s : list) {%> 
											<option><%=s.getSpecialistName()%></option>
									<%}
									
									%>

								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mobile Number</label> <input type="number"
									required name="mobilenumber" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn btn-lg btn-primary">Submit</button>
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