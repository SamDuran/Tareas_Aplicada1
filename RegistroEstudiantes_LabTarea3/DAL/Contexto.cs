using System;
using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using RegistroEstudiantes_LabTarea3.Entidades;

public partial class Contexto : DbContext
{
    private DbSet<Carrera> Carreras {get;set;}
    private DbSet<Estudiante> Estudiantes {get;set;}

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlite(@"Data Source = Data/RegistroEstudiante.db");
    }
}