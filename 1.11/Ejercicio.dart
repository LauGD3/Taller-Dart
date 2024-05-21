import 'dart:io';

void main() {
  print('¿Desea ingresar ángulos o lados? (a/l)');
  String opcion = stdin.readLineSync()!;

  if (opcion == 'a') {
    print('Ingrese los tres ángulos del triángulo:');
    double angulo1 = double.parse(stdin.readLineSync()!);
    double angulo2 = double.parse(stdin.readLineSync()!);
    double angulo3 = double.parse(stdin.readLineSync()!);

    if (angulo1 <= 0 || angulo2 <= 0 || angulo3 <= 0) {
      print('Los ángulos deben ser mayores a cero.');
    } else if (angulo1 + angulo2 + angulo3 != 180) {
      print('La suma de los ángulos debe ser igual a 180°.');
    } else {
      if (angulo1 == 60 && angulo2 == 60 && angulo3 == 60) {
        print('El triángulo es equilátero y acutángulo.');
      } else if (angulo1 == angulo2 || angulo1 == angulo3 || angulo2 == angulo3) {
        print('El triángulo es isósceles.');
      } else {
        print('El triángulo es escaleno.');
      }

      if (angulo1 == 90 || angulo2 == 90 || angulo3 == 90) {
        print('El triángulo es rectángulo.');
      } else if (angulo1 > 90 || angulo2 > 90 || angulo3 > 90) {
        print('El triángulo es obtusángulo.');
      } else {
        print('El triángulo es acutángulo.');
      }
    }
  } else if (opcion == 'l') {
    print('Ingrese los tres lados del triángulo:');
    double lado1 = double.parse(stdin.readLineSync()!);
    double lado2 = double.parse(stdin.readLineSync()!);
    double lado3 = double.parse(stdin.readLineSync()!);

    if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
      print('Los lados deben ser mayores a cero.');
    } else if (lado1 + lado2 <= lado3 || lado1 + lado3 <= lado2 || lado2 + lado3 <= lado1) {
      print('La suma de los dos lados más cortos debe ser mayor a la longitud del lado más largo.');
    } else {
      if (lado1 == lado2 && lado1 == lado3) {
        print('El triángulo es equilátero.');
      } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
        print('El triángulo es isósceles.');
      } else {
        print('El triángulo es escaleno.');
      }
    }
  } else {
    print('Opción no válida.');
  }
}
