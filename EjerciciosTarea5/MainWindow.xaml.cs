using System;
using System.Windows;
using EjerciciosTarea5.UI.Capt10;
using EjerciciosTarea5.UI.Capt12;

namespace EjerciciosTarea5
{
    /// <summary>
    /// Pantalla principal donde se seleccionan los ejercicios
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void menu10_1_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio10_1 nuevo = new Ejercicio10_1();
            nuevo.Show();
        }
        private void menu10_2_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio10_2 nuevo = new Ejercicio10_2();
            nuevo.Show();
        }
        private void menu10_3_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio10_3 nuevo = new Ejercicio10_3();
            nuevo.Show();
        }
        private void menu10_4_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio10_4 nuevo = new Ejercicio10_4();
            nuevo.Show();
        }
        private void menu10_5_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio10_5 nuevo = new Ejercicio10_5();
            nuevo.Show();
        }
        private void menu12_1_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio12_1 nuevo = new Ejercicio12_1();
            nuevo.Show();
        }
        private void menu12_2_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio12_2 nuevo = new Ejercicio12_2();
            nuevo.Show();
        }
        private void menu12_3_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio12_3 nuevo = new Ejercicio12_3();
            nuevo.Show();
        }
        private void menu12_4_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio12_4 nuevo = new Ejercicio12_4();
            nuevo.Show();
        }
        private void menu12_5_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio12_5 nuevo = new Ejercicio12_5();
            nuevo.Show();
        }
    }
}
