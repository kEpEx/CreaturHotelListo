using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Configuration;
using System.Data;
using System.Data.Sql;


//Session.Abandon();
// Session.Clear();
// Response.Cookies.Clear();
// Response.Redirect("Default.aspx");

namespace CreaturDatos
{
    public partial class Login : System.Web.UI.Page
    {


        CreaturDatos.Datos.tblUsuario dbCreea = new Datos.tblUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["Id"] != null)
            {
                 

                if ((string)(Session["TipoUsuario"]) == "Ingresos")
                {
                    Response.Redirect("MostrarDatosIngresos.aspx");
                }

                if ((string)(Session["TipoUsuario"]) == "Administración")
                {
                    Response.Redirect("MostrarDatosAdministracion.aspx");
                }

                if ((string)(Session["TipoUsuario"]) == "Admin")
                {
                    Response.Redirect("MostrarAd.aspx");
                }

                if ((string)(Session["TipoUsuario"]) == "Calidad")
                {
                    Response.Redirect("MostrarDatosCalidad.aspx");
                }

                if ((string)(Session["TipoUsuario"]) == "Dirección")
                {
                    Response.Redirect("MostrarDatosDireccion.aspx");
                }

                if ((string)(Session["TipoUsuario"]) == "Agentes")
                {
                    Response.Redirect("menuAgentes.aspx");
                }
                
            }
        }


        //public Usuario IniciarSesion(string nombreUsuario, string contrasenia)
        //{
        //    Usuario usuario = null;
        //    try
        //    {
        //        string sql = "SELECT * FROM tblUsuarios WHERE Correo = @correo AND Contra = @contra";
        //        SqlCommand cmd = new SqlCommand(sql, BaseDeDatos.myConnection);
        //        cmd.Parameters.AddWithValue("@correo", tbUser.Text);
        //        cmd.Parameters.AddWithValue("@contra", tbPass.Text);

        //        BaseDeDatos.myConnection.Open();
        //        SqlDataReader dr = cmd.ExecuteReader();
        //        while (dr.Read())
        //        {
        //            usuario = new Usuario();
        //            usuario.Id = Convert.ToInt32(dr["id"].ToString());
        //            usuario.Nombre = dr["nombre"].ToString();
        //            usuario.Correo = dr["correo"].ToString();
        //            usuario.TipoUsuario = dr["tipoUsuario"].ToString();
        //            usuario.Contra = dr["contra"].ToString();


        //            Session["id"] = usuario.Id;
        //            Session["nombre"] = usuario.Nombre;
        //            Session["correo"] = usuario.Correo;
        //            Session["tipoUsuario"] = usuario.TipoUsuario;
        //            Session["contra"] = usuario.Contra;
        //            Response.Redirect("Login.aspx");

        //            if (usuario.TipoUsuario == "Administración")
        //            {
        //                Response.Redirect("menuAdministracion");
        //            }

        //        }
        //    }
        //}

        ////        BaseDeDatos.myConnection.Close();
        ////    }
        ////    catch (Exception ex)
        ////    {
        ////        MessageBox.Show("Los datos son incorrectos");
        ////    }
        ////    return usuario;
        ////}



        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            Session["Nombre"] = tbHidenName.Text;

            string adEntrar = "admin";
            string adcontra = "admin123";

            if (tbUser.Text == adEntrar && tbPass.Text == adcontra)
            {
                Response.Redirect("menuPrincipal.aspx", true);
                
            }

            else
            {
                Usuario usuario = null;
                try
                {
                    string sql = "SELECT * FROM tblUsuarios WHERE Correo = @correo AND Contra = @contra";
                    SqlCommand cmd = new SqlCommand(sql, BaseDeDatos.myConnection);
                    cmd.Parameters.AddWithValue("@correo", tbUser.Text);
                    cmd.Parameters.AddWithValue("@contra", tbPass.Text);

                    BaseDeDatos.myConnection.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        
                        usuario = new Usuario();
                        usuario.Id = Convert.ToInt32(dr["id"].ToString());
                        usuario.Nombre = dr["nombre"].ToString();
                        usuario.Correo = dr["correo"].ToString();
                        usuario.TipoUsuario = dr["tipoUsuario"].ToString();
                        usuario.Contra = dr["contra"].ToString();


                        Session["id"] = usuario.Id;
                        Session["nombre"] = usuario.Nombre;
                        Session["correo"] = usuario.Correo;
                        Session["tipoUsuario"] = usuario.TipoUsuario;
                        Session["contra"] = usuario.Contra;
                        

                        if (usuario.TipoUsuario == "Ingresos")
                        {
                            BaseDeDatos.myConnection.Close();
                            Response.Redirect("MostrarDatosIngresos.aspx");
                        }

                        if (usuario.TipoUsuario == "Administración")
                        {
                            BaseDeDatos.myConnection.Close();
                            Response.Redirect("MostrarDatosAdministracion.aspx");
                        }

                        if (usuario.TipoUsuario == "Admin")
                        {
                            BaseDeDatos.myConnection.Close();
                            Response.Redirect("MostrarAd.aspx");
                        }

                        if (usuario.TipoUsuario == "Calidad")
                        {
                            BaseDeDatos.myConnection.Close();
                            Response.Redirect("MostrarDatosCalidad.aspx");
                        }

                        if (usuario.TipoUsuario == "Dirección")
                        {
                            BaseDeDatos.myConnection.Close();
                            Response.Redirect("MostrarDatosDireccion.aspx");
                        }

                        if (usuario.TipoUsuario == "Agentes")
                        {
                            BaseDeDatos.myConnection.Close();
                            Response.Redirect("menuAgentes.aspx");
                        }
                    }


                    BaseDeDatos.myConnection.Close();
                }
                catch (Exception ex)
                {

                }
            }
            
        }
       
    }
}