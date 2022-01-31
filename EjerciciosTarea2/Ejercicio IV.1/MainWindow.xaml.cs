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

namespace Ejercicio_IV._1
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void CalcularBTN_Click(object sender, RoutedEventArgs e){
            calcular(Convert.ToInt32(numeroTextBlock.Text));
        }
        private void calcular(int num){
            string cadena = "";
            for(int i = 1; i<=10;i++)
                cadena+=num+"x"+i+"="+(num*i)+"\n";

            MessageBox.Show(cadena,"CALCULO");
        }
    }
}
