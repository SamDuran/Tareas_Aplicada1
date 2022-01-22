Console.WriteLine("Programa que pide un numero y dice si es par o impar.");
Console.Write("Digite un numero: ");
decimal numero = Convert.ToDecimal(Console.ReadLine());

if(numero%2==0)
    Console.WriteLine($"{numero} es par.");
else
    Console.WriteLine($"{numero} es impar.");

Console.Write("Presione cualquier boton para continuar...");
Console.ReadKey();