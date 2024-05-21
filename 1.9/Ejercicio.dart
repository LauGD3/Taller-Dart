import 'dart:io';
import 'dart:math';

void main() {
  int opcion = 0;

  do {
    print('Selecciona una figura:');
    print('1. Triángulo');
    print('2. Rectángulo');
    print('3. Círculo');

    opcion = int.parse(stdin.readLineSync()!);

    if (opcion < 1 || opcion > 3) {
      print('Ingresa un número entre 1 y 3');
    }
  } while (opcion < 1 || opcion > 3);

  switch (opcion) {
    case 1:
      print('Has seleccionado un triángulo. Por favor, ingresa la base y la altura.');
      double base = double.parse(stdin.readLineSync()!);
      double altura = double.parse(stdin.readLineSync()!);
      print('Área: ${base * altura / 2} unidades cuadradas');
      print('Perímetro: ${base + altura + sqrt(pow(base, 2) + pow(altura, 2))} unidades');
      break;
    case 2:
      print('Has seleccionado un rectángulo. Por favor, ingresa la longitud y la anchura.');
      double longitud = double.parse(stdin.readLineSync()!);
      double anchura = double.parse(stdin.readLineSync()!);
      print('Área: ${longitud * anchura} unidades cuadradas');
      print('Perímetro: ${2 * (longitud + anchura)} unidades');
      break;
    case 3:
      print('Has seleccionado un círculo. Por favor, ingresa el radio.');
      double radio = double.parse(stdin.readLineSync()!);
      print('Área: ${pi * pow(radio, 2)} unidades cuadradas');
      print('Perímetro: ${2 * pi * radio} unidades');
      break;
  }
}
