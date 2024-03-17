//Navigation Bar----------------------------------------------------------
const nav = document.querySelector(".nav");
searchIcon = document.querySelector("#searchIcon"),
    navOpenBtn = document.querySelector(".navOpenBtn"),
    navCloseBtn = document.querySelector(".navCloseBtn");

searchIcon.addEventListener("click", () => {
    nav.classList.toggle("openSearch");
    nav.classList.remove("openNav");
    if (nav.classList.contains("openSearch")) {
        return searchIcon.classList.replace("uil-search", "uil-times")
    }
    searchIcon.classList.replace("uil-times", "uil-search")
});

navOpenBtn.addEventListener("click", () => {
    nav.classList.add("openNav");
    nav.classList.remove("openSearch");
    searchIcon.classList.replace("uil-times", "uil-search")

});
navCloseBtn.addEventListener("click", () => {
    nav.classList.remove("openNav");
});

//Carousel----------------------------------------------------------
document.addEventListener("DOMContentLoaded", function () {
    let nextDom = document.getElementById('next');
    let prevDom = document.getElementById('prev');
    let carouselDom = document.querySelector('.carousel');
    let listItemDom = document.querySelector('.carousel .list');
    let thumbnailDom = document.querySelector('.carousel .thumbnail');

    nextDom.addEventListener("click", function (event) {
        event.preventDefault();
        showSlider('next');
    });

    prevDom.addEventListener("click", function (event) {
        event.preventDefault();
        showSlider('prev');
    });

    let timeAutoNext = 7000;
    let autoSlideInterval = setInterval(autoSlide, timeAutoNext);

    function autoSlide() {
        nextDom.click();
    }

    function clearAutoSlide() {
        clearInterval(autoSlideInterval);
    }

    function startAutoSlide() {
        autoSlideInterval = setInterval(autoSlide, timeAutoNext);
    }

    function resetAutoSlide() {
        clearAutoSlide();
        startAutoSlide();
    }

    function showSlider(type) {
        let itemSlider = document.querySelectorAll('.carousel .list .item');
        let itemThumbnail = document.querySelectorAll('.carousel .thumbnail .item');

        if (type === 'next') {
            listItemDom.appendChild(itemSlider[0]);
            thumbnailDom.appendChild(itemThumbnail[0]);
            carouselDom.classList.add('next');
        } else {
            let positionLastItem = itemSlider.length - 1;
            listItemDom.prepend(itemSlider[positionLastItem]);
            thumbnailDom.prepend(itemThumbnail[positionLastItem]);
            carouselDom.classList.add('prev');
        }

        resetAutoSlide();
    }
});

// Filter Tab----------------------------------------------------------
var tabs = document.querySelectorAll(".tabs_wrap ul li");
var all = document.querySelectorAll(".post-box");
var action = document.querySelectorAll(".action");
var adventure = document.querySelectorAll(".adventure");
var comedy = document.querySelectorAll(".comedy");
var drama = document.querySelectorAll(".drama");
var family = document.querySelectorAll(".family");
var fantasy = document.querySelectorAll(".fantasy");
var history_ = document.querySelectorAll(".history");
var horror = document.querySelectorAll(".horror");
var mystery = document.querySelectorAll(".mystery");
var romance = document.querySelectorAll(".romance");
var scifi = document.querySelectorAll(".scifi");
var sport = document.querySelectorAll(".sport");
var thriller = document.querySelectorAll(".thriller");

function hideAllExcept(category) {
    [all, action, adventure, comedy, drama, family, fantasy, history_, horror, mystery, romance, scifi, sport, thriller].forEach((element) => {
        if (element !== category) {
            element.forEach((item) => {
                item.style.display = "none";
            });
        } else {
            element.forEach((item) => {
                item.style.display = "block";
            });
        }
    });
}

tabs.forEach((tab) => {
    tab.addEventListener("click", () => {
        // If clicked tab is "All", deactivate other tabs
        if (tab.getAttribute("data-tabs") === "all") {
            tabs.forEach((t) => {
                if (t !== tab && t.classList.contains("active")) {
                    t.classList.remove("active");
                }
            });
        } else {
            // Toggle the "active" class for the clicked tab
            tab.classList.toggle("active");
        }

        // Get all active categories
        var activeCategories = [];
        tabs.forEach((t) => {
            if (t.classList.contains("active")) {
                activeCategories.push(t.getAttribute("data-tabs"));
            }
        });

        // Update the display based on the active categories
        all.forEach((item) => {
            if (activeCategories.length === 0 || activeCategories.every(category => item.classList.contains(category))) {
                item.style.display = "block";
            } else {
                item.style.display = "none";
            }
        });
    });
});