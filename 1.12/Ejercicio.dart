import 'dart:math';

void main() {
  int lanzamientos = 0;
  while (lanzamientos < 3) {
    int dado1 = Random().nextInt(6) + 1;
    int dado2 = Random().nextInt(6) + 1;
    print('Dado 1: $dado1, Dado 2: $dado2');
    if (dado1 == dado2) {
      lanzamientos++;
      if (lanzamientos == 3) {
        print('¡Saca una ficha!');
      } else {
        print('Lanzar de nuevo');
      }
    } else {
      print('¡Lanza de nuevo!');
      lanzamientos = 0;
    }
  }
}
