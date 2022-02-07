using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using RegistroEstudiantes_LabTarea3.UI.Consultas;
using RegistroEstudiantes_LabTarea3.UI.Registros;


namespace RegistroEstudiantes_LabTarea3
{
    /// <summary>
    /// Programa para gestion de carreras/estudiantes
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void rEstudiante_Click(object sander, RoutedEventArgs e)
        {
            var ventana = new rEstudiante();
            ventana.Show();
        }
        private void rCarrera_Click(object sander, RoutedEventArgs e)
        {
            var ventana = new rCarrera();
            ventana.Show();
        }
        private void cEstudiante_Click(object sander, RoutedEventArgs e)
        {
            var ventana = new cEstudiante();
            ventana.Show();
        }
        private void cCarrera_Click(object sander, RoutedEventArgs e)
        {
            var ventana = new cCarrera();
            ventana.Show();
        }
    }
}
