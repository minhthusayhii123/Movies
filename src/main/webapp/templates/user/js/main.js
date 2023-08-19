// Swiper
var swiper = new Swiper(".popular-content", {
  slidesPerView: 1,
  spaceBetween: 10,
  autoplay: {
    delay: 755500,
    disableOnInteraction: false,
  },
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  breakpoints: {
    280: {
      slidesPerView: 1,
      spaceBetween: 10,
    },
    320: {
      slidesPerView: 2,
      spaceBetween: 10,
    },
    510: {
      slidesPerView: 2,
      spaceBetween: 10,
    },
    758: {
      slidesPerView: 3,
      spaceBetween: 15,
    },
    900: {
      slidesPerView: 4,
      spaceBetween: 20,
    },
  },
});

// Show Video
let playButton = document.querySelector(".play-movie");
let video = document.querySelector(".video-container");
let myvideo = document.querySelector("#myvideo");
let closebtn = document.querySelector(".close-video");

playButton.addEventListener("click", function() {
  video.classList.add("show-video");
  myvideo.play();
});

closebtn.addEventListener("click", function() {
  video.classList.remove("show-video");
  myvideo.pause();
});

function myFunction() {
  var dropdownMenu = document.getElementById("myDropdown");
  if (dropdownMenu.style.display === "block") {
    dropdownMenu.style.display = "none";
  } else {
    dropdownMenu.style.display = "block";
  }
}

/* Đóng dropdown menu khi người dùng nhấn bất kỳ đâu khác trên trang web */
window.onclick = function(event) {
  if (!event.target.matches('.dropdown-content') && !event.target.matches('button')) {
    var dropdownMenus = document.getElementsByClassName("dropdown-content");
    for (var i = 0; i < dropdownMenus.length; i++) {
      var dropdownMenu = dropdownMenus[i];
      if (dropdownMenu.style.display === "block") {
        dropdownMenu.style.display = "none";
      }
    }
  }
}
