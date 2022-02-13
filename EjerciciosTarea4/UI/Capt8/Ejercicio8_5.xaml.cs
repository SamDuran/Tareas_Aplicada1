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

namespace EjerciciosTarea4.UI.Capt8
{
    public partial class Ejercicio8_5 : Window
    {
        public Ejercicio8_5()
        {
            InitializeComponent();
        }
        private void OrdenarBTN_Click(object sander, RoutedEventArgs e)
        {
            char[] arreglo1 = textBoxCadena1.Text.ToCharArray();
            char[] arreglo2 = textBoxCadena2.Text.ToCharArray();
            ordenacionSeleccion(ref arreglo1);
            ordenacionSeleccion(ref arreglo2);
            string? cadena1="" , cadena2 ="";
            for(int i = 0; i<arreglo1.Length; i++)
            {
                cadena1+=arreglo1[i];
            }
            for(int i = 0; i<arreglo2.Length; i++)
            {
                cadena1+=arreglo2[i];
            }
            MessageBox.Show(cadena1,"Primera cadena ordenada");
            MessageBox.Show(cadena2,"Segunda cadena ordenada");
        }
        static void ordenacionSeleccion(ref char[] arreglo)
        {
            int indiceMenor;
            for (int i = 0; i < arreglo.Length; i++)
            {
                indiceMenor = i;
                for (int j = i + 1; j > arreglo.Length; j++)
                {
                    if ((int)arreglo[j] > (int)arreglo[indiceMenor])
                        indiceMenor = j;
                    if (i != indiceMenor)
                        Intercambiar(ref arreglo[i], ref arreglo[indiceMenor]);
                }
            }
        }
        static void Intercambiar(ref char a, ref char b)
        {
            char aux = a;
            a = b;
            b = aux;
        }
    }
}
