﻿using System;
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
using EjerciciosTarea4.UI.Capt8;
using EjerciciosTarea4.UI.Capt9;

namespace EjerciciosTarea4
{
    /// <summary>
    /// Pantalla principal
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void menuEjercicio8_3_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio8_3 nuevo = new Ejercicio8_3();
            nuevo.Show(); 
        }
        private void menuEjercicio8_5_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio8_5 nuevo = new Ejercicio8_5();
            nuevo.Show(); 
        }
        private void menuEjercicio9_1_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio9_1 nuevo = new Ejercicio9_1();
            nuevo.Show(); 
        }
        private void menuEjercicio9_3_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio9_3 nuevo = new Ejercicio9_3();
            nuevo.Show(); 
        }
        private void menuEjercicio9_4_Click(object sander, RoutedEventArgs e)
        {
            Ejercicio9_4 nuevo = new Ejercicio9_4();
            nuevo.Show(); 
        }
    }
}
