Console.WriteLine("Conversor de Grados Centigrados a  Farenheit"); //1.8

Console.WriteLine("\nDigite la cantidad de grados centigrados que desea convertir: ");
decimal centigrados = Convert.ToDecimal(Console.ReadLine());
decimal farenheit = ((centigrados * 1.8M)+32M);
Console.WriteLine($"{centigrados} grados centigrados equivalen a {farenheit} grados farenheit.");
Console.Write("Presione Cualquier boton para continuar...");
Console.ReadKey();