using System;
using System.Windows;

namespace EjerciciosTarea4.UI.Capt8
{
    public partial class Ejercicio8_3 : Window
    {
        public Ejercicio8_3()
        {
            this.DataContext=this;
            InitializeComponent();
        }
        private void CalcularBTN_Click(object sander, RoutedEventArgs e)
        {
            textBlockFecha.Text= string.Format("{0:dd}/{0:MM}/{0:yyyy}\n    {0:hh}:{0:mm}",DateTime.Now);
        }
    }
}