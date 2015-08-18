using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CreaturDatos
{
    public class Usuario
    {
        int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        string correo;

        public string Correo
        {
            get { return correo; }
            set { correo = value; }
        }
        string tipoUsuario;

        public string TipoUsuario
        {
            get { return tipoUsuario; }
            set { tipoUsuario = value; }
        }
        string contra;

        public string Contra
        {
            get { return contra; }
            set { contra = value; }
        }
    }
}