using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace Administrator.Models
{
    public class Email
    {
        public void SendEmail(string firstName, string email, string url1, string url2)
        {
            using (MailMessage mm = new MailMessage("ceb.codelions@gmail.com", email))
            {
                mm.Subject = "Account Conformation";
                string body = "Hello " + firstName + ",";
                body += "<br /><br />Please click the following link to confirm your Administrator Account use 1234 to log in and be sure to chnage the password once you logged in !";
                body += "<br /><a href = '" + HttpContext.Current.Request.Url.AbsoluteUri.Replace(url1, url2) + "'>Click here to confirm your account.</a>";
                body += "<br /><br />Thanks";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    EnableSsl = true
                };
                NetworkCredential NetworkCred = new NetworkCredential("ceb.codelions@gmail.com", "codelions321");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
        }
    }
}