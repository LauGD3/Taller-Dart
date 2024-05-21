import 'dart:io';

void main() {
  print('Por favor, ingrese el primer número:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Por favor, ingrese el segundo número:');
  int num2 = int.parse(stdin.readLineSync()!);

  print('¿Desea la serie par o impar? (Ingrese "par" o "impar")');
  String serie = stdin.readLineSync()!;

  int menor;
  int mayor;
  
  if(num1 < num2) {
    menor = num1;
    mayor = num2;
  } else {
    menor = num2;
    mayor = num1;
  }

  print('La serie ${serie} entre $menor y $mayor es:');
  for (int i = menor; i <= mayor; i++) {
    if (serie == 'par' && i % 2 == 0) {
      print(i);
    } else if (serie == 'impar' && i % 2 != 0) {
      print(i);
    }
  }
}
