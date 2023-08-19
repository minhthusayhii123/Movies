<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>


<link rel="stylesheet" href="<c:url value='/templates/user/css/register.css' />">
    
<!-- Fav Icon -->
<link rel="shortcut icon" type="image/x-icon" href="<c:url value='/templates/user/img/fav-icon.png'/>">

<!-- Font Awesome-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<!-- Bootstrap Icon -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<!--Bootstrap css-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<section class="overflow-hidden">
        <div class="row d-flex align-items-center w-100">
            <div class="col">
                <div class="row g-0">
                    <div class="auth-sidebar col-md-6 col-lg-4 d-none d-md-block vh-100"
                        style="background-color: #F3D284;">
                        <header class="p-5">
                            <a href="#">Movievel</a>
                            <h1>Discover the world’s top Designers & Creatives.</h1>
                        </header>

                        <div class="artwork d-flex flex-column justify-content-end">
                            <div class="artwork-image">
                                <img src="<c:url value='/templates/user/img/auth-side-2.png' />"
                                    alt="login form" class="img-fluid" width="450" />
                            </div>
                            <p class="artwork-attribution px-5">
                                Art by
                                <a href="https://www.instagram.com/mthusayhi_/" class="url">@mthusayhi_</a>
                            </p>
                        </div>
                    </div>

                    <div class="content col-md-6 col-lg-8 ">
                        <nav class="auth-nav d-flex justify-content-end px-4 py-4">
                            <p class="auth-link">
                                Already a member?
                                <a href="login">Sign In</a>
                            </p>
                        </nav>
                        <div class="card-body p-4 p-lg-5 d-flex align-items-center justify-content-center">
                            <form class="mx-5" action="register" method="POST">
                                <div class="header d-flex align-items-center mb-4 pb-1">
                                    <span class="fw-bold mb-0">Sign up to Dribbble</span>
                                </div>

                                <div class="auth-connections pt-1 mb-4">
                                    <a href="#" class="google-connect-btn btn btn-lg btn-block me-2">
                                        <i class="fa-brands fa-google"></i>
                                        <span class="px-3">Sign up with Google</span>
                                    </a>
                                    <a href="#" class="twitter-connect-btn btn btn-lg btn-block">
                                        <i class="fa-brands fa-twitter"></i>
                                    </a>
                                </div>

                                <div class="divider d-flex align-items-center justify-content-center my-4">
                                    <p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="username">Username</label>
                                            <input type="text" id="username"
                                                class="form-control form-control-lg" name="username" required/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-outline mb-4">
		                                    <label class="form-label" for="fullname">Fullname</label>
		                                    <input type="text" id="fullname"
		                                        class="form-control form-control-lg" name="fullname" required/>
		                                </div>
                                    </div>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="form2Example17">Email</label>
                                    <input type="email" id="form2Example17" 
                                    	class="form-control form-control-lg" name="email" required/>
                                </div>
                                
                                <div class="form-outline mb-4">
                                    <label class="form-label" for="form2Example27">Password</label>
                                    <input type="password" id="form2Example27" 
                                    class="form-control form-control-lg" name="password" required/>
                               	</div>
                               	
                               	<div class="form-outline mb-4">
                                    <label class="form-label" for="form2Example27">Confirm Password</label>
                                    <input type="password" id="form2Example27" 
                                    class="form-control form-control-lg" name="cfmPass" required/>
                               	</div>

                                <div class="form-check mb-4">
                                    <input type="checkbox" class="form-check-input" id="form2Example3" required>
                                    <label class="form-check-label" for="form2Example3">
                                        Creating an account means you’re okay with our
                                        <a href="#!" class="small text-muted">Terms of use.</a>
                                        <a href="#!" class="small text-muted">Privacy policy</a>
                                        , and our default
                                        <a href="#!" class="small text-muted">Notification Settings</a>.
                                    </label>
                                </div>

                                <div class="pt-1 mb-4 sign-in">
                                    <button class="btn btn-lg btn-block">Create account</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.7/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/js/bootstrap.min.js"></script>
</body>
</html>