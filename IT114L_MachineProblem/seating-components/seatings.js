
//Usage (Copy This): (link seating.css and seating.js files)
// <div class="DivisionContainer"></div> //Use this <--------


//Make adjustments here:
var initializeComponents = document.querySelector(".DivisionContainer");
initializeComponents.innerHTML = `
<div class="DivisionContainer">
    <div class="alpNum">
        <div class="numbering" data-row-size="6" data-col-size="1" data-top-gap-size="70" data-start-at="0" data-mode="alp"></div>
        <div class="numbering" data-row-size="4" data-col-size="1" data-top-gap-size="60" data-start-at="6" data-mode="alp"></div>
    </div>
    <div class="SeatContainer">

        <div class="numbering" data-row-size="1" data-col-size="20" data-gap-size="10" data-start-at="0" data-mode="num"></div>

        <div class="subSeatContainer" data-row-size="1" data-col-size="8" data-gap-size="10" data-start-at="0"></div>
        <div class="subSeatContainer" data-row-size="1" data-col-size="12" data-gap-size="10" data-start-at="1"></div>
        <div class="subSeatContainer" data-row-size="4" data-col-size="20" data-top-gap-size="10" data-bot-gap-size="60" data-start-at="2"></div>
        <div class="subSeatContainer" data-row-size="4" data-col-size="20" data-start-at="6"></div>


        <div class="numbering" data-row-size="1" data-col-size="20" data-gap-size="10" data-start-at="0" data-mode="num"></div>
    </div>
    <div class="alpNum">
        <div class="numbering" data-row-size="6" data-col-size="1" data-top-gap-size="70" data-start-at="0" data-mode="alp"></div>
        <div class="numbering" data-row-size="4" data-col-size="1" data-top-gap-size="60" data-start-at="6" data-mode="alp"></div>
    </div>

    
</div>
`
//Demo (Occupied seats) Variables: (Taken from Database for example)
const takenSeats = document.querySelector('.HiddenFieldDataHere3').innerHTML.split(',');
console.log(takenSeats);


var seatElement = document.querySelectorAll(".subSeatContainer");
var availableSeats = 180;
var selectedSeats = 0;
seatElement.forEach(function (seatElement) {
    var rowSize = seatElement.dataset.rowSize;
    var colSize = seatElement.dataset.colSize;

    seatElement.style.gridTemplateColumns = `repeat(${colSize}, 1fr)`;
    seatElement.style.gridTemplateRows = `repeat(${rowSize}, 1fr)`;
    seatElement.style.margin = `${seatElement.dataset.gapSize}px`;
    seatElement.style.marginTop = `${seatElement.dataset.topGapSize}px`;
    seatElement.style.marginBottom = `${seatElement.dataset.botGapSize}px`;

    // Add seats
    for (let i = 0; i < rowSize; i++) {
        for (let j = 0; j < colSize; j++) {
            const seatPos = `${String.fromCharCode('A'.charCodeAt(0) + parseInt(seatElement.dataset.startAt) + i)}${j + 1}`;
            var seat = document.createElement("div");
            seat.setAttribute("class", "seatCon");
            seat.setAttribute("data-seat-status", `${takenSeats.includes(seatPos) ? (() => {
                availableSeats -= 1;
                return 'Occupied';
            })() : 'Free'}`);
            seat.setAttribute("data-seat-pos", `${seatPos}`);
            seat.addEventListener("click", handleSeatClick);
            seatElement.appendChild(seat);
        }
    }
});

document.addEventListener("DOMContentLoaded", function () {
    document.querySelector(".totalSeats").innerHTML = "180";
    document.querySelector(".availableSeats").innerHTML = availableSeats;
});

var numbering = document.querySelectorAll(".numbering");
numbering.forEach(function (numbering) {

    var rowSize = numbering.dataset.rowSize;
    var colSize = numbering.dataset.colSize;

    numbering.style.gridTemplateColumns = `repeat(${colSize}, 1fr)`;
    numbering.style.gridTemplateRows = `repeat(${rowSize}, 1fr)`;
    numbering.style.margin = `${numbering.dataset.gapSize}px`;
    numbering.style.marginTop = `${numbering.dataset.topGapSize}px`;
    numbering.style.marginBottom = `${numbering.dataset.botGapSize}px`;

    for (let i = 0; i < rowSize; i++) {
        for (let j = 0; j < colSize; j++) {
            var nums = document.createElement("div");
            nums.setAttribute('class', 'numbers');
            nums.innerHTML = (numbering.dataset.mode === 'num') ? j + 1 : String.fromCharCode('A'.charCodeAt(0) + parseInt(numbering.dataset.startAt) + i);
            numbering.appendChild(nums);
        }
    }
});


function handleSeatClick() {
    const currentStatus = this.dataset.seatStatus;
    const seatPos = this.dataset.seatPos;

    this.dataset.seatStatus = (currentStatus === 'Free') ? (() => {
        document.querySelector(".selectedSeats").innerHTML = ++selectedSeats;
        console.log('clicked');
        return 'Selected';
    })() : (currentStatus === 'Selected') ? (() => {
        document.querySelector(".selectedSeats").innerHTML = --selectedSeats;
        return 'Free';
    })() : currentStatus;

    const hiddenField = document.querySelector(".HiddenFieldDataHere");
    let seatList = hiddenField.innerHTML.split(',');
    if (currentStatus === 'Free') {
        seatList.push(seatPos);
    } else {
        const index = seatList.indexOf(seatPos);
        if (index !== -1) {
            seatList.splice(index, 1);
        }
    }

    hiddenField.innerHTML = seatList.join(',');
    localStorage.setItem("selectedSeats", seatList.join(','));

}

function executeSubmit() {
    event.preventDefault();
    const hiddenField = document.querySelector(".HiddenFieldDataHere");
    //const hiddenField2 = document.querySelector(".HiddenFieldDataHere2");

    var parentWindow = window.parent;
    var username = parentWindow.document.getElementById('user_name2');


    var str = hiddenField.innerHTML;
/*    var username = hiddenField2.innerHTML;*/
    $.ajax({
        type: "POST",
        url: "Schedule-User.aspx/updateData",
        data: JSON.stringify({ a: str, username: username.innerText }), 
        contentType: "application/json; charset=utf-8",
        dataType: "text",
        success: function (response) {
            console.log("Function executed successfully: " + response);
        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.error("Error executing function: " + thrownError);
        }
    });
}





//function showSelected() {
//    event.preventDefault();
//    const selectedSeatConElements = document.querySelectorAll('.seatCon[data-seat-status="Selected"]');
//    selectedSeatConElements.forEach(selectedSeatCon => {
//        selectedSeatCon.dataset.seatPos
//    });
//}

//function showSelected(event) {
//    // Add your code to handle the button click here
//    // For example, you can get the selected seats and perform other actions

//    // Prevent the default form submission behavior
//    event.preventDefault();
//}