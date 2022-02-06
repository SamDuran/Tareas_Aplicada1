using System;
using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace RegistroEstudiantes_LabTarea3.Entidades{
    public partial class Carrera
    {
        [Key]
        public int CarreraId {get;set;}
        public string Nombre {get;set;}
    }
}