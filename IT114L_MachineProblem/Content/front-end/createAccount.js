window.onload = function () {
    console.log("Window loaded");
    const inputs = document.querySelectorAll(".input-field");

    inputs.forEach((ipt) => {
        ipt.addEventListener("focus", () => {
            ipt.parentNode.classList.add("focus");
            ipt.parentNode.classList.add("not-empty");
        });
        ipt.addEventListener("blur", () => {
            if (ipt.value === "") {
                ipt.parentNode.classList.remove("not-empty");
            }
            ipt.parentNode.classList.remove("focus");
        });
    });
};