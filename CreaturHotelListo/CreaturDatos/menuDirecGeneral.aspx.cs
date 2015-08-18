using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreaturDatos
{
    public partial class menuDirecGeneral : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void imgVerDatos_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("MostrarDatosDireccion.aspx", true);
        }

        protected void imgBtnAgreDatos_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("AgregarDatosDireccion.aspx", true);
        }

        protected void imgCerrarSesionDirecGeneral_Click(object sender, ImageClickEventArgs e)
        {
            this.Page.Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}