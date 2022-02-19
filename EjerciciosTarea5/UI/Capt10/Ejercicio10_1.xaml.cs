using System;
using System.Windows;
using EjerciciosTarea5.UI.Capt10.Clases;

namespace EjerciciosTarea5.UI.Capt10
{
    public partial class Ejercicio10_1 : Window
    {
        private Inventario inventario = new Inventario();
        public Ejercicio10_1()
        {
            InitializeComponent();
        }
        private void IngresarBTN_Click(object sander, RoutedEventArgs e)
        {
            inventario.Codigo=Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox($"Codigo del producto: ", "Codigo del Producto", " ", 50, 0));
            inventario.Descripción=(Microsoft.VisualBasic.Interaction.InputBox($"Descripción: ", "Descripción del Producto", " ", 50, 0));
            inventario.Estado=(Microsoft.VisualBasic.Interaction.InputBox($"Estado: ", "Estado del Producto", " ", 50, 0));
            inventario.Existencia=Convert.ToDecimal(Microsoft.VisualBasic.Interaction.InputBox($"Existencia: ", "Existencia del Producto", " ", 50, 0));
            InventarioList.Items.Add("+**********************************************************************+\n"+inventario.ToString());
        }
    }
}