<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "/common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${video.title}</title>
	<%@ include file = "/common/head.jsp" %>
</head>

<body>
    <!-- Header -->
    <%@ include file = "/common/header.jsp" %>
        
    <!-- Play Movie Container -->
    <div class="play-container container">
        <!-- Play Image -->
        <img src="${video.poster}" alt="" class="play-img">
        <!-- Play Text -->
        <div class="play-text">
            <h2>${video.title}</h2>
            <!-- Ratings -->
            <div class="rating">
                <i class='bx bxs-star'></i>
                <i class='bx bxs-star'></i>
                <i class='bx bxs-star'></i>
                <i class='bx bxs-star'></i>
                <i class='bx bxs-star-half'></i>
            </div>

            <!-- Tags -->
            <div class="tags">
                <span>${video.views} views</span>
            </div>
			<c:if test="${not empty sessionScope.currentUser}">
				<!-- Trailer Button -->
	            <div class="action-video">
	                <button id="likeOrUnlikeBtn" class="watch-btn">
	                	<c:choose>
	                		<c:when test="${flagLikedBtn == true }">
	                			<i id="likeOrUnlikeItem" class='bx bxs-heart' style="color:red;"></i>
	                		</c:when>
	                		<c:otherwise>
	                			<i id="likeOrUnlikeItem" class='bx bxs-heart'></i>
	                		</c:otherwise>
	                	</c:choose>
	                </button>
	                <a href="" class="watch-btn"><i class='bx bx-share'></i></a>
	            </div>
			</c:if>
        </div>

        <!-- Play Btn -->
        <i class='bx bx-right-arrow play-movie'></i>
        <!-- Video Container -->
        <div class="video-container">
            <!-- Video Box -->
            <div class="video-box">
            	<iframe id="myvideo" src="http://www.youtube.com/embed/${video.href}"></iframe>
                <!-- Close video Icon-->
                <i class='bx bx-x close-video'></i>
            </div>
        </div>
    </div>
    
    		
    <!-- About -->
    <div class="about-movie container">
        <h2>${video.title}</h2>
        <p>${video.description}</p>

        <!-- Movie Cast -->
        <h2 class="cast-heading">Movie Cast</h2>
        <div class="cast">
            <div class="cast-box">
                <img src="<c:url value='/templates/user/play-page/cast1.jpg' />" alt="" class="cast-img">
                <span class="cast-title">Dwayne Johnson</span>
            </div>
            <div class="cast-box">
                <img src="<c:url value='/templates/user/play-page/cast2.jpg' />" alt="" class="cast-img">
                <span class="cast-title">Jaren Gillan</span>
            </div>
            <div class="cast-box">
                <img src="<c:url value='/templates/user/play-page/cast3.jpg' />" alt="" class="cast-img">
                <span class="cast-title">Kevin Hart</span>
            </div>
            <div class="cast-box">
                <img src="<c:url value='/templates/user/play-page/cast4.jpg' />" alt="" class="cast-img">
                <span class="cast-title">Jack Black</span>
            </div>
            <div class="cast-box">
                <img src="<c:url value='/templates/user/play-page/cast5.jpg' />" alt="" class="cast-img">
                <span class="cast-title">Nick Jonas</span>
            </div>
            <div class="cast-box">
                <img src="<c:url value='/templates/user/play-page/cast6.jpg' />" alt="" class="cast-img">
                <span class="cast-title">Madison Iseman</span>
            </div>
        </div>
    </div>

    <!-- Download -->
    <div class="download">
        <h2 class="download-title">Download Movies</h2>
        <div class="download-links">
            <a href="play-page/Jumanji.mp4" download>480p</a>
            <a href="play-page/Jumanji.mp4" download>7200p</a>
            <a href="play-page/Jumanji.mp4" download>1080p</a>
        </div>
    </div>

    <!-- Movies Section Start -->
    <section class="movies container" id="movies">
        <!-- Heading -->
        <div class="heading">
            <h2 class="heading-title">Movies And Show</h2>
        </div>
        <!-- Movies Content -->
        <div class="movies-content">
            <!-- Movies Box 1 -->
            <div class="movie-box">
                <img src="<c:url value='templates/user/img/movie-1.jpg' />" alt="popular movie" class="movie-box-img">
                <div class="box-text">
                    <h2 class="movie-title">Jumanji: Welcome to the Jungle</h2>
                    <span class="movie-type">Action</span>
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>

            <!-- Movies Box 2 -->
            <div class="movie-box">
                <img src="<c:url value='templates/user/img/movie-2.jpg' />" alt="popular movie" class="movie-box-img">
                <div class="box-text">
                    <h2 class="movie-title">Hitman's Wife's Bodyguard</h2>
                    <span class="movie-type">Action/Comedy</span>
                    <a href="#" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>

            <!-- Movies Box 3 -->
            <div class="movie-box">
                <img src="<c:url value='templates/user/img/movie-3.jpg' />" alt="popular movie" class="movie-box-img">
                <div class="box-text">
                    <h2 class="movie-title">Shang-Chi</h2>
                    <span class="movie-type">Action/Sci-Fi</span>
                    <a href="#" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>

            <!-- Movies Box 4 -->
            <div class="movie-box">
                <img src="<c:url value='templates/user/img/movie-4.jpg' />" alt="popular movie" class="movie-box-img">
                <div class="box-text">
                    <h2 class="movie-title">Eternals</h2>
                    <span class="movie-type">Action/Sci-Fi</span>
                    <a href="#" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>

            <!-- Movies Box 5 -->
            <div class="movie-box">
                <img src="<c:url value='templates/user/img/movie-5.jpg' />" alt="popular movie" class="movie-box-img">
                <div class="box-text">
                    <h2 class="movie-title">Spectre</h2>
                    <span class="movie-type">Action</span>
                    <a href="#" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>

            <!-- Movies Box 6 -->
            <div class="movie-box">
                <img src="<c:url value='templates/user/img/movie-6.jpg' />" alt="popular movie" class="movie-box-img">
                <div class="box-text">
                    <h2 class="movie-title">Money Heist</h2>
                    <span class="movie-type">Action/Sci-Fi</span>
                    <a href="#" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>

            <!-- Movies Box 7 -->
            <div class="movie-box">
                <img src="<c:url value='templates/user/img/movie-7.jpg' />" alt="popular movie" class="movie-box-img">
                <div class="box-text">
                    <h2 class="movie-title">The Wolverine</h2>
                    <span class="movie-type">Action/Sci-Fi</span>
                    <a href="#" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>

            <!-- Movies Box 8 -->
            <div class="movie-box">
                <img src="<c:url value='templates/user/img/movie-8.jpg' />" alt="popular movie" class="movie-box-img">
                <div class="box-text">
                    <h2 class="movie-title">Johnny English</h2>
                    <span class="movie-type">Action/Comedy</span>
                    <a href="#" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- Movies Section End -->
    
    <input id="videoIdHdn" type="hidden" value="${video.href}">
	
    <%@ include file ="/common/footer.jsp" %>
    
    <script>
    	$('#likeOrUnlikeBtn').click(function() {
    		var videoId = $('#videoIdHdn').val();
    		$.ajax({
    			url: 'video?action=like&id=' + videoId,
    		}).then(function(data){
    			var color = $('#likeOrUnlikeItem').css('color');
    			if(color == 'red'){
    				$('#likeOrUnlikeItem').css('color', 'white');
    			} else {
    				$('#likeOrUnlikeItem').css('color', 'red');
    			}
    		}).fail(function(error){
    			alert('Oops!!! Please try again')
    		});
		});
    </script>
</body>

</html>