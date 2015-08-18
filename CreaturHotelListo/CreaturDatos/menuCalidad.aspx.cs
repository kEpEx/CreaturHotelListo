using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreaturDatos
{
    public partial class menuCalidad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void imgBtnAgreDatos_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("AgregarDatosCalidad.aspx", true);
        }

        protected void imgVerDatos_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("MostrarDatosCalidad.aspx", true);
        }

        protected void imgCerrarSesionMenuCalidad_Click(object sender, ImageClickEventArgs e)
        {
            this.Page.Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}