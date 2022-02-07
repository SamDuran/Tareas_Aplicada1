using System;
using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using RegistroEstudiantes_LabTarea3.Entidades;
namespace RegistroEstudiantes_LabTarea3.DAL
{
    public partial class Contexto : DbContext
    {
        public DbSet<Carrera> Carreras {get;set;}
        public DbSet<Estudiante> Estudiantes {get;set;}

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite(@"Data Source = Data/RegistroEstudiante.db");
        }
    }
}
