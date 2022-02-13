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

namespace EjerciciosTarea4.UI.Capt9
{
    /// <summary>
    /// Pantalla principal
    /// </summary>
    public partial class Ejercicio9_1 : Window
    {
        private List<Producto> Lista;
        public struct Producto
        {
            private string descripcion;
            private int existencia;
            private int costo;
            public Producto(string desc, int exist, int cost) 
            {
                descripcion=desc;
                existencia = exist;
                costo = cost;
            }
        }
        public Ejercicio9_1()
        {
            Lista = new List<Producto>();
            InitializeComponent();
        }
        private void GuardarBTN_Click(object sander, RoutedEventArgs e)
        {
            Lista.Add(new Producto(TextBoxDescripcion.Text, int.Parse(TextBoxExistencia.Text), int.Parse(TextBoxCosto.Text)));
            MessageBox.Show($"{TextBoxExistencia.Text} de {TextBoxDescripcion.Text} guardados exitosamente con el ID \"{Lista.Count()+1}\"", "¡Producto guardado!");
        }
    }
}
