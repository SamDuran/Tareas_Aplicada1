using System;
using System.ComponentModel.DataAnnotations;

namespace RegistroUsuarios.Entidades{
    public class Roles{
        [Key]
        public int RolId{get;set;}
        public DateTime fecha{get;set;} = DateTime.Now;
        public string? descripcion{get;set;}
    }
}