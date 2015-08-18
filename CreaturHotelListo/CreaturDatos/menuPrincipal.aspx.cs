using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreaturDatos
{
    public partial class menuPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgAddUsuario_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminCreatur.aspx");
        }

        protected void imgBtnVerUsuarios_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MostrarUsuarios.aspx");
        }

        protected void imgBtnAgreDatos_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AgregarDatos.aspx");
        }

        protected void imgVerDatos_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MostrarDatoAdmin.aspx");
        }

        
    }
}