using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace IT114L_MachineProblem
{
    public class UserController : ApiController
    {
        private static Dictionary<string, string> users = new Dictionary<string, string>(); // Change this to DB database instead of dictionary

        [HttpPost]
        [Route("api/signup")]
        public IHttpActionResult Register([FromBody] RegistrationData registrationData)
        {
            if (users.ContainsKey(registrationData.Username))
            {
                return BadRequest("Username already exists.");
            }

            users.Add(registrationData.Username, registrationData.Password);
            return Ok("Registration successful.");
        }

        [HttpPost]
        [Route("api/signin")]
        public IHttpActionResult Login([FromBody] LoginData loginData)
        {
            if (users.TryGetValue(loginData.Username, out string storedPassword))
            {
                if (storedPassword == loginData.Password)
                {
                    return Ok("Login successful.");
                }
            }

            return Unauthorized();
        }

        [HttpPost]
        [Route("api/admin/resetpassword")]
        public IHttpActionResult ResetPassword([FromBody] ResetPasswordData resetPasswordData)
        {
            // Implement admin-specific logic here
            // For example, you can reset the password for a given user
            if (users.ContainsKey(resetPasswordData.Username))
            {
                users[resetPasswordData.Username] = resetPasswordData.NewPassword;
                return Ok("Password reset successful.");
            }

            return NotFound();
        }
    }

    public class RegistrationData
    {
        public string Username { get; set; }
        public string Password { get; set; }
    }

    public class LoginData
    {
        public string Username { get; set; }
        public string Password { get; set; }
    }

    public class ResetPasswordData
    {
        public string Username { get; set; }
        public string NewPassword { get; set; }
    }
}