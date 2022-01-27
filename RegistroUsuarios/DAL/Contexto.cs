using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using RegistroUsuarios.Entidades;

namespace RegistroUsuarios.DAL{
    public class Contexto : DbContext{
        public DbSet<Roles>? Roles {get;set;}

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite(@"Data Source = DATA/Roles.db");
        }
    }
}
