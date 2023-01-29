<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.dao.DoctorDao"%>
		<%
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		%>   
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page </title>
	
<%@include file="component/allcss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.form-control{
	font-size:2rem;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%> 
	
	
<%--  	<% Connection conn=DBConnect.getConn();
 		out.print(conn); %>  --%>


	<c:if test="${not empty successMsg }">
<!-- 		<div class="alert alert-success alert-dismissible fade show" style="margin-top:100px;font-size: 2rem;width: auto;text-align: center;"> -->
<%--     		<i class="fa-sharp fa-solid fa-circle-check"></i><strong> Good Job!</strong> ${successMsg} ${userObj.fullName }. --%>
<!--     		<button type="button" class="close" data-dismiss="alert">&times;</button> -->
<!--   		</div> -->
		<div id="successMsg">${successMsg} ${userObj.fullName }</div>
		<c:remove var="successMsg" scope="session" />
	</c:if>
	
	<c:if test="${not empty errorMsg }">
<!-- 		<div class="alert alert-danger alert-dismissible fade show" style="margin-top:100px;font-size: 2rem;width: auto;text-align: center;"> -->
<%-- <%--     		<i class="fa-sharp fa-solid fa-circle-exclamation"></i><strong> Bad Job!</strong> ${errorMsg}. --%> --%>
 <!--     		<button type="button" class="close" data-dismiss="alert">&times;</button> --> 
<!--     	</div> -->
		<div id="errorMsg">${errorMsg}</div>
		<c:remove var="errorMsg" scope="session" />

 	</c:if>
	
<!-- home section starts  -->

<section class="home" id="home">
	
    <div class="image">
        <img src="image/home-img.svg" alt="">
    </div>

    <div class="content">
        <h3>stay safe, stay healthy</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem sed autem vero? Magnam, est laboriosam!</p>
        <a href="#" class="btn"> contact us <span class="fas fa-chevron-right"></span> </a>
    </div>

</section>

<!-- home section ends -->

<!-- icons section starts  -->

<section class="icons-container">

    <div class="icons">
        <i class="fas fa-user-md"></i>
        <h3>140+</h3>
        <p>doctors at work</p>
    </div>

    <div class="icons">
        <i class="fas fa-users"></i>
        <h3>1040+</h3>
        <p>satisfied patients</p>
    </div>

    <div class="icons">
        <i class="fas fa-procedures"></i>
        <h3>500+</h3>
        <p>bed facility</p>
    </div>

    <div class="icons">
        <i class="fas fa-hospital"></i>
        <h3>80+</h3>
        <p>available hospitals</p>
    </div>

</section>

<!-- icons section ends -->

<!-- services section starts  -->

<section class="services" id="services">

    <h1 class="heading"> our <span>services</span> </h1>

    <div class="box-container">

        <div class="box">
            <i class="fas fa-notes-medical"></i>
            <h3>free checkups</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad, omnis.</p>
            <a href="#" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>

        <div class="box">
            <i class="fas fa-ambulance"></i>
            <h3>24/7 ambulance</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad, omnis.</p>
            <a href="#" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>

        <div class="box">
            <i class="fas fa-user-md"></i>
            <h3>expert doctors</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad, omnis.</p>
            <a href="#" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>

        <div class="box">
            <i class="fas fa-pills"></i>
            <h3>medicines</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad, omnis.</p>
            <a href="#" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>

        <div class="box">
            <i class="fas fa-procedures"></i>
            <h3>bed facility</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad, omnis.</p>
            <a href="#" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>

        <div class="box">
            <i class="fas fa-heartbeat"></i>
            <h3>total care</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad, omnis.</p>
            <a href="#" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>

    </div>

</section>

<!-- services section ends -->

<!-- about section starts  -->

