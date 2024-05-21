import 'dart:io';

// 1. Sin parámetros y sin retorno de valor
void sumarSinParametrosSinRetorno() {
  int a = 3;
  int b = 4;
  int suma = a + b;
  print('La suma de $a y $b es: $suma');
}

// 2. Con parámetros y sin retorno de valor
void sumarConParametrosSinRetorno(int a, int b) {
  int suma = a + b;
  print('La suma de $a y $b es: $suma');
}

// 3. Sin parámetros y con retorno de valor
int sumarSinParametrosConRetorno() {
  int a = 5;
  int b = 6;
  return a + b;
}

// 4. Con parámetros y con retorno de valor
int sumarConParametrosConRetorno(int a, int b) {
  return a + b;
}

void main() {
  bool continuar = true;

  while (continuar) {
    // Mostrar el menú
    print('Seleccione una opción para sumar:');
    print('1. Sin parámetros y sin retorno de valor');
    print('2. Con parámetros y sin retorno de valor');
    print('3. Sin parámetros y con retorno de valor');
    print('4. Con parámetros y con retorno de valor');
    print('5. Salir');

    // Leer la opción del usuario
    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        // Opción 1: Sin parámetros y sin retorno de valor
        sumarSinParametrosSinRetorno();
        break;
      case 2:
        // Opción 2: Con parámetros y sin retorno de valor
        print('Ingrese el primer número:');
        int num1 = int.parse(stdin.readLineSync()!);
        print('Ingrese el segundo número:');
        int num2 = int.parse(stdin.readLineSync()!);
        sumarConParametrosSinRetorno(num1, num2);
        break;
      case 3:
        // Opción 3: Sin parámetros y con retorno de valor
        int resultado = sumarSinParametrosConRetorno();
        print('La suma es: $resultado');
        break;
      case 4:
        // Opción 4: Con parámetros y con retorno de valor
        print('Ingrese el primer número:');
        int num1 = int.parse(stdin.readLineSync()!);
        print('Ingrese el segundo número:');
        int num2 = int.parse(stdin.readLineSync()!);
        int resultado = sumarConParametrosConRetorno(num1, num2);
        print('La suma es: $resultado');
        break;
      case 5:
        // Opción 5: Salir
        continuar = false;
        print('Saliendo del programa...');
        break;
      default:
        print('Opción no válida. Intente nuevamente.');
    }
  }
}
