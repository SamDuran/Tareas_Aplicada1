using System;
using System.Collections.Generic;
using System.Windows;

namespace EjerciciosTarea4.UI.Capt9
{
    public partial class Ejercicio9_3 : Window
    {
        private List<Persona> Lista;
        public struct Mascota
        {
            public string especie;
            public string nombre;
            public Mascota(string Especie, string Nombre)
            {
                especie= Especie;
                nombre = Nombre;
            }
        }
        public struct Persona
        {
            public int edad;
            public string nombre;
            public Mascota mascota;
            public Persona(int Edad, string Nombre, Mascota mascota)
            {
                edad = Edad;
                nombre = Nombre;
                this.mascota = mascota;
            }
        }
        public Ejercicio9_3() 
        {
            Lista = new List<Persona>();
            InitializeComponent();
        }
        private void GuardarBTN_Click(object sander, RoutedEventArgs e)
        {
            Persona nueva = new Persona(int.Parse(TextBoxEdad.Text),TextBoxNombre.Text, new Mascota(TextBoxEspecie.Text, TextBoxNombreM.Text));
            Lista.Add(nueva);
            MessageBox.Show($"La persona {nueva.nombre} fue guardad@ correctamente junto a su mascota {nueva.mascota.nombre}.","¡Aviso!");
        }
    }
}
