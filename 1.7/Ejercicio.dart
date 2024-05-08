import 'dart:io';

void main() {
  int col1;
  int col2;
  String color1;
  String color2;
  String combi;


  do {
    print('Ingrese un color \n 1 = Amarillo \n 2 = Azul \n 3 = Rojo');
    // Lee un string y lo convierte a entero
    col1 = int.parse(stdin.readLineSync()!);
  } while (col1 < 1 || col1 > 3);
  
  do {
    print('Ingrese un segundo color \n 1 = Amarillo \n 2 = Azul \n 3 = Rojo');
    // Lee un string y lo convierte a entero
    col2 = int.parse(stdin.readLineSync()!);
  } while (col1 < 1 || col1 > 3);

  color1 = color(col1);
  color2 = color(col2);
  combi = combinacion(col1, col2);
  print('La combinación de $color1 y $color2 es $combi');    
}
/**
 * Método encargado de convertir el numero del usuario a un string
 */
String color(int a) {
  String color = '';
  switch(a) {
    case 1:
      color = 'Amarillo';
    break;
    case 2:
      color = 'Azul';
    break;
    case 3:
      color = 'Rojo';
    break;
  } return color;
}
/**
 * Funcion combinar los colores y retornar ese resultado string
 */
String combinacion(int a, int b) {
  String color = '';
  // Si todos son iguales retornan el color
  if(a == 1 && a == b) {
    color = 'Amarillo, combinaste colores iguales';
  } else if(a == 2 && a == b) {
    color = 'Azul, combinaste colores iguales';
  } else if(a == 3 && a == b) {
    color = 'Rojo, combinaste colores iguales';
  } else if(a == 1 && b == 2) {
    color = 'Verde';
  } else if(a == 1 && b == 3) {
    color = 'Naranja';
  } else if(a == 2 && b == 3) {
    color = 'Morado';
  }  
  return color;
}