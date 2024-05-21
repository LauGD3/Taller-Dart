import 'dart:io';

void main() {
  print('Por favor, ingrese un número:');
  String numeroStr = stdin.readLineSync()!;
  int numero = int.parse(numeroStr);
  List<String> digitos = numeroStr.split('');
  print('El número $numero tiene ${digitos.length} dígitos.');
  print('Los dígitos son: $digitos');
}
