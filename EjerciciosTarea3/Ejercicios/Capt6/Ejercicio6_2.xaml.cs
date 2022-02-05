using System.Windows;
using System;
//Agregar el cálculo de la menor calificación para el programa con arreglo jagged.

namespace Tarea3.Ejercicios.Capt6
{
    public partial class Ejercicio6_2 : Window{
        private int cantPersonas;
        private int cantAulas;
        private int edadMenor = 10000;
        private int habMenor=10000;
        private int indMenor;
        private float menor;
        private float contador;
        private float[][] edades;
        private float promedio;
        public Ejercicio6_2()
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
                contador+=cantPersonas;
            }
        }
        private void edadesBTN_Click(object sander, RoutedEventArgs e)
        {
            for(int i = 0; i<cantAulas;i++)
            {
                for(int j=0;j<edades[i].Length;j++)
                {
                    edades[i][j] = float.Parse(Microsoft.VisualBasic.Interaction.InputBox($"Digite la edad de la persona #{j + 1}  de la habitación {i + 1}", "Edades", " ", 0));
                    if(edades[i][j] < edadMenor)
                    {
                        indMenor = (int)j;
                        habMenor= (int)i;
                        edadMenor=(int)edades[i][j];
                    }
                }
            }
        }
        private void resultadosBTN_Click(object sander, RoutedEventArgs e)
        {
            MessageBox.Show($"La edad menor fue {edadMenor} y corresponde a la persona #{indMenor+1} de la habitacion {habMenor+1}", "Resultado");
        }
    }
}