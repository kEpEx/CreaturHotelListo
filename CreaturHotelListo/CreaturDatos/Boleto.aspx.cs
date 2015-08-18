using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CreaturDatos
{
    public partial class Boleto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbIdBoleto.Text = Session["Id"].ToString();
            lblFechaDato.Text = Session["FechaCreacion"].ToString();
            lblExpeDato.Text = Session["GK"].ToString();
            lblNombreHotelDato.Text = Session["Hotel"].ToString();
            lbldirecDato.Text = Request.QueryString["dirHotel"];
            lblCiudadDato.Text = Session["CiudadUbicacionHotel"].ToString();
            lblTelDato.Text = Request.QueryString["telHotel"];
            lblHuespedDato.Text = Session["Huesped"].ToString();
            lblFechaLlegadaDato.Text = Session["FechaCheckIn"].ToString();
            lblFechaSalidaDato.Text = Session["FechaCheckOut"].ToString();
            lblPaxDato.Text = Request.QueryString["pax"];
            lblconDato.Text = Session["Confirmacion"].ToString();
            lblServDato.Text = Request.QueryString["Serv"];
            lblNocheDato.Text = Session["NumeroNoches"].ToString();
            lblHabDato.Text = Request.QueryString["hab"];
            lblEspHabDato.Text = Request.QueryString["desHab"];
            lblFormPagoDato.Text = Session["FormaPago"].ToString();
            lblAgenteDato.Text = Session["Agente"].ToString();
        }

        protected void btnImprimirEsp_Click(object sender, ImageClickEventArgs e)
        
        {
            MessageBox.Show("El boton de imprimir esta en construccion, como sugerencia tome una captura de pantalla al cupon, peguela en un documento Word"+
            " o el de su preferencia e imprima desde ahi", "En Contruccion");
            
        }

        protected void imgBtnHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("menuAgentes.aspx");
        }
    }
}