<section class="about" id="about">

    <h1 class="heading"> <span>about</span> us </h1>

    <div class="row">

        <div class="image">
            <img src="image/about-img.svg" alt="">
        </div>

        <div class="content">
            <h3>we take care of your healthy life</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iure ducimus, quod ex cupiditate ullam in assumenda maiores et culpa odit tempora ipsam qui, quisquam quis facere iste fuga, minus nesciunt.</p>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus vero ipsam laborum porro voluptates voluptatibus a nihil temporibus deserunt vel?</p>
            <a href="#" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>

    </div>

</section>

<!-- about section ends -->

<!-- doctors section starts  -->

<section class="doctors" id="doctors">

    <h1 class="heading"> our <span>doctors</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="image/doc-1.jpg" alt="dfvasgvas">
            <h3>Dr. Purna Chandra Sahoo</h3>
            <span>General Surgeon</span>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
<!--             <img src="image/doc-2.jpg" alt=""> -->
            <img src="image/doc-2.jpg">
            <h3>Dr. Manish Kumar</h3>
            <span>General Physican</span>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <img src="image/doc-3.jpg" alt="">
            <h3>Dr. Chinmaya Kumar Pani</h3>
            <span>Gynecologist</span>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <img src="image/doc-4.jpg" alt="">
            <h3>Dr. Satyabrata Tripathy</h3>
            <span>Dermatologist</span>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <img src="image/doc-5.jpg" alt="">
            <h3>Dr. CK Deepa</h3>
            <span>Ophthalmologist</span>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <img src="image/doc-6.jpg" alt="">
            <h3>Dr. Suryakanta Pradhan</h3>
            <span>ENT/ Otorhinolaryngologist</span>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>
        
        <div class="box">
            <img src="image/doc-6.jpg" alt="">
            <h3>Dr. Madhu Sudan Modi</h3>
            <span>GastroIntestinal Surgeon</span>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>
        
         <div class="box">
            <img src="image/doc-6.jpg" alt="">
            <h3>Dr. Madhu Sudan Modi</h3>
            <span>GastroIntestinal Surgeon</span>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>
        

    </div>

</section>

<!-- doctors section ends -->

<!-- booking section starts   -->

<section class="book" id="book">

    <h1 class="heading"> <span>book</span> now </h1>    

    <div class="row">

        <div class="image" >
            <img src="image/book-img.svg" alt="" >
            	
        <form action="addAppointment" method="post" >
        	<h3>book appointment</h3>
        	
        	<input type="hidden" name="userid" value="${userObj.id }">
        	
            <input type="text" placeholder="your name" class="box" name="fullname">
            <select class="form-control box" name="gender"
									required>
									<option value="gender">gender</option>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
			<input type="text" placeholder="your age" class="box" name="age">
			<input type="date" placeholder="Appointment Date" class="box" name="appointmentdate">
			<input type="email" placeholder="your email" class="box" name="email">
            <input type="number" placeholder="your number" class="box" name="phno">
            <input type="text" placeholder="diseases" class="box" name="diseases">
             <select placeholder="diseases" required class="form-control box" name="doct">
								
									<option value="doctor">doctor</option>
									<%
									DoctorDao dao = new DoctorDao(DBConnect.getConn());
									List<Doctor> list = dao.getAllDoctor();
									for (Doctor d : list) {
									%>
									<option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)</option>
									<%
									}
									%>

								</select>
            <input type="text" placeholder="your address" class="box" name="address">
            <input type="submit" value="book now" class="btn">
        </form>
        </div>

    </div>

</section>

<!-- booking section ends -->

<!-- review section starts  -->

<section class="review" id="review">
    
    <h1 class="heading"> client's <span>review</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="image/pic-1.png" alt="">
            <h3>john deo</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam sapiente nihil aperiam? Repellat sequi nisi aliquid perspiciatis libero nobis rem numquam nesciunt alias sapiente minus voluptatem, reiciendis consequuntur optio dolorem!</p>
        </div>

        <div class="box">
            <img src="image/pic-2.png" alt="">
            <h3>john deo</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam sapiente nihil aperiam? Repellat sequi nisi aliquid perspiciatis libero nobis rem numquam nesciunt alias sapiente minus voluptatem, reiciendis consequuntur optio dolorem!</p>
        </div>

        <div class="box">
            <img src="image/pic-3.png" alt="">
            <h3>john deo</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam sapiente nihil aperiam? Repellat sequi nisi aliquid perspiciatis libero nobis rem numquam nesciunt alias sapiente minus voluptatem, reiciendis consequuntur optio dolorem!</p>
        </div>

    </div>

