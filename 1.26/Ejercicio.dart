import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();

  // Ingresar la cantidad de usuarios
  print('Ingrese la cantidad de usuarios:');
  int cantidadUsuarios = int.parse(stdin.readLineSync()!);
  List<String> usuarios = [];

  for (int i = 0; i < cantidadUsuarios; i++) {
    print('Ingrese el nombre del jugador ${i + 1}:');
    String nombre = stdin.readLineSync()!;
    usuarios.add(nombre);
  }

  int acumulado = 0;

  while (acumulado >= 0) {
    for (String usuario in usuarios) {
      print('\n Acumulado actual: $acumulado');
      print('Turno de $usuario');

      int primerTiro = random.nextInt(6) + 1;
      print('$usuario tira el primer dado y obtiene: $primerTiro');

      if (primerTiro == 1 || primerTiro == 6) {
        print('$usuario pierde por sacar $primerTiro y debe colocar una moneda en el acumulado.');
        acumulado++;
      } else {
        print('$usuario puede apostar hasta el máximo del acumulado: $acumulado');
        print('Ingrese la cantidad a apostar:');
        int apuesta = int.parse(stdin.readLineSync()!);

        while (apuesta > acumulado || apuesta <= 0) {
          print('Apuesta no válida. Ingrese una cantidad entre 1 y $acumulado:');
          apuesta = int.parse(stdin.readLineSync()!);
        }

        int segundoTiro = random.nextInt(6) + 1;
        print('$usuario tira el segundo dado y obtiene: $segundoTiro');

        if (segundoTiro > primerTiro) {
          print('$usuario gana la apuesta y recibe $apuesta monedas.');
          acumulado -= apuesta;
        } else {
          print('$usuario pierde la apuesta y coloca $apuesta monedas en el acumulado.');
          acumulado += apuesta;
        }
      }

      if (acumulado <= 0) {
        print('\n El juego ha terminado ya que el acumulado es $acumulado.');
        return;
      }
    }
  }
}
