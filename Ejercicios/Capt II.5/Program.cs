Console.WriteLine("\t\t\t****Calculadora de Cambio entre dolares y euros****");
float dolares, euros, cambioDia;
Console.Write("1- Dolares a Euros\n2- Euros a Dolares\n3- Salir\nDigite la opcion deseada: ");
string? opcion = Console.ReadLine();
switch(opcion){
    case "3":
    break;

    case "1":
    Console.Write("\nDigite el cambio del dia: ");
    cambioDia = float.Parse(Console.ReadLine());
    Console.Write("Digite la cantidad de dolares: ");
    dolares = float.Parse(Console.ReadLine());
    euros = aEuro(dolares, cambioDia);
    Console.WriteLine($"{dolares} dolares equivalen a {euros} euros.");
    break;

    case "2":
    Console.Write("\nDigite el cambio del dia: ");
    cambioDia = float.Parse(Console.ReadLine());
    Console.Write("Digite la cantidad de dolares: ");
    euros = float.Parse(Console.ReadLine());
    dolares = aDolar(euros, cambioDia);
    Console.WriteLine($"{euros} euros equivalen a {dolares} dolares.");
    break;


    default:
    Console.WriteLine("Opcion invalida.");
    break;
}
Console.Write("Saliendo...\nPresione Cualquier tecla para terminar...");
Console.ReadKey();

float aEuro(float dolares, float cambio){
    return dolares*cambio;
}
float aDolar(float euro, float cambio){
    return euro*cambio;
}