</section>

<!-- review section ends -->

<!-- blogs section starts  -->

<section class="blogs" id="blogs">

    <h1 class="heading"> our <span>blogs</span> </h1>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <img src="image/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <div class="icon">
                    <a href="#"> <i class="fas fa-calendar"></i> 1st may, 2021 </a>
                    <a href="#"> <i class="fas fa-user"></i> by admin </a>
                </div>
                <h3>blog title goes here</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Provident, eius.</p>
                <a href="#" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="image/blog-2.jpg" alt="">
            </div>
            <div class="content">
                <div class="icon">
                    <a href="#"> <i class="fas fa-calendar"></i> 1st may, 2021 </a>
                    <a href="#"> <i class="fas fa-user"></i> by admin </a>
                </div>
                <h3>blog title goes here</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Provident, eius.</p>
                <a href="#" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="image/blog-3.jpg" alt="">
            </div>
            <div class="content">
                <div class="icon">
                    <a href="#"> <i class="fas fa-calendar"></i> 1st may, 2021 </a>
                    <a href="#"> <i class="fas fa-user"></i> by admin </a>
                </div>
                <h3>blog title goes here</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Provident, eius.</p>
                <a href="#" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
            </div>
        </div>

    </div>

</section>

<!-- blogs section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>quick links</h3>
            <a href="#"> <i class="fas fa-chevron-right"></i> home </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> services </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> about </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> doctors </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> book </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> review </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> blogs </a>
        </div>

        <div class="box">
            <h3>our services</h3>
            <a href="#"> <i class="fas fa-chevron-right"></i> dental care </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> message therapy </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> cardioloty </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> diagnosis </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> ambulance service </a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +123-456-7890 </a>
            <a href="#"> <i class="fas fa-phone"></i> +111-222-3333 </a>
            <a href="#"> <i class="fas fa-envelope"></i> shaikhanas@gmail.com </a>
            <a href="#"> <i class="fas fa-envelope"></i> anasbhai@gmail.com </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> mumbai, india - 400104 </a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
            <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
            <a href="#"> <i class="fab fa-pinterest"></i> pinterest </a>
        </div>

    </div>

    <div class="credit"> created by <span>web designer</span> | all rights reserved </div>

</section>

<!-- footer section ends -->


