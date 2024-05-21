import 'dart:io';

void main() {
  print('Ingrese cuantos numeros de la secuencia de Fibonacci desea ver');
  int numero = int.parse(stdin.readLineSync()!);
  
  int primerNumero = 1;
  int ultimoNumero = 1;
  int resultado;

  print('$primerNumero');
  print('$ultimoNumero');

  for(int i = 2; i < numero; i++) {
    resultado = primerNumero + ultimoNumero;
    print('$resultado');
    primerNumero = ultimoNumero;
    ultimoNumero = resultado;
  }
}
