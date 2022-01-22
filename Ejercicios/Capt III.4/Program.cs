Console.WriteLine("Programa que pide un numero y devuelve el dia al cual le corresponde ese numero.");
String[] arreglo = {"Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"};
Console.Write("Digite un numero (1/7): ");
short numero = Convert.ToInt16(Console.ReadLine());
while(numero>7 || numero<1){
    Console.Write("Numero invalido, por favor digite un numero dentro del siguiente intervalo(1/7): ");
    numero = Convert.ToInt16(Console.ReadLine());
}
Console.WriteLine($"El numero {numero} le pertenece al dia {arreglo[numero-1]}");
Console.WriteLine("Presione cualquier tecla para continuar...");
Console.ReadKey();