using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Windows.Forms;

namespace CreaturDatos
{
    public class Email
    {
        MailMessage men = new MailMessage();
        SmtpClient smtp = new SmtpClient();


        public bool EnviarCorreo(string from, string password, string mensaje)
        {
            try
            {
                men.From = new MailAddress(from);
                men.To.Add(new MailAddress("jcordero@vsabtc.com"));
                men.To.Add(new MailAddress("pepesan91@hotmail.com"));
                //men.To.Add(new MailAddress(to));
                men.Subject = "Prueba";
                men.Body = mensaje;
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new NetworkCredential(from, password);
                smtp.EnableSsl = true;
                smtp.Send(men);
                return true;
            }
            catch (Exception)
            {
                MessageBox.Show("No hay conexión");
                throw;
            }
        }
    }
}