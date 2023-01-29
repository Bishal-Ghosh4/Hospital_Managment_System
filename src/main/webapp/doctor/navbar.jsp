<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!-- header section starts  -->

<header class="header">

    <a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Medicare. </a>
	
	    <nav class="navbar">
	        <a href="doctor_index.jsp">Home</a>
		    <a href="patient.jsp">Appointments</a>
			<div class="dropdown">
							<button class="btn btn-success dropdown-toggle" type="button"
								id="dropdownMenuButton1" data-bs-toggle="dropdown"
								aria-expanded="false" style="width: 160px;
								    font-size: 14.7px;
								    margin-left: 2rem;
								    text-decoration: none;">
								<i class="fas fa-user-nurse"></i>  ${doctObj.fullName }</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li><a class="dropdown-item" href="../doctorLogout">Logout</a></li>
							</ul>
				</div>
	    </nav>
	
	
    <div id="menu-btn" class="fas fa-bars"></div>

</header>

<!-- header section ends -->


