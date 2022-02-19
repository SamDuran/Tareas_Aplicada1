using System;

namespace EjerciciosTarea5.UI.Capt10.Clases
{
    public partial class Estudiante
    {
        public string? Nombres { get; set; }
        public int Edad { get; set; }
        public string? Apellidos { get; set; }
        public decimal Promedio { get; set; }
        public override string ToString()
        {
            return $"||Apellidos: {Apellidos}\n||Nombres: {Nombres}\n||Edad: {Edad}\n||Promedio {Promedio}";
        }
    }
}