<!-- LOGIN POPUP -->
<div class="login_section  w3-modal" id="login_section">
        <div class="w3-modal-content w3-animate-zoom" style="border-radius: 50px">
            <div class="container register" style="font-family: 'IBM Plex Sans', sans-serif;">
                <div class="row">
                    <div class="col-md-12 register-right" style="margin: auto;font-size: 15px;">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist" style="width: 40%;height: 7%;">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#alreadylogin" role="tab"
                                    aria-controls="home" aria-selected="true">Patient</a>
                            </li>
                            <li class="nav-item  ">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                                    aria-controls="profile" aria-selected="false">Doctor</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#admin" role="tab"
                                    aria-controls="admin" aria-selected="false">Receptionist</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="alreadylogin" role="tabpanel" aria-labelledby="profile-tab">
                                <h1 class="register-heading">Login as Patient</h1>
                                
                                <form method="post" action="userLogin">
                                    <div class="row register-form">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="email" class="form-control " placeholder="Your Email *" name="email"  / style="font-size: 2rem;
                                    border-radius: 1.25rem;">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="password" class="form-control" placeholder="Password *"
                                                    name="password" required/ style="font-size: 2rem;border-radius: 1.25rem;">
                                            </div>

                                            <input type="submit"  class="btnRegister" name="docsub1" value="Login" />
                                        </div>
                                        <a href="#home1"  id="loginacc">Create a new account?</a>
                                    </div>
                                </form>
                            </div>

                       
                            <div class="tab-pane fade show " id="home1" role="tabpanel"
                                aria-labelledby="home-tab">
                                <h1 class="register-heading">Register as Patient</h1>
                                <form method="post" action="user_register">
                                    <div class="row register-form">

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="First Name *"
                                                    name="fname" onkeydown="return alphaOnly(event);" required/ style="font-size: 2rem;
                                    border-radius: 1.25rem;">
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <input type="email" class="form-control " placeholder="Your Email *"
                                                    name="email" / style="font-size: 2rem;
                                    border-radius: 1.25rem;">
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <input type="password" class="form-control" placeholder="Password *"
                                                    id="password" name="password" onkeyup='check();' required/ style="font-size: 2rem;
                                    border-radius: 1.25rem;">
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <div class="maxl">
                                                    <label class="radio inline">
                                                        <input type="radio" name="gender" value="Male" checked>
                                                        <span> Male </span>
                                                    </label>
                                                    <label class="radio inline">
                                                        <input type="radio" name="gender" value="Female">
                                                        <span>Female </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control " maxlength="10" placeholder="Last Nsame *"
                                                    name="lname" onkeydown="return alphaOnly(event);" required/ style="font-size: 2rem;
                                    border-radius: 1.25rem;">
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <input type="tel" minlength="10" maxlength="10" name="contact"
                                                    class="form-control" placeholder="Your Phone *" / style="font-size: 2rem;
                                    border-radius: 1.25rem;">
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <input type="password" class="form-control" id="cpassword"
                                                    placeholder="Confirm Password *" name="cpassword" onkeyup='check();'
                                                    required/ style="font-size: 2rem;
                                    border-radius: 1.25rem;"><span id='message'></span>
                                            </div>
                                            <br>
                                            <input type="submit" class="btnRegister" name="patsub1"
                                                onclick="return checklen();" value="Register" />
                                        </div>

                                    </div>
                                </form>
                            </div>
                            

                            <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <h1 class="register-heading">Login as Doctor</h1>
                            
                                <form method="post" action="doctorLogin">
                                    <div class="row register-form">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="email" class="form-control " placeholder="Your Email *"
                                                    name="email" / style="font-size: 2rem;border-radius: 1.25rem;">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="password" class="form-control" placeholder="Password *"
                                                    name="password" required/ style="font-size: 2rem;
                                    border-radius: 1.25rem;">
                                            </div>

                                            <input type="submit" class="btnRegister" name="docsub1" value="Login" />
                                        </div>
                                    </div>
                                </form>
                            </div>


                            <div class="tab-pane fade show" id="admin" role="tabpanel" aria-labelledby="profile-tab">
                                <h1 class="register-heading">Login as Admin</h1>
                                
                                <form method="post" action="adminLogin">
                                    <div class="row register-form">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                 <input type="email" class="form-control " placeholder="Your Email *" name="email"  / style="font-size: 2rem;
                                    border-radius: 1.25rem;">
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="password" class="form-control" placeholder="Password *"
                                                    name="password" required/ style="font-size: 2rem;
                                    border-radius: 1.25rem;">
                                            </div>

                                            <input type="submit" class="btnRegister" name="adsub" value="Login" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>





</body>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>

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
		   button: "Okay",
		});
	}
	
		    	 
		 

		     
		     

	$(".alert").fadeTo(8000, 0).slideUp(8000, function(){
	    $(this).remove();
	});

    var login_modal = document.getElementById('login_section')
	$(window).click(function (event) {
		if (event.target == login_modal) {
			login_modal.style.display = "none";
		}
	})
	$('#login_close').click(function () {
		$('#login_section').css('display', 'none');
	})
	$('#login').click(function () {
		console.log("bishal")
		$('#signup_section').css('display', 'none');
		$('#login_section').css('display', 'block');
	})
	
	
</script>
<script src="js/script.js"></script>

	
</html>