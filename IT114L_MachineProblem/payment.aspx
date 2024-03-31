<%@ Page Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="IT114L_MachineProblem.WebForm2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <link href="front-end/styles/BookingandPayment.css" rel="stylesheet" />
    <div class="page-container">
        <div class="movie-details">
            <!--Sample Details-->
            <img src="front-end/images/avalia_logo.png" />
            <h2 id="movieName">Movie name</h2>
            <p>Details:</p>
            <p id="location">Venue:</p>
            <p id="duration">Duration:</p>
            <p id="date">Date:</p>
            <p id="time">Time:</p>
            <p id="price">Amount:</p>
        </div>

        <div class="payment-section">
            <h2>Payment Details</h2>
            <asp:Panel ID="pnlPayment" runat="server">
                <div id="paymentList">
                    <label class="paymentOption">
                        <input type="radio" name="paymentMethod" value="Visa"/>
                        <img src="Content/front-end/assets/visa.jpg" alt="Visa" />
                    </label>
                    <label class="paymentOption">
                        <input type="radio" name="paymentMethod" value="Mastercard"/>
                        <img src="Content/front-end/assets/mastercard.jpg" alt="Mastercard" />
                    </label>
                    <label class="paymentOption">
                        <input type="radio" name="paymentMethod" value="GCash"/>
                        <img src="Content/front-end/assets/gcash.jpg" alt="GCash" />
                    </label>
                </div>
                <div class="textbox-container">
                    <div>
                        <label for="CardNumber">Card Number:</label><br />
                        <asp:TextBox ID="cardNumber" runat="server" CssClass="form-textbox" placeholder="Card Number" MaxLength="16"/><br />
                    </div>
                    <div>
                        <label for="CVV">CVV:</label><br />
                        <asp:TextBox ID="cvv" runat="server" TextMode="Password" CssClass="form-textbox" placeholder="CVV" MaxLength="3"/><br />
                    </div>
                    <div>
                        <label for="PIN">PIN:</label><br />
                        <asp:TextBox ID="pinCode" runat="server" TextMode="Password" CssClass="form-textbox" placeholder="Pin Code" MaxLength="4"/><br />
                    </div>
                    <asp:Button ID="btnPay" runat="server" Text="Proceed to Checkout" CssClass="btnSeats" OnClientClick="purchaseSeats(); return false;"/>
                </div>
            </asp:Panel>
        </div>
    </div>

    <script>
        // Retrieve selected items from localStorage
        window.onload = function () {
            var paymentOptions = document.querySelectorAll('.paymentOption');
            paymentOptions.forEach(function (option) {
                option.addEventListener('click', function () {
                    // Remove border from all options
                    paymentOptions.forEach(function (opt) {
                        opt.querySelector('img').classList.remove('selected');
                    });
                    // Add border to the selected option
                    option.querySelector('img').classList.add('selected');
                });
            });

            document.getElementById("time").innerText += " " + localStorage.getItem("time");
            document.getElementById("date").innerText += " " + localStorage.getItem("date");
            document.getElementById("price").innerText += " " + localStorage.getItem("price");
            document.getElementById("location").innerText += " " + localStorage.getItem("location");
            document.getElementById("duration").innerText += " " + localStorage.getItem("duration");
            document.getElementById("movieName").innerText = localStorage.getItem("movieName");


            var cvv = document.getElementById('<%= cvv.ClientID %>').value;
            var pin = document.getElementById('<%= pinCode.ClientID %>').value;
            var cardNumber = document.getElementById('<%= cardNumber.ClientID %>').value;
            var amount = document.getElementById("price").innerText.trim().replace(/\D/g, '');

            localStorage.setItem("cvv", cvv);
            localStorage.setItem("pin", pin);
            localStorage.setItem("cardNumber", cardNumber);
            localStorage.setItem("amount", amount);
        };

    </script>
</asp:Content>