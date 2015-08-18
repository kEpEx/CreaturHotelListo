using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace CreaturDatos
{
    public partial class MostrarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void tbBuscar_TextChanged(object sender, EventArgs e)
        {
        
        }
        protected void imgBtnHome_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("menuPrincipal.aspx", true);
        }
        protected void imgBtnExcel_Click(object sender, ImageClickEventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            StringWriter sw = new StringWriter(sb);
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            Page page = new Page();
            HtmlForm form = new HtmlForm();

            gdUsuario.EnableViewState = false;

            // Deshabilitar la validación de eventos, sólo asp.net 2
            page.EnableEventValidation = false;

            // Realiza las inicializaciones de la instancia de la clase Page que requieran los diseñadores RAD.
            page.DesignerInitialize();

            page.Controls.Add(form);
            form.Controls.Add(gdUsuario);

            page.RenderControl(htw);

            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=datosHotel.xls");
            Response.Charset = "UTF-8";
            Response.ContentEncoding = Encoding.Default;
            Response.Write(sb.ToString());
            Response.End();

            //Response.Clear();

            //Response.AddHeader("content-disposition", "attachment;filename=Catalogo_Productos.xls");

            //Response.Charset = "";

            //Response.ContentType = "application/vnd.xls";

            //StringWriter StringWriter = new System.IO.StringWriter();

            //HtmlTextWriter HtmlTextWriter = new HtmlTextWriter(StringWriter);

            //gvDatosAdmin.AllowPaging = false;
            

            //Response.Write(StringWriter.ToString());

            //Response.End();
        }
        public virtual void VerifyRenderingInServerForm(Control control)
        {

        }
    }
}