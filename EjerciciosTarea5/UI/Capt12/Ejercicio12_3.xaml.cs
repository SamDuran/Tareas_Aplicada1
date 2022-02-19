using System;
using System.Windows;

namespace EjerciciosTarea5.UI.Capt12
{
    public partial class Ejercicio12_3 : Window
    {
        public Ejercicio12_3()
        {
            InitializeComponent();
            ExcepcionesList.Items.Add("**************************************************************\n+System.IndexOutOfRangeException\nEl indice referenciado esta fuera de los limites del arreglo");
            ExcepcionesList.Items.Add("**************************************************************\n+System.NullReferenceException\nSe esta referenciando a null");
            ExcepcionesList.Items.Add("**************************************************************\n+ArrayTypeMismatchException\nAsignació oblicua de tipo de dato con relación al arreglo.");
        }
    }
}