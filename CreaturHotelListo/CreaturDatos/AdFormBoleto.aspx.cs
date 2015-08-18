using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreaturDatos
{
    public partial class AdFormBoleto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbIdBoleto.Text = Session["Id"].ToString();
            tbFechaCreacionAgente.Text = Session["FechaCreacion"].ToString();
            tbGkDato.Text = Session["GK"].ToString();
            tbHotelDato.Text = Session["Hotel"].ToString();
            tbCdHotelDato.Text = Session["CiudadUbicacionHotel"].ToString();
            tbHuespedDato.Text = Session["Huesped"].ToString();
            tbFechaInDato.Text = Session["FechaCheckIn"].ToString();
            tbFechaOutDato.Text = Session["FechaCheckOut"].ToString();
            tbconfirDato.Text = Session["Confirmacion"].ToString();
            tbNocheDato.Text = Session["NumeroNoches"].ToString();
            tbFormPagDato.Text = Session["FormaPago"].ToString();
            tbAgenDato.Text = Session["Agente"].ToString();
        }

        protected void imgBtnHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("menuAgentes.aspx");
        }

        protected void btnGenerar_Click(object sender, EventArgs e)
        {
            Session["Id"] = tbIdBoleto.Text;
            Session["FechaCreacion"] = tbFechaCreacionAgente.Text;
            Session["GK"] = tbGkDato.Text;
            Session["Hotel"] = tbHotelDato.Text;
            Session["CiudadUbicacionHotel"] = tbCdHotelDato.Text;
            Session["Huesped"] = tbHuespedDato.Text;
            Session["FechaCheckIn"] = tbFechaInDato.Text;
            Session["FechaCheckOut"] = tbFechaOutDato.Text;
            Session["Confirmacion"] = tbconfirDato.Text;
            Session["NumeroNoches"] = tbNocheDato.Text;
            Session["FormaPago"] = tbFormPagDato.Text;
            Session["Agente"] = tbAgenDato.Text;


            string dirHotel = tbDireccHotel.Text;
            string telHotel = tbNumTel.Text;
            string pax = tbNumPersonas.Text;
            string Serv = cmbTipoServicio.SelectedValue;
            string hab = tbTipoHaabitacion.Text;
            string desHab = tbDescipcionHabitacion.Text;
            Response.Redirect("Boleto.aspx?dirHotel=" + dirHotel + "&telHotel=" + telHotel + "&pax=" + pax + "&Serv=" + Serv + "&hab=" + hab + "&desHab=" + desHab);

            //CreaturDatos.Datos.tblCupon agreCupon = new Datos.tblCupon();
            //{
            //    agreCupon.DireccionHotel = tbDireccHotel.Text;
            //    agreCupon.NumeroTelefono = tbNumTel.Text;
            //    agreCupon.TipoServicio = cmbTipoServicio.SelectedValue;
            //    agreCupon.NumeroPersonas = tbNumPersonas.Text;
            //    agreCupon.TipoHabitacion = tbTipoHaabitacion.Text;
            //    agreCupon.DescripcionHabitacion = tbDescipcionHabitacion.Text;
            //    agreCupon.tblDatosId = Convert.ToInt32(tbIdBoleto.Text);

            //    using (CreaturDatos.Datos.ModelCreaturHotelesContainer conCup = new Datos.ModelCreaturHotelesContainer())
            //    {
            //        conCup.tblCupon.Add(agreCupon);
            //        conCup.SaveChanges();
            //        
            //    }
            //}

        }

        protected void btnGenerarIng_Click(object sender, EventArgs e)
        {
            Session["Id"] = tbIdBoleto.Text;
            Session["FechaCreacion"] = tbFechaCreacionAgente.Text;
            Session["GK"] = tbGkDato.Text;
            Session["Hotel"] = tbHotelDato.Text;
            Session["CiudadUbicacionHotel"] = tbCdHotelDato.Text;
            Session["Huesped"] = tbHuespedDato.Text;
            Session["FechaCheckIn"] = tbFechaInDato.Text;
            Session["FechaCheckOut"] = tbFechaOutDato.Text;
            Session["Confirmacion"] = tbconfirDato.Text;
            Session["NumeroNoches"] = tbNocheDato.Text;
            Session["FormaPago"] = tbFormPagDato.Text;
            Session["Agente"] = tbAgenDato.Text;


            string dirHotel = tbDireccHotel.Text;
            string telHotel = tbNumTel.Text;
            string pax = tbNumPersonas.Text;
            string Serv = cmbTipoServicio.SelectedValue;
            string hab = tbTipoHaabitacion.Text;
            string desHab = tbDescipcionHabitacion.Text;
            Response.Redirect("BoletoIng.aspx?dirHotel=" + dirHotel + "&telHotel=" + telHotel + "&pax=" + pax + "&Serv=" + Serv + "&hab=" + hab + "&desHab=" + desHab);
        }
    }
}