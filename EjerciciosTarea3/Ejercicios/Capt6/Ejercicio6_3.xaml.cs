using System.Windows;
using System;
//Agregar el cálculo de la mayor calificación para el programa con arreglo jagged.

namespace Tarea3.Ejercicios.Capt6
{
    public partial class Ejercicio6_3 : Window{
        private int cantPersonas;
        private int cantAulas;
        private int edadMayor = 0;
        private int habMayor;
        private int indMayor;
        private float[][] edades;
        public Ejercicio6_3()
        {
            InitializeComponent();
        }
        private void agregarBTN_Click(object sander, RoutedEventArgs e)
        {
            cantAulas=Convert.ToInt32(cantAulaTextBox.Text);
            edades = new float[cantAulas][];
            for(int i = 0; i<cantAulas;i++)
            {
                cantPersonas=Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox($"Digite la cantidad de personas en la habitacion #{i + 1}", " Cantidad de personas ", " ", 0));
                edades[i]=new float[cantPersonas];
            }
        }
        private void edadesBTN_Click(object sander, RoutedEventArgs e)
        {
            for(int i = 0; i<cantAulas;i++)
            {
                for(int j=0;j<edades[i].Length;j++)
                {
                    edades[i][j] = float.Parse(Microsoft.VisualBasic.Interaction.InputBox($"Digite la edad de la persona #{j + 1}  de la habitación {i + 1}", "Edades", " ", 0));
                    if(edades[i][j] > edadMayor)
                    {
                        indMayor = (int)j;
                        habMayor= (int)i;
                        edadMayor=(int)edades[i][j];
                    }
                }
            }
        }
        private void resultadosBTN_Click(object sander, RoutedEventArgs e)
        {
            MessageBox.Show($"La edad mayor fue {edadMayor} y corresponde a la persona #{indMayor+1} de la habitacion {habMayor+1}", "Resultado");
        }
    }
}