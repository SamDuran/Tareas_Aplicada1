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

namespace Ejercicio_IV._2
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void CalcularBtn_Click(object sender, RoutedEventArgs e){ //erroneo?
            int num1, exponente;
            num1=Convert.ToInt32(numeroTextBlock.Text);
            exponente=Convert.ToInt32(potenciaTextBlock.Text);
            elevar(num1,exponente);
        }
        private void elevar(int num, int exponente){
            int numero=num;

            for(int i = 1; i<exponente;i++)
                numero*=num;

            string resultado="Resultado: "+numero;
            MessageBox.Show(resultado,"CALCULO");
        }
    }
}
