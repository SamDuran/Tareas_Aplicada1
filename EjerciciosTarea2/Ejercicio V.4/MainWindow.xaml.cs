using System;
using System.Collections.Generic;
using System.ComponentModel;
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

namespace Ejercicio_V._4
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void CalcularBTN_Click(object sanderxD, RoutedEventArgs e){
            calcular(Convert.ToInt32(numeroTextBlock.Text));
        }
        private void calcular(int num){
            int numero = num-1;
            string cadena = "";
            for(int i = num; numero>0;i--)
            {
                num*=numero;
                numero--;
            }
            cadena=num.ToString();
            
            MessageBox.Show(cadena,"Factorial");
        }
    }
}
