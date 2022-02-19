using System;

namespace EjerciciosTarea5.UI.Capt10.Clases
{
    public partial class Inventario{
        public string? Descripción {get;set;} //Nombre del producto
        public int Codigo {get;set;} //Codigo del producto
        public decimal Existencia {get;set;} //Cantidad existente
        public string? Estado {get;set;} //Si es nuevo, chatarra, etc...

        public override string ToString()
        {
            return $"||Producto: {Descripción} \n||Código: {Codigo} \n||Existencia: {Existencia} \n||Estado: {Estado}";
        }
    }
}