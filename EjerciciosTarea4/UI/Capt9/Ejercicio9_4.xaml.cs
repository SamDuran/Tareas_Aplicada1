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
    public partial class Ejercicio9_4 : Window
    {
        private List<Neumatico> Lista;
        public struct Neumatico
        {
            public int tamaño;
            public string Marca;
            public Neumatico(int tam, string marca)
            {
                tamaño= tam;
                Marca = marca;
            }
        }
        public Ejercicio9_4()
        {
            Lista = new List<Neumatico>();
            InitializeComponent();
        }
        private void GuardarBTN_Click(object sander, RoutedEventArgs e)
        {
            Neumatico nuevo = new Neumatico(int.Parse(TextBoxTamaño.Text), TextBoxMarca.Text);
            Lista.Add(nuevo);
            MessageBox.Show($"Neumatico {nuevo.Marca} de tamaño {nuevo.tamaño} guardado exitosamente.","Neumatico guardado");
        }
    }
}
