

int sumar(int numero1, int numero2) {
  return numero1 + numero2;
}

double convertirTemperatura(double temperatura, String tipo) {
  if (tipo == 'C a F') {
    return (temperatura * 9 / 5) + 32;
  } else if (tipo == 'F a C') {
    return (temperatura - 32) * 5 / 9;
  } else {
    throw Exception('Tipo de conversión no válido. Usa "C a F" o "F a C".');
  }
}

void main() {
  print("Hola Mundo");
  String nombre = "Esteban";
  int edad = 19;
  print(nombre);
  print(edad);


  // Var y Final
  // Var

  var nombre2 = 'Pedro'; 
  print(nombre2); 

  nombre = 'Javier'; 
  print(nombre2); 
  
  // Final

  final edad2 = 30; 
  print(edad2); 


  double altura = 1.78;
  String cita = "Cita1";
  print(altura);
  print(cita);

  
 bool esMayorDeEdad = true; 

  if (esMayorDeEdad) {
    print('Eres mayor de edad.');
  // ignore: dead_code
  } else {
    print('No eres mayor de edad.');
  }


   List<String> amigos = ['Esteban', 'Ana', 'Juan'];
  for (var nombre in amigos) {
    print(nombre);
  }


  Set<String> ciudades = {'Cali', 'Medellin', 'Cartagena'};
  ciudades.add('Bogota');
  ciudades.remove('Cali');

  print(ciudades);

  Map <String, String> paisesCapitales = {
    'Argentina': 'Buenos Aires',
    'Colombia': 'Bogota',
    'Alemania': 'Berlin',
    'Francia': 'Paris'
  };

  String capitalColombia = paisesCapitales['Colombia']!;
  print('La capital de Colombia es: $capitalColombia');


  int num1 = 18;
  int num2 = 18;

  int suma = num1 + num2;
  int resta = num1 - num2;
  int multiplicacion =  num1 * num2;
  double division = num1 / num2;

  print('La suma de $num1 y $num2 es: $suma');
  print('La resta de $num1 y $num2 es: $resta');
  print('La multiplicación de $num1 y $num2 es: $multiplicacion');
  print('La división de $num1 y $num2 es: $division');

  int numero1 = 8;
  int numero2 = 12;

  
  bool sonIguales = numero1 == numero2;
  print('¿Los números son iguales? $sonIguales');

  bool esMayor = numero1 > numero2;
  print('¿El primer número es mayor que el segundo? $esMayor');

  bool sonDiferentes = numero1 != numero2;
  print('¿Los números son diferentes? $sonDiferentes');

  int resultado = sumar(15, 25);
  print('La suma de los dos números es: $resultado');

  int nacimiento = 2005;

  int yearFutures = 2050;

  int edadEn2050 = yearFutures - nacimiento;
  print('En el año $yearFutures tendrás $edadEn2050 años.');

// Prueba de las Converciones

  double temperaturaCelsius = 25.0;
  double fahrenheit = convertirTemperatura(temperaturaCelsius, 'C a F');
  print('$temperaturaCelsius °C es igual a $fahrenheit °F');

  double temperaturaFahrenheit = 77.0;
  double celsius = convertirTemperatura(temperaturaFahrenheit, 'F a C');
  print('$temperaturaFahrenheit °F es igual a $celsius °C');

}


