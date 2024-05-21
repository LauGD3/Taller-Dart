import 'dart:io';

void main() {
  print('Ingrese el primer número:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Ingrese el segundo número:');
  int num2 = int.parse(stdin.readLineSync()!);

  print('Ingrese el tercer número:');
  int num3 = int.parse(stdin.readLineSync()!);

  print('¿Desea organizar los números de forma ascendente o descendente? (a/d)');
  String opcion = stdin.readLineSync()!;

  List<int> numeros = [num1, num2, num3];

  if (opcion.toLowerCase() == 'a') {
    numeros.sort((a, b) => a.compareTo(b));
    print('Números en orden ascendente: ${numeros.join(', ')}');
  } else if (opcion.toLowerCase() == 'd') {
    numeros.sort((a, b) => b.compareTo(a));
    print('Números en orden descendente: ${numeros.join(', ')}');
  } else {
    print('Opción no válida.');
  }
}
