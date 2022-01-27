using System;
using System.Linq;
using System.Collections.Generic;
using RegistroUsuarios.Entidades;
using RegistroUsuarios.DAL;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace Registrousuarios.BLL
{
    public class RolesBLL
    {
        public static bool Guardar(Roles Rol)
        {
            if (!Está(Rol.RolId))
                return insertar(Rol);
            else
                return Modificar(Rol);
        }
        private static bool insertar(Roles rol)
        {
            bool paso = false;
            Contexto contexto = new Contexto();

            try
            {
                contexto.Roles.Add(rol);
                paso = contexto.SaveChanges() > 0;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                contexto.Dispose();
            }
            return paso;
        }
        public static bool Está(int id)
        {
            Contexto contexto = new Contexto();
            bool encontrado = false;
            try
            {
                encontrado = contexto.Roles.Any(e => e.RolId == id);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                contexto.Dispose();
            }
            return encontrado;
        }
        public static bool Modificar(Roles rol)
        {
            bool paso = false;
            Contexto contexto = new Contexto();
            try
            {
                contexto.Entry(rol).State = EntityState.Modified;
                paso = contexto.SaveChanges() > 0;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
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
                var Rol = contexto.Roles.Find(id);
                if (Rol != null)
                {
                    contexto.Roles.Remove(Rol);
                    paso = contexto.SaveChanges() > 0;
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                contexto.Dispose();
            }
            return paso;
        }
        public static Roles buscar(int id)
        {
            Contexto contexto = new Contexto();
            Roles rol;
            try
            {
                rol = contexto.Roles.Find(id);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                contexto.Dispose();
            }
            return rol;
        }
        public static List<Roles> getList(Expression<Func<Roles, bool>> criterio){
            List<Roles>? lista = new List<Roles>();
            Contexto? contexto = new Contexto();
            try{
                lista = contexto.Roles.Where(criterio).ToList();
            }catch(Exception){
                throw;
            }finally{
                contexto.Dispose();
            }
            return lista;
        }
    }
}