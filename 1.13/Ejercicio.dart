import 'dart:io';

void main() {
  print('Ingrese el valor unitario del artículo:');
  double valorUnitario = double.parse(stdin.readLineSync()!);

  print('Ingrese la cantidad a llevar:');
  int cantidad = int.parse(stdin.readLineSync()!);

  print('¿Es el artículo de la canasta familiar? (s/n)');
  String esCanastaFamiliar = stdin.readLineSync()!.toLowerCase();

  double total = valorUnitario * cantidad;
  // Se suma el IVA del 19%
  if (esCanastaFamiliar == 'n') {
    total += total * 0.19; 
  }
  // toStringAsFixed(2) es la funcion de dart para cortar los decimales
  print('El total del valor de los productos a llevar es: ${total.toStringAsFixed(2)}');
}
