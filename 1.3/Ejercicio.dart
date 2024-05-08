import 'dart:io';

void main() {
  int num1;
  int num2;

  print('Ingrese un número');
  // Lee un string y lo convierte a entero
  num1 = int.parse(stdin.readLineSync()!);
  
  print('Ingrese un segundo número');
  num2 = int.parse(stdin.readLineSync()!);
   
  print(suma(num1, num2));
}
/**
 * Funcion Encargada de sumar y retornar los valores
 */
int suma(int a, int b) {
  return a + b; 
}