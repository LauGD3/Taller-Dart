import 'dart:io';
import 'dart:math';

void main() {
  print('Presione cualquier tecla para generar los números del baloto:');
  stdin.readLineSync();

  var rng = new Random();
  var numeros = <int>{};

  while (numeros.length < 6) {
    numeros.add(rng.nextInt(45) + 1);
  }

  var listaOrdenada = numeros.toList();
  listaOrdenada.sort();
  print('Números del baloto: ${listaOrdenada.join(', ')}');
}
