<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!-- header section starts  -->

<header class="header">

    <a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Medicare. </a>
	<c:if test="${empty userObj }">
	    <nav class="navbar">
	        <a href="index.jsp">Home</a>
	        <a href="#services">Services</a>
	        <a href="#about">About</a>
	        <a href="#doctors">doctors</a>
	        <a href="#book">book</a>
	        <a href="#review">review</a>
	        <a href="#blogs">blogs</a>
	        <a href="#login_section" id="login">Login</a>
	    </nav>
    </c:if>
	
	<c:if test="${not empty userObj }">
			<nav class="navbar">
		        <a href="index.jsp">home</a>
		        <a href="#services">services</a>
		        <a href="#about">about</a>
		        <a href="#doctors">doctors</a>
		        <a href="#book">book</a>
		        <a href="#review">review</a>
		        <a href="#blogs">blogs</a>
		        <a href="index.jsp#book">appointment</a>
		        <a href="view_appointment.jsp">view appointment</a>
		        <div class="dropdown">
							<button class="btn btn-success dropdown-toggle" type="button"
								id="dropdownMenuButton1" data-bs-toggle="dropdown"
								aria-expanded="false" style="width: 160px;
								    font-size: 14.7px;
								    margin-left: 2rem;
								    text-decoration: none;">
								<i class="fa-solid fa-user"></i> ${userObj.fullName }
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
								<li><a class="dropdown-item" href="userLogout">Logout</a></li>
							</ul>
				</div>
	    </nav>
	
	</c:if>
	
    <div id="menu-btn" class="fas fa-bars"></div>

</header>

<!-- header section ends -->