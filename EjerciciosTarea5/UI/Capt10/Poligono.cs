namespace EjerciciosTarea5.UI.Capt10.Clases
{
    public partial class Poligono
    {
        public int CantLados { get; set; }
        public int TamañoLados { get; set; }
        public decimal Angulos { get; set; }
        public Poligono()
        {
            CantLados= TamañoLados = 0; 
            Angulos = 0;
        }
        public Poligono(int lados, int tam, decimal angulos)
        {
            CantLados = lados;
            TamañoLados = tam;
            Angulos= angulos;
        }
        
        public override string ToString()
        {
            return $"||Cantidad de lados: {CantLados}\n||Tamaño de los Lados: {TamañoLados}\n||Angulos: {Angulos}";
        }
    }
}