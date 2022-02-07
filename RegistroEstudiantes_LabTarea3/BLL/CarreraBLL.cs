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
    
    public partial class CarreraBLL
    {
        public static bool Guardar(Carrera carrera)
        {
            if(!existe(carrera.CarreraId))
                return agregar(carrera);
            else
                return modificar(carrera);
        }
        private static bool agregar(Carrera carrera)
        {
            bool paso = false;
            Contexto contexto = new Contexto();
            try 
            {
                contexto.Carreras.Add(carrera);
                paso= contexto.SaveChanges()>0;
            }catch(Exception)
            {
                throw;
            }finally
            {
                contexto.Dispose();
            }
            return paso;
        }
        public static bool existe (int id)
        {
            Contexto contexto = new Contexto();
            bool está = false;
            try
            {
                está = contexto.Carreras.Any(e=>e.CarreraId==id);
            }catch(Exception)
            {
                throw;
            }finally{
                contexto.Dispose();
            }
            return está;
        }
        private static bool modificar(Carrera carrera)
        {
            bool paso = false;
            Contexto contexto = new Contexto();

            try
            {
                contexto.Entry(carrera).State = EntityState.Modified;
                paso = contexto.SaveChanges()>0;
            }catch (Exception)
            {
                throw;
            }finally{
                contexto.Dispose();
            }
            return paso;
        }
        public static bool eliminar(int id)
        {
            bool paso = false;
            Contexto contexto = new Contexto();

            try
            {
                var carrera = contexto.Carreras.Find(id);
                if(carrera !=null)
                {
                    contexto.Carreras.Remove(carrera);
                    paso = contexto.SaveChanges()>0;
                }
            }catch(Exception)
            {
                throw;
            }
            finally{
                contexto.Dispose();
            }
            return paso;
        }
        public static Carrera buscar(int id)
        {
            Contexto contexto = new Contexto();
            Carrera carrera;

            try
            {
                carrera= contexto.Carreras.Find(id);
            }catch(Exception)
            {
                throw;
            }finally
            {
                contexto.Dispose();
            }
            return carrera;
        }
        public static List<Carrera> getList(Expression<Func<Carrera, bool>>criterio)
        {
            List<Carrera> lista = new List<Carrera>();
            Contexto contexto = new Contexto();
            try{
                lista=contexto.Carreras.Where(criterio).ToList();
            }catch (Exception)
            {
                throw;
            }
            finally
            {
                contexto.Dispose();
            }
            return lista;

        }
    }
}