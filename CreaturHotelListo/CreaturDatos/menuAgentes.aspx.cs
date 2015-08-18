using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreaturDatos
{
    public partial class menuAgentes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
                Response.Redirect("Index.aspx");
        }

        protected void imgBtnAgreDatos_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdAgentes.aspx", true);
        }

        protected void imgVerDatos_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MostrarDatosAgentes.aspx", true);
        }

        protected void imgCerrarSesionMenuAgentes_Click(object sender, ImageClickEventArgs e)
        {
            this.Page.Session.Abandon();
            Response.Redirect("Index.aspx");
        }
    }
}