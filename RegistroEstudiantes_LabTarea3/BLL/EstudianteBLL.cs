using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Linq.Expressions;
using RegistroEstudiantes_LabTarea3.Entidades;
using RegistroEstudiantes_LabTarea3.DAL;
namespace RegistroEstudiantes_LabTarea3.BLL
{
    public partial class EstudianteBLL
    {
        private static bool Existe(int id)
        {
            Contexto contexto = new Contexto();
            bool paso = false;

            try{
                paso = contexto.Estudiantes.Any(e=>e.EstudianteId==id);
            }catch (Exception)
            {
                throw;
            }finally{
                contexto.Dispose();
            }
            return paso;
        }
        private static bool modificar(Estudiante estudiante)
        {
            Contexto contexto = new Contexto();
            bool paso = false;
            try{
                contexto.Entry(estudiante).State=EntityState.Modified;
                paso = contexto.SaveChanges()>0;
            }catch(Exception)
            {
                throw;
            }finally
            {
                contexto.Dispose();
            }
            return paso;
        }
        private static bool agregar(Estudiante estudiante)
        {
            Contexto contexto = new Contexto();
            bool paso = false;
            try{
                contexto.Estudiantes.Add(estudiante);
                paso = contexto.SaveChanges()>0;
            }catch (Exception)
            {
                throw;
            }finally{
                contexto.Dispose();
            }
            return paso;
        }
        public static bool Guardar(Estudiante estudiante)
        {
            if(!Existe(estudiante.EstudianteId))
                return agregar(estudiante);
            else 
                return modificar(estudiante);
        }
    }    
}