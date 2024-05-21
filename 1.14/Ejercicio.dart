import 'dart:io';

void main() {
  print('Ingrese el la tabla de multiplicar que quiere imprimir:');
  int numero = int.parse(stdin.readLineSync()!);
  
  for(int i = 1; i <= 10; i++) {
    print('${ numero } x ${ i } = ${ numero * i }');
  }
}
