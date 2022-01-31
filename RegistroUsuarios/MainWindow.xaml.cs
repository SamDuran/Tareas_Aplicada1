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
using RegistroUsuarios.Entidades;
using RegistroUsuarios.UI.Consultas;
using RegistroUsuarios.UI.Registros;

namespace RegistroUsuarios
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void rRolesMenuItem_Click(object sender, RoutedEventArgs e){
            Registro registro = new Registro();
            registro.Show();
        }

        private void CRolesMenuItem_Click(object sender, RoutedEventArgs e){
            Consultas consulta = new Consultas();
            consulta.Show();
        }
    }
}
