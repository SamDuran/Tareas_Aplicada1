using System.Windows;
using System;
using System.Collections;
/*Hacer un programa que funcione como una agenda telefónica y que guarde el nombre de la persona y su número telefónico. */
namespace Tarea3.Ejercicios.Capt7
{
    public partial class Ejercicio7_5 : Window{
        Hashtable agenda = new Hashtable();
        public Ejercicio7_5()
        {
            InitializeComponent();
        }
        private bool está(string persona)
        {
            bool si = false;
            if(agenda.Contains(persona.ToLower()))
            {
                si=true;
            }
            return si;
        }
        private bool sonIguales(string persona1, string persona2)
        {
            bool igual = false;
            if(persona1 == persona2)
            {
                igual = true;
            }
            return igual;
        }
        private void AgregarBTN_Click(object sander, RoutedEventArgs e)
        {
            if(está(personaTextBox.Text))
            {
                MessageBox.Show($"{personaTextBox.Text} ya está agregad@.","Advertencia");
            }else{
                DictionaryEntry persona = new DictionaryEntry();
                persona.Key= personaTextBox.Text.ToLower();
                persona.Value=numeroTextBox.Text;
                agenda.Add(persona.Key, persona.Value);
                MessageBox.Show($"{personaTextBox.Text} fue agregad@ con exito","Aviso : )");
            }
        }
        private void buscarPersonaBTN_Click(object sander, RoutedEventArgs e)
        {
            string? Persona="";
            string? numero="";
            if(está(personaTextBox.Text))
            {
                foreach(DictionaryEntry persona in agenda)
                {
                    if(sonIguales(persona.Key.ToString().ToLower(), personaTextBox.Text.ToLower()))
                    {
                        Persona = persona.Key.ToString();
                        numero = persona.Value.ToString();
                    }
                }
                MessageBox.Show($"Nombre: {Persona} \nNumero: {numero}",$"Aviso. {Persona} fue encontrad@.");
            }else
            {
                MessageBox.Show($"El nombre \"{personaTextBox.Text}\" no se encuentra agregada a la agenda.\nIntente agregandolo", "Persona no encontrada :c ");
            }
        }
    }
}