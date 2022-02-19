using System;
using System.Windows;
using EjerciciosTarea5.UI.Capt10.Clases;

namespace EjerciciosTarea5.UI.Capt10
{
    public partial class Ejercicio10_5 : Window
    {
        private Poligono poligono = new Poligono();
        public Ejercicio10_5()
        {
            InitializeComponent();
        }
        private void IngresarBTN_Click(object sander, RoutedEventArgs e)
        {
            poligono.CantLados=Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("Lados:", "Cantidad de lados del poligono", "", 40,10));
            poligono.TamañoLados=Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("Tamaño:", "tamaño de lados del poligono", "", 40,10));
            poligono.Angulos=Convert.ToDecimal(Microsoft.VisualBasic.Interaction.InputBox("Angulo:", "Angulos del poligono", "", 40,10));
            PoligonoList.Items.Add("+**********************************************************************+\n"+poligono.ToString()); 
        }
    }
}