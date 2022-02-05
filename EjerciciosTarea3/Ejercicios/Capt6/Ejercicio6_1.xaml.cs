using System.Windows;
using System;
//Agregar el cálculo del promedio para el programa con arreglo jagged. 

namespace Tarea3.Ejercicios.Capt6
{
    public partial class Ejercicio6_1 : Window{
        private float aula;
        private float[][]? notas;
        private float cantidad_Estudiantes;
        private float contador;
        private float suma;
        public Ejercicio6_1()
        {
            InitializeComponent();
        }
        private void AgregarBTN_Click(object sander, RoutedEventArgs e)
        {
            aula = float.Parse(CantidadCursosTextBox.Text);
            notas = new float[(int)aula][];
            for (int i = 0; i < aula; i++)
            {
                cantidad_Estudiantes = float.Parse(Microsoft.VisualBasic.Interaction.InputBox($"Digite la cantidad de alumnos en el salon #{i + 1}", " Cantidad de alumnos", " ", 0));
                notas[i] = new float[(int)cantidad_Estudiantes];
                contador += cantidad_Estudiantes;
                cantidad_Estudiantes += cantidad_Estudiantes;
            }
        }
        private void AgregarNotasBTN_Click(object sander, RoutedEventArgs e)
        {
            for (int i = 0; i < aula; i++)
            {
                for (int m = 0; m < notas[i].Length; m++)
                {
                    notas[i][m] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox($"Digite la calificación del alumno # {m + 1}  del salón {i + 1}", "Calificaciones", " ", 0));
                    suma += notas[i][m];
                }
            }
        }
        private void ResultadoBTN_Click(object sander, RoutedEventArgs e)
        {
            float promedio = calcularPromedio(notas);
            MessageBox.Show($"El promedio calculado fue {promedio}", "Promedio");
        }
        static float calcularPromedio(float[][] arreglo)
        {
            float edades =0f;
            int estudiantes = 0;
            for(int i=0;i<arreglo.Length;i++)
            {
                for(int j=0;j<arreglo[i].Length;j++)
                {
                    edades+=arreglo[i][j];
                    estudiantes++;
                }
            }
            return edades/estudiantes;
        }
    }
}