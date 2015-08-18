using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CreaturDatos
{
    public partial class MostrarDatoAdmin : System.Web.UI.Page
    {

        

        protected void Page_Load(object sender, EventArgs e)
        {
            //DateTime fechaFinal = DateTime.Now;
            //tbFecha2.Text = fechaFinal.ToShortDateString();
        }

        public void gvDatosAdmin_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }

        protected void imgBtnHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("menuPrincipal.aspx");
        }

        protected void imgBtnExcel_Click(object sender, ImageClickEventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            StringWriter sw = new StringWriter(sb);
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            Page page = new Page();
            HtmlForm form = new HtmlForm();

            gvDatosAdmin.EnableViewState = false;

            // Deshabilitar la validación de eventos, sólo asp.net 2
            page.EnableEventValidation = false;


            // Realiza las inicializaciones de la instancia de la clase Page que requieran los diseñadores RAD.
            page.DesignerInitialize();

            page.Controls.Add(form);
            form.Controls.Add(gvDatosAdmin);

            page.RenderControl(htw);

            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=datosHotel.xls");
            Response.Charset = "UTF-8";
            Response.ContentEncoding = Encoding.Default;
            Response.Write(sb.ToString());
            Response.End();
        }

        public virtual void VerifyRenderingInServerForm(System.Windows.Forms.Control control)
        {

        }

        protected void gvDatosAdmin_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //int idVerDatosAdmin = Convert.ToInt32(gvDatosAdmin.DataKeys[e.NewSelectedIndex].Value);

            //Response.Redirect(string.Format("AgregarDatos.aspx?id={0}", idVerDatosAdmin));

            //GridView gvAdmin = gvDatosAdmin.SelectedRow;

            //Session["Id"] = gvAdmin.Cells[2].Text;
            //Session["FacturaProveedor"] = gvAdmin.Cells[3].Text;
            //Session["ObservacionesAdministracion"] = gvAdmin.Cells[4].Text;
            //Session["NumFacturaCreatur"] = gvAdmin.Cells[5].Text;
            //Session["ObservacionIngreso"] = gvAdmin.Cells[6].Text;
            //Session["FacturaEfectiva"] = gvAdmin.Cells[7].Text;
            //Session["Agente"] = gvAdmin.Cells[8].Text;
            //Session["FechaCreacion"] = gvAdmin.Cells[9].Text;
            //Session["Refacturacion"] = gvAdmin.Cells[10].Text;
            //Session["HK"] = gvAdmin.Cells[11].Text;
            //Session["GK"] = gvAdmin.Cells[12].Text;
            //Session["Huesped"] = gvAdmin.Cells[13].Text;
            //Session["Empresa"] = gvAdmin.Cells[14].Text;
            //Session["Hotel"] = gvAdmin.Cells[15].Text;
            //Session["CiudadUbicacionHotel"] = gvAdmin.Cells[16].Text;
            //Session["Confirmacion"] = gvAdmin.Cells[17].Text;
            //Session["FechaCheckIn"] = gvAdmin.Cells[18].Text;
            //Session["FechaCheckOut"] = gvAdmin.Cells[19].Text;
            //Session["NumeroNoches"] = gvAdmin.Cells[20].Text;
            //Session["TarifaBaseConImpIncluidos"] = gvAdmin.Cells[21].Text;
            //Session["TotalConImpIncluidos"] = gvAdmin.Cells[22].Text;
            //Session["TotalTarifaBaseHotel"] = gvAdmin.Cells[23].Text;
            //Session["ISH"] = gvAdmin.Cells[24].Text;
            //Session["TipoMoneda"] = gvAdmin.Cells[25].Text;
            //Session["PorcenGananSobreTotalImpuestosInclud"] = gvAdmin.Cells[26].Text;
            //Session["ImporteGanancia"] = gvAdmin.Cells[27].Text;
            //Session["ServiciosAdicionales"] = gvAdmin.Cells[28].Text;
            //Session["CargoServicio"] = gvAdmin.Cells[29].Text;
            //Session["ImporteServicioAdicional"] = gvAdmin.Cells[30].Text;
            //Session["PorcenGananciaSobreServAdicional"] = gvAdmin.Cells[31].Text;
            //Session["ImporteGananciaSobreServicioAdicional"] = gvAdmin.Cells[32].Text;
            //Session["TotalFacHospedaje"] = gvAdmin.Cells[33].Text;

            //Session["FormaPago"] = gvAdmin.Cells[34].Text;
            //Session["TipoTarifa"] = gvAdmin.Cells[35].Text;
            //Session["NumRechazadosDeTarjetas"] = gvAdmin.Cells[36].Text;
            //Session["ReservaEfectiva"] = gvAdmin.Cells[37].Text;
            //Session["ImporteCobrarHtl"] = gvAdmin.Cells[38].Text;
            //Session["FOPFinal"] = gvAdmin.Cells[39].Text;
            //Session["ObservacionDireccion"] = gvAdmin.Cells[40].Text;



        }

        protected void gvDatosAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {
            

            
            //int idDato = Convert.ToInt32(gvAdmin.Cells[2].Text);
            //Response.Redirect(string.Format("ModificarDatosAdmin.aspx?id={0}", idDato));


            GridViewRow gvAdmin = gvDatosAdmin.SelectedRow;
            Session["Id"] = gvAdmin.Cells[2].Text;
            Session["FacturaProveedor"] = gvAdmin.Cells[3].Text.Replace("&nbsp;","");
            Session["ObservacionesAdministracion"] = gvAdmin.Cells[4].Text.Replace("&nbsp;", "");
            Session["NumFacturaCreatur"] = gvAdmin.Cells[5].Text.Replace("&nbsp;", "");
            Session["ObservacionIngreso"] = gvAdmin.Cells[6].Text.Replace("&nbsp;", "");
            Session["FacturaEfectiva"] = gvAdmin.Cells[7].Text.Replace("&nbsp;", "");
            Session["Agente"] = gvAdmin.Cells[8].Text;
            Session["FechaCreacion"] = gvAdmin.Cells[9].Text;
            Session["Refacturacion"] = gvAdmin.Cells[10].Text.Replace("&nbsp;", "");
            Session["HK"] = gvAdmin.Cells[11].Text.Replace("&nbsp;", "");
            Session["GK"] = gvAdmin.Cells[12].Text.Replace("&nbsp;", "");
            Session["Huesped"] = gvAdmin.Cells[13].Text.Replace("&nbsp;", "");
            Session["Empresa"] = gvAdmin.Cells[14].Text.Replace("&nbsp;", "");
            Session["Hotel"] = gvAdmin.Cells[15].Text.Replace("&nbsp;", "");
            Session["CiudadUbicacionHotel"] = gvAdmin.Cells[16].Text.Replace("&nbsp;", "");
            Session["Confirmacion"] = gvAdmin.Cells[17].Text.Replace("&nbsp;", "");
            Session["FechaCheckIn"] = gvAdmin.Cells[18].Text.Replace("&nbsp;", "");
            Session["FechaCheckOut"] = gvAdmin.Cells[19].Text.Replace("&nbsp;", "");
            Session["NumeroNoches"] = gvAdmin.Cells[20].Text.Replace("&nbsp;","");
            Session["TarifaBaseConImpIncluidos"] = gvAdmin.Cells[21].Text.Replace("&nbsp;", "");
            Session["TotalConImpIncluidos"] = gvAdmin.Cells[22].Text.Replace("&nbsp;", "");
            Session["TotalTarifaBaseHotel"] = gvAdmin.Cells[23].Text.Replace("&nbsp;", "");
            Session["ISH"] = gvAdmin.Cells[24].Text.Replace("&nbsp;", "");
            Session["TipoMoneda"] = gvAdmin.Cells[25].Text.Replace("&nbsp;", "");
            Session["PorcenGananSobreTotalImpuestosInclud"] = gvAdmin.Cells[26].Text.Replace("&nbsp;", "");
            Session["ImporteGanancia"] = gvAdmin.Cells[27].Text.Replace("&nbsp;", "");
            Session["ServiciosAdicionales"] = gvAdmin.Cells[28].Text.Replace("&nbsp;", "");
            Session["CargoServicio"] = gvAdmin.Cells[29].Text.Replace("&nbsp;", "");
            Session["ImporteServicioAdicional"] = gvAdmin.Cells[30].Text.Replace("&nbsp;", "");
            Session["PorcenGananciaSobreServAdicional"] = gvAdmin.Cells[31].Text.Replace("&nbsp;", "");
            Session["ImporteGananciaSobreServicioAdicional"] = gvAdmin.Cells[32].Text.Replace("&nbsp;", "");
            Session["TotalFacHospedaje"] = gvAdmin.Cells[33].Text.Replace("&nbsp;", "");
            Session["FormaPago"] = gvAdmin.Cells[34].Text.Replace("&nbsp;", "");
            Session["TipoTarifa"] = gvAdmin.Cells[35].Text.Replace("&nbsp;", "");
            Session["NumRechazadosDeTarjetas"] = gvAdmin.Cells[36].Text.Replace("&nbsp;", "");
            Session["ReservaEfectiva"] = gvAdmin.Cells[37].Text.Replace("&nbsp;", "");
            Session["ImporteCobrarHtl"] = gvAdmin.Cells[38].Text.Replace("&nbsp;", "");
            Session["FOPFinal"] = gvAdmin.Cells[39].Text.Replace("&nbsp;", "");
            Session["ObservacionDireccion"] = gvAdmin.Cells[40].Text.Replace("&nbsp;", "");

            Response.Redirect("ModificarDatosAdmin.aspx");


            //string dato = gvAdmin.Cells[0].Text;
            //string dato1 = gvAdmin.Cells[1].Text;
            //Response.Redirect("AgregarDatos.aspx?FacturaProveedor=" + dato + "&ObservacionesAdministracion" + dato1);
        }

        protected void gvDatosAdmin_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        public void filtroFecha()
        {
            DateTime fec1 = DateTime.Now.AddDays(-1);
            DateTime fec2 = DateTime.Now;

            tbFecha1.Text = fec1.ToShortDateString();
            tbFecha2.Text = fec2.ToShortDateString();
        }

        protected void gvDatosAdmin_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //GridViewRow gvAdmin = gvDatosAdmin.SelectedRow;

            //Session["Id"] = gvAdmin.Cells[2].Text;
            //Session["FacturaProveedor"] = gvAdmin.Cells[3].Text;
            //Session["ObservacionesAdministracion"] = gvAdmin.Cells[4].Text;
            //Session["NumFacturaCreatur"] = gvAdmin.Cells[5].Text;
            //Session["ObservacionIngreso"] = gvAdmin.Cells[6].Text;
            //Session["FacturaEfectiva"] = gvAdmin.Cells[7].Text;
            //Session["Agente"] = gvAdmin.Cells[8].Text;
            //Session["FechaCreacion"] = gvAdmin.Cells[9].Text;
            //Session["Refacturacion"] = gvAdmin.Cells[10].Text;
            //Session["HK"] = gvAdmin.Cells[11].Text;
            //Session["GK"] = gvAdmin.Cells[12].Text;
            //Session["Huesped"] = gvAdmin.Cells[13].Text;
            //Session["Empresa"] = gvAdmin.Cells[14].Text;
            //Session["Hotel"] = gvAdmin.Cells[15].Text;
            //Session["CiudadUbicacionHotel"] = gvAdmin.Cells[16].Text;
            //Session["Confirmacion"] = gvAdmin.Cells[17].Text;
            //Session["FechaCheckIn"] = gvAdmin.Cells[18].Text;
            //Session["FechaCheckOut"] = gvAdmin.Cells[19].Text;
            //Session["NumeroNoches"] = gvAdmin.Cells[20].Text;
            //Session["TarifaBaseConImpIncluidos"] = gvAdmin.Cells[21].Text;
            //Session["TotalConImpIncluidos"] = gvAdmin.Cells[22].Text;
            //Session["TotalTarifaBaseHotel"] = gvAdmin.Cells[23].Text;
            //Session["ISH"] = gvAdmin.Cells[24].Text;
            //Session["TipoMoneda"] = gvAdmin.Cells[25].Text;
            //Session["PorcenGananSobreTotalImpuestosInclud"] = gvAdmin.Cells[26].Text;
            //Session["ImporteGanancia"] = gvAdmin.Cells[27].Text;
            //Session["ServiciosAdicionales"] = gvAdmin.Cells[28].Text;
            //Session["CargoServicio"] = gvAdmin.Cells[29].Text;
            //Session["ImporteServicioAdicional"] = gvAdmin.Cells[30].Text;
            //Session["PorcenGananciaSobreServAdicional"] = gvAdmin.Cells[31].Text;
            //Session["ImporteGananciaSobreServicioAdicional"] = gvAdmin.Cells[32].Text;
            //Session["TotalFacHospedaje"] = gvAdmin.Cells[33].Text;

            //Session["FormaPago"] = gvAdmin.Cells[34].Text;
            //Session["TipoTarifa"] = gvAdmin.Cells[35].Text;
            //Session["NumRechazadosDeTarjetas"] = gvAdmin.Cells[36].Text;
            //Session["ReservaEfectiva"] = gvAdmin.Cells[37].Text;
            //Session["ImporteCobrarHtl"] = gvAdmin.Cells[38].Text;
            //Session["FOPFinal"] = gvAdmin.Cells[39].Text;
            //Session["ObservacionDireccion"] = gvAdmin.Cells[40].Text;
        }

        protected void ImgbtnFiltrarFecha_Click(object sender, ImageClickEventArgs e)
        {
            
        }

       

    }

}