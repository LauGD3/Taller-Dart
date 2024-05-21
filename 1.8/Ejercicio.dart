import 'dart:io';
import 'dart:math';

void main() {
  int opcion = 0;
  
  do {
    try {
      print('Selecciona una operación:');
      print('1. Suma');
      print('2. Resta');
      print('3. Multiplicación');
      print('4. División');
      print('5. Módulo');
      print('6. Cuadrado');
      print('7. Raíz cuadrada');
      print('8. Potencia');
      print('9. Porcentaje');
      print('10. Número aleatorio');
      
      opcion = int.parse(stdin.readLineSync()!);

    } catch(e) {
      print(e);
      continue;
    }
  } while (opcion > 10 || opcion < 1);
  
  int? num1, num2;

  if (opcion != 10) {
    print('Ingresa el primer número:');
    num1 = int.parse(stdin.readLineSync()!);
    print('Ingresa el segundo número:');
    num2 = int.parse(stdin.readLineSync()!);
  }

  game(opcion, num1, num2);
}

void game(int opcion, int? num1, int? num2) {
  switch (opcion) {
    case 1:
      print('Resultado: ${num1! + num2!}');
      break;
    case 2:
      print('Resultado: ${num1! - num2!}');
      break;
    case 3:
      print('Resultado: ${num1! * num2!}');
      break;
    case 4:
      print('Resultado: ${num1! / num2!}');
      break;
    case 5:
      print('Resultado: ${num1! % num2!}');
      break;
    case 6:
      print('Resultado: ${pow(num1!, 2)}');
      break;
    case 7:
      print('Resultado: ${sqrt(num1!)}');
      break;
    case 8:
      print('Resultado: ${pow(num1!, num2!)}');
      break;
    case 9:
      print('Resultado: ${(num1! * num2!) / 100}');
      break;
    case 10:
      print('Número aleatorio: ${Random().nextInt(100)}');
      break;
    default:
      print('Opción no válida');
  }
}
