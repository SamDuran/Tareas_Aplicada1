using System.Windows;
using System;
using System.Collections;
/*Hacer un programa que funcione como un diccionario, con palabra y definición, usando el Hashtable.*/

namespace Tarea3.Ejercicios.Capt7
{
    public partial class Ejercicio7_2 : Window{
        Hashtable dictionary = new Hashtable();
        public Ejercicio7_2()
        {
            InitializeComponent();
        }
        private bool está(string palabra)
        {
            bool llave = false;
            if(dictionary.Contains(palabra.ToLower()))
            {
                return true;
            }
            return llave;
        }
        private void AgregarBTN_Click(object sander, RoutedEventArgs e)
        {
            if(está(palabraTextBox.Text))
            {
                MessageBox.Show("Esa palabra ya está agregada","Advertencia");
            }else
            {
                DictionaryEntry palabra = new DictionaryEntry();
                palabra.Key= palabraTextBox.Text.ToLower();
                palabra.Value=significadoTextBox.Text;
                dictionary.Add(palabra.Key, palabra.Value);
                MessageBox.Show("Palabra agregada con exito","Aviso : )");
            }
        }
        private bool sonIguales(string palabraFuera, string palabraDentro)
        {
            bool iguales = false;
            if(palabraFuera==palabraDentro)
            {
                return iguales = true;
            }
            return iguales;
        }
        private void buscarPalabraBTN_Click(object sander, RoutedEventArgs e)
        {
            string? Palabra="";
            string? significado="";
            if(está(palabraTextBox.Text))
            {
                foreach(DictionaryEntry palabra in dictionary)
                {
                    if(sonIguales(palabra.Key.ToString().ToLower(), palabraTextBox.Text.ToLower()))
                    {
                        Palabra = palabra.Key.ToString();
                        significado = palabra.Value.ToString();
                    }
                }
                MessageBox.Show($"{significado}",$"Significado de {Palabra}");
            }else
            {
                MessageBox.Show($"La palabra \"{palabraTextBox.Text}\" no se encuentra agregada al diccionario.\nIntente agregandola", "Palabra no encontrada :C ");
            }
        }
    }
}