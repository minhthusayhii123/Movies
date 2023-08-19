<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "/common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My favorites</title>
	<%@ include file = "/common/head.jsp" %>
</head>

<body>
    <!-- Header -->
    <%@ include file = "/common/header.jsp" %>
        
    <!-- Home -->
    <section class="home container" id="home">
        <!-- Home Image -->
        <img src="<c:url value='/templates/user/img/home-background.png' />" alt="home home-background" class="home-img">
        <!-- Home Text -->
        <div class="home-text">
            <h1 class="home-title">Hitman'Wife's <br>Bodyguard</h1>
            <p>Releasing 10 April</p>
            <a href="#" class="watch-btn">
                <i class='bx bx-right-arrow'></i>
                <span>Watch the trailer</span>
            </a>
        </div>
    </section>
    <!-- Home End -->

    <!-- Movies Section Start -->
    <section class="movies container" id="movies">
        <!-- Heading -->
        <div class="heading">
            <h2 class="heading-title">List Favorites</h2>
        </div>
        <!-- Movies Content -->
        <div class="movies-content">
        	<c:forEach items="${videos}" var="video">
	        	<!-- Movies Box 1 -->
	            <div class="movie-box">
	                <img src="${video.poster}" alt="popular movie" class="movie-box-img">
	                <div class="box-text">
	                    <a href="<c:url value='/video?action=watch&id=${video.href}' />" class="movie-title">${video.title}</a>
	                    <div style="display: flex; justify-content: space-between; ">
	                        <span class="movie-type">${video.views} views</span>
	                        <span class="movie-type">${video.shares} shares</span>
                    	</div>
	                </div>
	            </div>
        	</c:forEach>
        </div>
    </section>
    <!-- Movies Section End -->
    
    <!-- Next Page -->
    <div class="next-page">
        <a href="#" class="next-btn">Next Page</a>
    </div>

    <!-- Popular Section Start-->
    <section class="popular container" id="popular">
        <!-- Heading -->
        <div class="heading">
            <h2 class="heading-title">Popular Movies</h2>
            <!-- Swiper Buttons -->
            <div class="swiper-btn">
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
        <!-- Content -->
        <div class="popular-content swiper">
            <div class="swiper-wrapper">
                <!-- Movies Box 1 -->
                <div class="swiper-slide">
                    <div class="movie-box">
                        <img src="<c:url value='/templates/user/img/popular-movie-1.jpg' />" alt="popular movie" class="movie-box-img">
                        <div class="box-text">
                            <h2 class="movie-title">Spider-Man: No Way Home</h2>
                            <span class="movie-type">Action</span>
                            <a href="#" class="watch-btn play-btn">
                                <i class='bx bx-right-arrow'></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Movies Box 2 -->
                <div class="swiper-slide">
                    <div class="movie-box">
                        <img src="<c:url value='/templates/user/img/popular-movie-2.jpg' />" alt="popular movie" class="movie-box-img">
                        <div class="box-text">
                            <h2 class="movie-title">Jungle Cruise</h2>
                            <span class="movie-type">Action/Adventure</span>
                            <a href="#" class="watch-btn play-btn">
                                <i class='bx bx-right-arrow'></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Movies Box 3 -->
                <div class="swiper-slide">
                    <div class="movie-box">
                        <img src="<c:url value='/templates/user/img/popular-movie-3.jpg' />" alt="popular movie" class="movie-box-img">
                        <div class="box-text">
                            <h2 class="movie-title">Loki</h2>
                            <span class="movie-type">Action</span>
                            <a href="#" class="watch-btn play-btn">
                                <i class='bx bx-right-arrow'></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Movies Box 4 -->
                <div class="swiper-slide">
                    <div class="movie-box">
                        <img src="<c:url value='/templates/user/img/popular-movie-4.jpg' />" alt="popular movie" class="movie-box-img">
                        <div class="box-text">
                            <h2 class="movie-title">Squid Game</h2>
                            <span class="movie-type">Action/Dramar</span>
                            <a href="#" class="watch-btn play-btn">
                                <i class='bx bx-right-arrow'></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Movies Box 5 -->
                <div class="swiper-slide">
                    <div class="movie-box">
                        <img src="<c:url value='/templates/user/img/popular-movie-5.jpg' />" alt="popular movie" class="movie-box-img">
                        <div class="box-text">
                            <h2 class="movie-title">The Falcon and the Winter Soldier</h2>
                            <span class="movie-type">Action</span>
                            <a href="#" class="watch-btn play-btn">
                                <i class='bx bx-right-arrow'></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Movies Box 6 -->
                <div class="swiper-slide">
                    <div class="movie-box">
                        <img src="<c:url value='/templates/user/img/popular-movie-6.jpg' />" alt="popular movie" class="movie-box-img">
                        <div class="box-text">
                            <h2 class="movie-title">Hawkeye</h2>
                            <span class="movie-type">Action</span>
                            <a href="#" class="watch-btn play-btn">
                                <i class='bx bx-right-arrow'></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Movies Box 7 -->
                <div class="swiper-slide">
                    <div class="movie-box">
                        <img src="<c:url value='/templates/user/img/popular-movie-7.jpg' />" alt="popular movie" class="movie-box-img">
                        <div class="box-text">
                            <h2 class="movie-title">Agents of S.H.I.E.L.D</h2>
                            <span class="movie-type">Action</span>
                            <a href="#" class="watch-btn play-btn">
                                <i class='bx bx-right-arrow'></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Movies Box 8 -->
                <div class="swiper-slide">
                    <div class="movie-box">
                        <img src="<c:url value='/templates/user/img/popular-movie-8.jpg' />" alt="popular movie" class="movie-box-img">
                        <div class="box-text">
                            <h2 class="movie-title">The Flash</h2>
                            <span class="movie-type">Action/Sci-Fi</span>
                            <a href="#" class="watch-btn play-btn">
                                <i class='bx bx-right-arrow'></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Popular Section End-->

    <%@ include file = "/common/footer.jsp" %>
</body>

</html>