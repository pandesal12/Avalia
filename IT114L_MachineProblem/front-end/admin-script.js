//Navigation Bar----------------------------------------------------------
const nav = document.querySelector(".nav");
    searchIcon = document.querySelector("#searchIcon"),
    navOpenBtn = document.querySelector(".navOpenBtn"),
    navCloseBtn = document.querySelector(".navCloseBtn");
    userProf2 = document.querySelector(".userprofile-visible");

    searchIcon.addEventListener("click", () => {
        // sumisilip pa si edna, may error pa
        if (window.matchMedia("(max-width: 768px)").matches) {
            userProf2.style.display = "none";
        } else {
            userProf2.style.display = "flex";
        }

        nav.classList.toggle("openSearch");
        nav.classList.remove("openNav");
        if (nav.classList.contains("openSearch")) {
            searchIcon.classList.replace("uil-search", "uil-times")
            if (userProf2.style.display === "flex") {
                userProf2.style.display = "none";
            }
            return;
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
