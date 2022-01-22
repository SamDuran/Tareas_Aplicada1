Console.WriteLine("\t\t\t****Conversor de grados a radianes****");

const decimal PI = 3.1416M;
Console.Write("Digite los grados a convertir: ");
decimal grados = Convert.ToDecimal(Console.ReadLine());
decimal radianes = grados * PI/180;
Console.WriteLine($"{grados} grados equivale a {radianes} radianes.");
Console.Write("Presione cualquier boton para continuar...");
Console.ReadKey();
