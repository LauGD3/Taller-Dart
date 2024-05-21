import 'dart:io';

void main() {
  print('Ingrese la longitud del vector:');
  int longitud = int.parse(stdin.readLineSync()!);

  List<int> vector = [];
  for (int i = 0; i < longitud; i++) {
    print('Ingrese el valor para la posición $i:');
    vector.add(int.parse(stdin.readLineSync()!));
  }

  print('¿Desea ordenar el vector en orden ascendente o descendente? (a/d):');
  String orden = stdin.readLineSync()!;

  if (orden == 'a') {
    vector.sort();
  } else if (orden == 'd') {
    vector.sort((a, b) => b.compareTo(a));
  }

  print('El vector ordenado es: $vector');
}
