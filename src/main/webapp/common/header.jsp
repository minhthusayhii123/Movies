<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Header -->
<header>
    <!-- Nav -->
    <div class="nav container">
        <a href="index" class="logo">
            Movie<span>Vel</span>
        </a>
        <!-- Search Box -->
        <div class="search-box">
            <input type="search" name="" id="search-input" placeholder="Search movie">
            <i class='bx bx-search'></i>
        </div>
        <!-- User -->
        <div class="dropdown">
            <div onclick="myFunction()" class="dropbtn user">
                <img src="<c:url value='https://scontent.fsgn13-4.fna.fbcdn.net/v/t39.30808-6/318734836_1312081532667339_5420912284810336710_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=A_x6jC15QJgAX_Fv-fS&_nc_ht=scontent.fsgn13-4.fna&oh=00_AfBaP7E4FUMoTorWa8OgRZQPk6jOmu9jn9OYfZew8J0Q4A&oe=643A44F3' />" alt="user" class="user-img">
            </div>
            <ul id="myDropdown" class="dropdown-content">
	            <c:choose>
	            	<c:when test="${not empty sessionScope.currentUser}">
	            		<li><a href="#">Edit Profile</a></li>
	            		<li><a href="favorites">My favorite</a></li>
	            		<li><a href="history">History</a></li>
	            		<c:if test="${sessionScope.currentUser.isAdmin}">
	            			<li><a href="admin">Admin</a></li>
	            		</c:if>
	            		<li><a href="logout">Logout</a></li>
	            	</c:when>
	            	<c:otherwise>
		                <li><a href="login">Login</a></li>
		                <li><a href="register">Registration</a></li>
	            	</c:otherwise>
	            </c:choose>
            </ul>
        </div>
        <!-- NavBar -->
        <div class="navbar">
            <a href="index" class="nav-link">
                <i class='bx bx-home'></i>
                <span class="nav-link-title">Home</span>
            </a>
            <a href="#popular" class="nav-link">
                <i class='bx bxs-hot'></i>
                <span class="nav-link-title">Trending</span>
            </a>
            <a href="#movies" class="nav-link">
                <i class='bx bx-compass'></i>
                <span class="nav-link-title">Explore</span>
            </a>
            <c:if test="${not empty sessionScope.currentUser}">
            	<a href="favorites" class="nav-link">
	                <i class='bx bx-heart'></i>
	                <span class="nav-link-title">Favourite</span>
	            </a>
	            <a href="history" class="nav-link">
	                <i class='bx bx-tv'></i>
	                <span class="nav-link-title">History</span>
	            </a>
            </c:if>
        </div>
    </div>
</header>