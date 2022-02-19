using System;
using System.Windows;
using EjerciciosTarea5.UI.Capt10.Clases;

namespace EjerciciosTarea5.UI.Capt10
{
    public partial class Ejercicio10_2 : Window
    {
        private Estudiante estudiante = new Estudiante();
        public Ejercicio10_2()
        {
            InitializeComponent();
        }
        private void IngresarBTN_Click(object sander, RoutedEventArgs e)
        {
            estudiante.Apellidos=Microsoft.VisualBasic.Interaction.InputBox("Apellidos (separados por Espacio):", "Apellidos del estudiante", "", 40,10);
            estudiante.Nombres=Microsoft.VisualBasic.Interaction.InputBox("Nombres (separados por Espacio):", "Nombres del estudiante", "", 40,10);
            estudiante.Edad=Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("Edad:", "Edad del estudiante", "", 40,10));
            estudiante.Promedio=Convert.ToDecimal(Microsoft.VisualBasic.Interaction.InputBox("Promedio:", "Promedio del estudiante", "", 40,10));
            EstudianteList.Items.Add("+**********************************************************************+\n"+estudiante.ToString());
        }
    }
}