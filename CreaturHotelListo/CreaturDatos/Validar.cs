using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;

namespace CreaturDatos
{
    public class Validar
    {

        public static void SoloNumeros(KeyPressEventArgs V)
        {
            if (Char.IsDigit(V.KeyChar))
            {
                V.Handled = false;
            }

            else if(Char.IsSeparator(V.KeyChar))
            {
                V.Handled = false;
            }

            else if(Char.IsControl(V.KeyChar))
            {
                V.Handled = false;
            }

            else
            {
                V.Handled = true;
            }
        }



        public static void SoloNumerosDecimal(KeyPressEventArgs V)
        {
            if (Char.IsDigit(V.KeyChar))
            {
                V.Handled = false;
            }

            else if (Char.IsSeparator(V.KeyChar))
            {
                V.Handled = false;
            }

            else if (Char.IsControl(V.KeyChar))
            {
                V.Handled = false;
            }

            else if (V.KeyChar.ToString().Equals("."))
            {
                
            }
        }


    }
}