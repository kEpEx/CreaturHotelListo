using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreaturDatos
{
    public partial class menuAdministracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void imgBtnAgreDatos_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AgregarDatosAdministracion.aspx"); 
        }

        protected void imgVerDatos_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MostrarDatosAdministracion.aspx"); 
        }

        protected void imgCerrarSesionMenuAdmon_Click(object sender, ImageClickEventArgs e)
        {
            this.Page.Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}