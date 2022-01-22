Console.WriteLine("****Programa que calcula el perimetro de cualquier polígono regular****");

Console.Write("\nRecordando que el polígono con menos lados es el de 3 lados...\nDigite la cantidad de lados del poligono: ");
short lados = Convert.ToInt16(Console.ReadLine());
Console.Write("Digite el tamaño de los lados del polígono: ");
int size = Convert.ToInt32(Console.ReadLine());
Console.WriteLine($"El perímetro del polígono es {size*lados}.");
Console.Write("Presione cualquier tecla para continuar...");
Console.ReadKey();