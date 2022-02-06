using System.ComponentModel.DataAnnotations;

namespace RegistroEstudiantes_LabTarea3.Entidades
{
    public partial class Estudiante
    {
        [Key]
        public int EstudianteId { get; set; }
        public string Nombres { get; set; }
        public string Email { get; set; }
        public int CarreraId { get; set; }
        public bool Activo { get; set; }
    }
}