using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CreaturDatos
{
    public partial class AdminCreatur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgegar_Click(object sender, EventArgs e)
        {
            if (ValidarUsuario())
            {
                CreaturDatos.Datos.tblUsuario agreUser = new CreaturDatos.Datos.tblUsuario();
                agreUser.Nombre = txtNombre.Text;
                agreUser.Correo = txtCorreo.Text;
                agreUser.Contra = txtContra.Text;
                agreUser.TipoUsuario = cmbTipoUsuario.SelectedValue;

                using (CreaturDatos.Datos.ModelCreaturHotelesContainer con = new Datos.ModelCreaturHotelesContainer())
                {
                    con.tblUsuarios.Add(agreUser);
                    con.SaveChanges();
                    Response.Write(@"<script language='javascript'>alert('Los datos se guardaron con exito');</script>");
                    txtNombre.Text = "";
                    txtCorreo.Text = "";
                    txtContra.Text = "";
                }
            }
        }

        private bool ValidarUsuario()
        {
            if (string.IsNullOrEmpty(txtNombre.Text))
            {
                Response.Write(@"<script language='javascript'>alert('El campo nombre esta vacío');</script>");
            }

            if (string.IsNullOrEmpty(txtCorreo.Text))
            {
                Response.Write(@"<script language='javascript'>alert('El campo correo esta vacío');</script>");
            }

            if (string.IsNullOrEmpty(txtContra.Text))
            {
                Response.Write(@"<script language='javascript'>alert('El campo contraseña esta vacío');</script>");
            }

            return true;
        }

        protected void imgBtnHome_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("menuPrincipal.aspx", true);
        }

        protected void idLinkSalir_Click(object sender, EventArgs e)
        {
            
        }
    }
}