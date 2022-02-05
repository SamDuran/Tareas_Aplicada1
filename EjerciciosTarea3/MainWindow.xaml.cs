using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using Tarea3.Ejercicios.Capt6;
using Tarea3.Ejercicios.Capt7;
//Pantalla principal para acceder a cada ejercicio de cada capitulo

namespace Tarea3
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void menuEjercicio6_1_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio6_1 nuevo = new Ejercicio6_1();
            nuevo.Show();
        }
        private void menuEjercicio6_2_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio6_2 nuevo = new Ejercicio6_2();
            nuevo.Show();
        }
        private void menuEjercicio6_3_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio6_3 nuevo = new Ejercicio6_3();
            nuevo.Show();
        }
        private void menuEjercicio6_4_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio6_4 nuevo = new Ejercicio6_4();
            nuevo.Show();
        }
        private void menuEjercicio6_5_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio6_5 nuevo = new Ejercicio6_5();
            nuevo.Show();
        }
        private void menuEjercicio7_1_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio7_1 nuevo = new Ejercicio7_1();
            nuevo.Show();
        }
        private void menuEjercicio7_2_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio7_2 nuevo = new Ejercicio7_2();
            nuevo.Show();
        }
        private void menuEjercicio7_5_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio7_5 nuevo = new Ejercicio7_5();
            nuevo.Show();
        }
    }
}
