using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace IT114L_MachineProblem
{
    public class BookingAndPayment : ApiController
    {
        private static List<Booking> bookings = new List<Booking>();

        // GET api/booking
        [Route("api/booking")]
        [HttpGet]
        public IHttpActionResult Get()
        {
            return Ok(bookings);
        }

        // POST api/booking
        [Route("api/booking")]
        [HttpPost]
        public IHttpActionResult Post(Booking booking)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            // Simulate payment process
            if (ProcessPayment(booking.Payment))
            {
                bookings.Add(booking);
                return CreatedAtRoute("DefaultApi", new { id = booking.Id }, booking);
            }
            else
            {
                return BadRequest("Payment failed. Please check your card ID, bank, and PIN number.");
            }
        }

        // Simulated payment process (replace with actual implementation)
        private bool ProcessPayment(Payment payment)
        {
            // Here you would perform actual payment processing logic
            // For simulation purposes, let's assume the payment is successful if all required fields are provided
            return !string.IsNullOrEmpty(payment.CardId) &&
                   !string.IsNullOrEmpty(payment.Bank) &&
                   !string.IsNullOrEmpty(payment.PinNumber);
        }
    }

    public class Booking
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Movie { get; set; }
        public List<string> Seats { get; set; }
        public DateTime ShowTime { get; set; }
        public Payment Payment { get; set; }
    }

    public class Payment
    {
        public string CardId { get; set; }
        public string Bank { get; set; }
        public string PinNumber { get; set; }
        // You can include additional payment-related properties as needed
    }
}