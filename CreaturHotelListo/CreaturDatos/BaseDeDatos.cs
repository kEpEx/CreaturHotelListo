using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CreaturDatos
{
    public class BaseDeDatos
    {
        /// <summary>
        /// Objeto para la conexion a la base de datos.
        /// </summary>
        public static SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCreaturHotelConnectionString3"].ToString());
    }
}