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

namespace RegistroUsuarios.UI.Registros
{
    public partial class Registro : Window
    {
        public Registro(){
            InitializeComponent();
        }
        /*private void GuardarBtn_Click(object sender, RoutedEventArgs e){
            
        }
        private void limpiar(){
            this.rol=new Roles();
            this.DataContext=rol;
        } 
        private bool Validar(){
            bool esValido=true;

            if(IDTxBox.Text.Length==0){
                esValido=false;
                MessageBox.Show("Registro fallido", "Fallo",
                    MessageBoxButton.OK, MessageBoxImage.Warning);
            }

            return esValido;
        }*/
    }
}
