//Navigation Bar----------------------------------------------------------
const nav = document.querySelector(".nav");
searchIcon = document.querySelector("#searchIcon"),
    navOpenBtn = document.querySelector(".navOpenBtn"),
    navCloseBtn = document.querySelector(".navCloseBtn");
userProf2 = document.querySelector(".userprofile-visible");

searchIcon.addEventListener("click", () => {
    x
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

//NavLink
const links = document.querySelectorAll('.nav-links a');

links.forEach(link => {
    link.addEventListener('click', function (event) {

        links.forEach(otherLink => {
            if (otherLink !== link) {
                otherLink.classList.remove('active');
            }
        });

        link.classList.add('active');
    });
});



function openPopup(title) {
    window.location.href = 'editMovie.aspx?title=' + title;
}
function closePopup() {
    window.location.href = 'Manage-Admin.aspx';
}
