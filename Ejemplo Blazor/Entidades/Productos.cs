using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace Samuel_Duran_Ap1_p1_.Entidades
{
    public partial class Productos
    {
        [Key]
        public int ProductoId { get; set; }
        [Required(ErrorMessage ="Es obligatorio introducir la  descripción.")]
        public string? Descripcion { get; set; }
        public decimal Existencia { get; set; }
        [Required(ErrorMessage = "El Campo \"Costo\"está vacío. Por favor indique un costo.")]
        [Range(1,int.MaxValue, ErrorMessage ="El costo debe estar dentro del rango permitido")]
        public decimal Costo { get; set; }
        public decimal ValorInventario { get; set; }
    }
}