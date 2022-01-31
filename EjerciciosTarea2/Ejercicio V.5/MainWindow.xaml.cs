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

namespace Ejercicio_V._5
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void introducirBtn_Click(object sender, RoutedEventArgs e){
            int numero;
            numero = Convert.ToInt32(numeroTextBlock.Text);
            string cadena = getString(numero);
            MessageBox.Show(cadena,":3");
        }
        private string aCadena(int n){
            switch (n)
            {
                case 1:{
                    return "Uno";
                }
                case 2:{
                    return "Dos";
                }
                case 3:{
                    return "Tres";
                }
                case 4:{
                    return "Cuatro";
                }
                case 5:{
                    return "Cinco";
                }
                case 6:{
                    return "Seis";
                }
                case 7:{
                    return "Siete";
                }
                case 8:{
                    return "Ocho";
                }
                case 9:{
                    return "Nueve";
                }
                case 0:{
                    return "Cero";
                }
                default:
                return"";
            }
        }
        private int getLastDigit(int n){
            return n%10;
        }
        private void eliminarDigito(ref int numero){
            numero=numero%10;
        }
        private string getString(int numero){
            string cadena, aux="";
            do{
                cadena= aux + aCadena(getLastDigit(numero)) + " ";
                aux=cadena;
                eliminarDigito(ref numero);
            }while(numero%10>9);
            return cadena;
        }
    }
}
