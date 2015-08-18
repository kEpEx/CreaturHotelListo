using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreaturDatos
{
    public partial class MostrarDatosDireccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
                Response.Redirect("Index.aspx");

            //DateTime fechaFinal = DateTime.Now;
            //tbFecha2Direc.Text = fechaFinal.ToShortDateString();
        }

        protected void imgBtnHome_Click(object sender, ImageClickEventArgs e)
        {
            this.Page.Session.Abandon();
            Response.Redirect("Index.aspx");
        }

        protected void gvDatosDirec_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        
        protected void gvDatosDirecc_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gvDatAd = gvDatosDirecc.SelectedRow;

            Session["Id"] = gvDatAd.Cells[1].Text;
            Session["FacturaProveedor"] = gvDatAd.Cells[2].Text.Replace("&nbsp;", "");
            Session["ObservacionesAdministracion"] = gvDatAd.Cells[3].Text.Replace("&nbsp;", "");
            Session["NumFacturaCreatur"] = gvDatAd.Cells[4].Text.Replace("&nbsp;", "");
            Session["ObservacionIngreso"] = gvDatAd.Cells[5].Text.Replace("&nbsp;", "");
            Session["FacturaEfectiva"] = gvDatAd.Cells[6].Text.Replace("&nbsp;", "");
            Session["Agente"] = gvDatAd.Cells[7].Text.Replace("&nbsp;", "");
            Session["FechaCreacion"] = gvDatAd.Cells[8].Text.Replace("&nbsp;", "");
            Session["Refacturacion"] = gvDatAd.Cells[9].Text.Replace("&nbsp;", "");
            Session["HK"] = gvDatAd.Cells[10].Text.Replace("&nbsp;", "");
            Session["GK"] = gvDatAd.Cells[11].Text.Replace("&nbsp;", "");
            Session["Huesped"] = gvDatAd.Cells[12].Text.Replace("&nbsp;", "");
            Session["Empresa"] = gvDatAd.Cells[13].Text.Replace("&nbsp;", "");
            Session["Hotel"] = gvDatAd.Cells[14].Text.Replace("&nbsp;", "");
            Session["CiudadUbicacionHotel"] = gvDatAd.Cells[15].Text.Replace("&nbsp;", "");
            Session["Confirmacion"] = gvDatAd.Cells[16].Text.Replace("&nbsp;", "");
            Session["FechaCheckIn"] = gvDatAd.Cells[17].Text.Replace("&nbsp;", "");
            Session["FechaCheckOut"] = gvDatAd.Cells[18].Text.Replace("&nbsp;", "");
            Session["NumeroNoches"] = gvDatAd.Cells[19].Text.Replace("&nbsp;", "");
            Session["TarifaBaseConImpIncluidos"] = gvDatAd.Cells[20].Text.Replace("&nbsp;", "");
            Session["TotalConImpIncluidos"] = gvDatAd.Cells[21].Text.Replace("&nbsp;", "");
            Session["TotalTarifaBaseHotel"] = gvDatAd.Cells[22].Text.Replace("&nbsp;", "");
            Session["ISH"] = gvDatAd.Cells[23].Text.Replace("&nbsp;", "");
            Session["TipoMoneda"] = gvDatAd.Cells[24].Text.Replace("&nbsp;", "");
            Session["PorcenGananSobreTotalImpuestosInclud"] = gvDatAd.Cells[25].Text.Replace("&nbsp;", "");
            Session["ImporteGanancia"] = gvDatAd.Cells[26].Text.Replace("&nbsp;", "");
            Session["ServiciosAdicionales"] = gvDatAd.Cells[27].Text.Replace("&nbsp;", "");
            Session["CargoServicio"] = gvDatAd.Cells[28].Text.Replace("&nbsp;", "");
            Session["ImporteServicioAdicional"] = gvDatAd.Cells[29].Text.Replace("&nbsp;", "");
            Session["PorcenGananciaSobreServAdicional"] = gvDatAd.Cells[30].Text.Replace("&nbsp;", "");
            Session["ImporteGananciaSobreServicioAdicional"] = gvDatAd.Cells[31].Text.Replace("&nbsp;", "");
            Session["TotalFacHospedaje"] = gvDatAd.Cells[32].Text.Replace("&nbsp;", "");
            Session["FormaPago"] = gvDatAd.Cells[33].Text.Replace("&nbsp;", "");
            Session["TipoTarifa"] = gvDatAd.Cells[34].Text.Replace("&nbsp;", "");
            Session["NumRechazadosDeTarjetas"] = gvDatAd.Cells[35].Text.Replace("&nbsp;", "");
            Session["ReservaEfectiva"] = gvDatAd.Cells[36].Text.Replace("&nbsp;", "");
            Session["ImporteCobrarHtl"] = gvDatAd.Cells[37].Text.Replace("&nbsp;", "");
            Session["FOPFinal"] = gvDatAd.Cells[38].Text.Replace("&nbsp;", "");
            Session["ObservacionDireccion"] = gvDatAd.Cells[39].Text.Replace("&nbsp;", "");
            Response.Redirect("AgregarDatosDireccion.aspx");
        }

    }
}