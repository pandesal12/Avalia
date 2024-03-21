//Usage (Copy This):
// <div class="DivisionContainer"></div> //Use this <--------


//Make adjustments here:
var initializeComponents = document.querySelector(".DivisionContainer");
initializeComponents.innerHTML = `
<div class="DivisionContainer">
    <div class="alpNum">
        <div class="numbering" data-row-size="6" data-col-size="1" data-top-gap-size="70" data-start-at="0" data-mode="alp"></div>
        <div class="numbering" data-row-size="4" data-col-size="1" data-top-gap-size="60" data-start-at="7" data-mode="alp"></div>
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
        <div class="numbering" data-row-size="4" data-col-size="1" data-top-gap-size="60" data-start-at="7" data-mode="alp"></div>
    </div>
</div>
`
//Demo (Occupied seats) Variables: (Taken from Database for example)
const takenSeats = ['B1','B2','A5','A3','C2'];

var seatElement = document.querySelectorAll(".subSeatContainer");
seatElement.forEach(function(seatElement) {
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
            const seatPos = `${String.fromCharCode('A'.charCodeAt(0) + parseInt(seatElement.dataset.startAt) + i)}${j+1}`;
            var seat = document.createElement("div");
            seat.setAttribute("class", "seat");
            seat.setAttribute("data-seat-status", `${takenSeats.includes(seatPos)?'Occupied':'Free'}`);
            seat.setAttribute("data-seat-pos", `${seatPos}`);
            seat.addEventListener("click", handleSeatClick);
            seatElement.appendChild(seat);
        }
    }
});

var numbering = document.querySelectorAll(".numbering");
numbering.forEach(function(numbering) {

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
    this.dataset.seatStatus = (currentStatus === 'Free') ? 'Selected' : (currentStatus === 'Selected') ? 'Free' : currentStatus;
}