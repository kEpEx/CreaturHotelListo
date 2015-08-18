using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CreaturDatos
{
    public partial class AdAgentes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbNomAgentes.Text = Session["Nombre"].ToString();
            }


            string hora = DateTime.Now.ToShortDateString();
            tbFechaCreacion.Text = Convert.ToString(hora);
        }

        protected void btnEnviar_Click1(object sender, EventArgs e)
        {

            CreaturDatos.Datos.tblDatos agreDatos = new Datos.tblDatos();
            {
                DateTime d1 = Convert.ToDateTime(tbFechaCheIn.Text);
                DateTime d2 = Convert.ToDateTime(tbFechaCheOut.Text);
                TimeSpan ds = (d2 - d1);
                tbNoche.Text = Convert.ToString(ds.Days);

                double valor2 = Convert.ToDouble(tbTariBasImpuesInclud.Text);
                double res = (Convert.ToDouble(tbNoche.Text) * valor2);
                tbTotConImpInclud.Text = Convert.ToString(res);
                double valorPorcenGanancia = Convert.ToDouble(tbPorcenGanSobTotalImpuInclud.Text);
                double resPorImporteGanancia = (res * valorPorcenGanancia) / 100;
                tbImporteGanancia.Text = Convert.ToString(resPorImporteGanancia);

                double imporServiAd = Convert.ToDouble(tbImporteServAdicionales.Text);
                double porGaSerAd = Convert.ToDouble(tbPorGananSerAdici.Text);
                double totImportPorcenSerAd = (imporServiAd * porGaSerAd) / 100;
                tbImporGanan.Text = Convert.ToString(totImportPorcenSerAd);

                double cargoServicio = Convert.ToDouble(tbCargoServicio.Text);

                double totFacHospedaje = res + resPorImporteGanancia + cargoServicio + imporServiAd + totImportPorcenSerAd;
                tbTotFactuHospedaje.Text = Convert.ToString(totFacHospedaje);

                /*Empieza datos Agentes*/
                agreDatos.Agente = tbNomAgentes.Text;
                agreDatos.FechaCreacion = tbFechaCreacion.Text;
                agreDatos.Refacturacion = cmbRefac.SelectedValue;
                agreDatos.HK = tbHk.Text;
                agreDatos.GK = tbGk.Text;
                agreDatos.Huesped = tbHuesped.Text;
                agreDatos.Hotel = tbHotel.Text;
                agreDatos.Empresa = tbEmpresa.Text;
                agreDatos.CiudadUbicacionHotel = tbCdHotel.Text;
                agreDatos.Confirmacion = tbConfir.Text;
                agreDatos.FechaCheckIn = Convert.ToDateTime(tbFechaCheIn.Text);
                agreDatos.FechaCheckOut = Convert.ToDateTime(tbFechaCheOut.Text);
                agreDatos.NumeroNoches = Convert.ToInt32(tbNoche.Text);
                agreDatos.TarifaBaseConImpIncluidos = Convert.ToDouble(tbTariBasImpuesInclud.Text);
                agreDatos.TotalConImpIncluidos = Convert.ToDouble(tbTotConImpInclud.Text);
                agreDatos.TotalTarifaBaseHotel = Convert.ToDouble(tbTotTarifHotel.Text);
                agreDatos.ISH = cmbISH.SelectedValue;
                agreDatos.TipoMoneda = tbTipoMoneda.Text;
                agreDatos.PorcenGananSobreTotalImpuestosInclud = Convert.ToDouble(tbPorcenGanSobTotalImpuInclud.Text);
                agreDatos.ServiciosAdicionales = cmbServiAdicionales.SelectedValue;
                agreDatos.CargoServicio = Convert.ToDouble(tbCargoServicio.Text);
                agreDatos.ImporteServicioAdicional = Convert.ToDouble(tbImporteServAdicionales.Text);
                agreDatos.PorcenGananciaSobreServAdicional = Convert.ToDouble(tbPorGananSerAdici.Text);
                agreDatos.ImporteGananciaSobreServicioAdicional = Convert.ToDouble(tbImporGanan.Text);
                agreDatos.ImporteGanancia = Convert.ToDouble(tbImporteGanancia.Text);
                agreDatos.TotalFacHospedaje = Convert.ToDouble(tbTotFactuHospedaje.Text);
                agreDatos.FormaPago = tbForPagoTarje.Text;
                agreDatos.TipoTarifa = tbTipoTarifa.Text;
              




                using (CreaturDatos.Datos.ModelCreaturHotelesContainer contDat = new Datos.ModelCreaturHotelesContainer())
                {


                    contDat.tblDatos.Add(agreDatos);
                    contDat.SaveChanges();
                    Response.Write(@"<script language='javascript'>alert('Los datos se guardaron con exito');</script>");

                    
                    tbHk.Text = "";
                    tbGk.Text = "";
                    tbHuesped.Text = "";
                    tbHotel.Text = "";
                    tbEmpresa.Text = "";
                    tbCdHotel.Text = "";
                    tbConfir.Text = "";
                    tbFechaCheIn.Text = "";
                    tbFechaCheOut.Text = "";
                    tbNoche.Text = "";
                    tbTariBasImpuesInclud.Text = "";
                    tbTotConImpInclud.Text = "";
                    tbTotFactuHospedaje.Text = "";
                    tbTotTarifHotel.Text = "";
                    tbTipoMoneda.Text = "";
                    tbPorcenGanSobTotalImpuInclud.Text = "";
                    tbPorGananSerAdici.Text = "";
                    tbCargoServicio.Text = "";
                    tbImporteServAdicionales.Text = "";
                    tbImporteServAdicionales.Text = "";
                    tbImporteGanancia.Text = "";
                    tbForPagoTarje.Text = "";
                   
                }
            }
        }

        protected void imgBtnHome_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("menuAgentes.aspx", true);
        }
    }
}