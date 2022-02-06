using System.Windows;
using System;
using System.Collections;
/*Hacer el programa que calcula el promedio, calificación máxima y mínima de un salón de clases usando el ArrayList.*/

namespace Tarea3.Ejercicios.Capt7
{
    public partial class Ejercicio7_1 : Window{
        private ArrayList list = new ArrayList();
        float promedio = 0;
        float califMenor = 150;
        float califMayor = 0;
        public Ejercicio7_1()
        {
            InitializeComponent();
        }
        private void ResultadoBTN_Click(object sander, RoutedEventArgs e)
        {
            promedio = getPromedio(list);
            MessageBox.Show($"El Promedio de calificaciones calculado fue {promedio}.","Promedio");
        }
        private void verMenorBTN_Click(object sanderXD, RoutedEventArgs e)
        {
            MessageBox.Show($"La calificación menor es {califMenor}.", "Calificación Menor");
        }
        private void verMayorBTN_Click(object sanderXD, RoutedEventArgs e)
        {
            MessageBox.Show($"La calificación mayor es {califMayor}.", "Calificación Menor");
        }
        private void AgregarBTN_Click(object sander, RoutedEventArgs e)
        {
            int calif=Convert.ToInt32(califTextBox.Text);
            list.Add(calif);
            if(califMayor<calif)
            {
                califMayor=calif;
            }
            if(califMenor>calif)
            {
                califMenor=calif;
            }
        }
        public float getPromedio(ArrayList lista)
        {
            int suma=0;
            float calif=0;
            foreach(int estudiante in lista)
            {
                suma++;
                calif+=estudiante;
            }
            return calif/suma;
        }
    }
}