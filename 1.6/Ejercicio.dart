import 'dart:io';

void main() {
  int num1;
  int num2;

  print('Ingrese un número');
  // Lee un string y lo convierte a entero
  num1 = int.parse(stdin.readLineSync()!);
  
  print('Ingrese un segundo número');
  num2 = int.parse(stdin.readLineSync()!);

  if(num2 == 0) {
    print('No se puede dividir por 0');
  } {
    print(division(num1, num2));
  }
   
}
/**
 * Funcion encargada de dividir y retornar los valores
 */
double division(int a, int b) {
  return a / b; 
}