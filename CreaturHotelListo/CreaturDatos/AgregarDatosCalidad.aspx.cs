using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CreaturDatos
{
    public partial class AgregarDatosCalidad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbIdModificar.Text = Session["Id"].ToString();
                tbIdModificar.Visible = false;
                tbFactProveedor.Text = Session["FacturaProveedor"].ToString();
                tbObserAdministracion.Text = Session["ObservacionesAdministracion"].ToString();
                tbFacCreatur.Text = Session["NumFacturaCreatur"].ToString();
                tbObserIngresos.Text = Session["ObservacionIngreso"].ToString();
                cmbFacEfectivo.SelectedValue = Session["FacturaEfectiva"].ToString();
                cmbNombreAgente.SelectedValue = Session["Agente"].ToString();
                tbFechaCreacion.Text = Session["FechaCreacion"].ToString();
                cmbRefac.SelectedValue = Session["Refacturacion"].ToString();
                tbHk.Text = Session["HK"].ToString();
                tbGk.Text = Session["GK"].ToString();
                tbHuesped.Text = Session["Huesped"].ToString();
                tbEmpresa.Text = Session["Empresa"].ToString();
                tbHotel.Text = Session["Hotel"].ToString();
                tbCdHotel.Text = Session["CiudadUbicacionHotel"].ToString();
                tbConfir.Text = Session["Confirmacion"].ToString();
                tbFechaCheIn.Text = Session["FechaCheckIn"].ToString();
                tbFechaCheOut.Text = Session["FechaCheckOut"].ToString();
                tbNoche.Text = Session["NumeroNoches"].ToString();
                tbTariBasImpuesInclud.Text = Session["TarifaBaseConImpIncluidos"].ToString();
                tbTotConImpInclud.Text = Session["TotalConImpIncluidos"].ToString();
                tbTotTarifHotel.Text = Session["TotalTarifaBaseHotel"].ToString();
                cmbISH.SelectedValue = Session["ISH"].ToString();
                tbTipoMoneda.Text = Session["TipoMoneda"].ToString();
                tbPorcenGanSobTotalImpuInclud.Text = Session["PorcenGananSobreTotalImpuestosInclud"].ToString();
                tbImporteGanancia.Text = Session["ImporteGanancia"].ToString();
                cmbServiAdicionales.SelectedValue = Session["ServiciosAdicionales"].ToString();
                tbCargoServicio.Text = Session["CargoServicio"].ToString();
                tbImporteServAdicionales.Text = Session["ImporteServicioAdicional"].ToString();
                tbPorGananSerAdici.Text = Session["PorcenGananciaSobreServAdicional"].ToString();
                tbImporGanan.Text = Session["ImporteGananciaSobreServicioAdicional"].ToString();
                tbTotFactuHospedaje.Text = Session["TotalFacHospedaje"].ToString();
                tbForPagoTarje.Text = Session["FormaPago"].ToString();
                tbTipoTarifa.Text = Session["TipoTarifa"].ToString();
                tbNumTarRech.Text = Session["NumRechazadosDeTarjetas"].ToString();
                tbResEfectiva.Text = Session["ReservaEfectiva"].ToString();
                tbImpoCobrarHtl.Text = Session["ImporteCobrarHtl"].ToString();
                tbFopFinal.Text = Session["FOPFinal"].ToString();
                tbObserDirec.Text = Session["ObservacionDireccion"].ToString();
            }

            if (Session["Id"] == null)
                Response.Redirect("Login.aspx");

            //Administracion
            tbFactProveedor.Enabled = false;
            tbObserAdministracion.Enabled = false;
            //Ingresos
            tbFacCreatur.Enabled = false;
            tbObserIngresos.Enabled = false;
            //Admin
            cmbFacEfectivo.Enabled = false;
            //Agentes
            cmbNombreAgente.Enabled = false;
            tbFechaCreacion.Enabled = false;
            cmbRefac.Enabled = false;
            tbHk.Enabled = false;
            tbGk.Enabled = false;
            tbHuesped.Enabled = false;
            tbEmpresa.Enabled = false;
            tbHotel.Enabled = false;
            tbCdHotel.Enabled = false;
            tbConfir.Enabled = false;
            tbFechaCheIn.Enabled = false;
            tbFechaCheOut.Enabled = false;
            tbNoche.Enabled = false;
            tbTariBasImpuesInclud.Enabled = false;
            tbTotConImpInclud.Enabled = false;
            tbTotTarifHotel.Enabled = false;
            cmbISH.Enabled = false;
            tbTipoMoneda.Enabled = false;
            tbPorcenGanSobTotalImpuInclud.Enabled = false;
            tbImporteGanancia.Enabled = false;
            cmbServiAdicionales.Enabled = false;
            tbCargoServicio.Enabled = false;
            tbImporteServAdicionales.Enabled = false;
            tbPorGananSerAdici.Enabled = false;
            tbImporGanan.Enabled = false;
            tbTotFactuHospedaje.Enabled = false;
            tbForPagoTarje.Enabled = false;
            tbTipoTarifa.Enabled = false;
            //Direccion
            tbResEfectiva.Enabled = false;
            tbImpoCobrarHtl.Enabled = false;
            tbFopFinal.Enabled = false;
            tbObserDirec.Enabled = false;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=UNICO-PC;Initial Catalog=DBCreaturHotel; user id=creatur;password=creatur2010;MultipleActiveResultSets=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand(@"UPDATE tblDatos SET  NumRechazadosDeTarjetas ='" + tbNumTarRech.Text + "'  WHERE (Id = '" + Convert.ToInt32(tbIdModificar.Text) + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write(@"<script language='javascript'>alert('Los datos se modificaron con exito');</script>");
            Response.Redirect("MostrarDatosCalidad.aspx");
        }

        protected void imgBtnHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MostrarDatosCalidad.aspx");
        }
    }
}