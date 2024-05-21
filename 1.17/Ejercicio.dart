import 'dart:io';

void main() {
  print('Ingrese un número para calcular su factorial');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero > 12) {
    print('El factorial de $numero es infinito.');
  } else {
    int factorial = 1;
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }
    print('El factorial de $numero es $factorial.');
  }
}
