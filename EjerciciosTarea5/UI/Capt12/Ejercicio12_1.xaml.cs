using System;
using System.Windows;

namespace EjerciciosTarea5.UI.Capt12
{
    public partial class Ejercicio12_1 : Window
    {
        public Ejercicio12_1()
        {
            InitializeComponent();
        }
        private void CalcularBTN_Click(object sander, RoutedEventArgs e)
        {
            int factorial = rFactorial(Convert.ToInt32(numeroTextBox.Text));
            MessageBox.Show($"{numeroTextBox.Text}! = {factorial}",$"Factorial de {numeroTextBox.Text}");
        }
        private int rFactorial(int numero)
        {
            if(numero <=1)
                return 1;
            else return numero*rFactorial(numero-1);
        }
    }
}