// ignore_for_file: dead_code
import 'dart:io';

void main() {
  String? nombre;
  String? sexo;
  int? edad;
  double? salario;
  var poseeVehiculo;

  print('Ingrese su nombre');
  nombre = stdin.readLineSync();

  print('Ingrese su sexo');
  sexo = stdin.readLineSync();

  print('Ingrese su edad');
  edad = stdin.readByteSync();

  try {
    print('Ingrese su salario');
    String? salarioCap;
    salarioCap = stdin.readLineSync();
    salario = double.parse(salarioCap!);
  } catch (e) {
    print(e);
  }
  
  print('¿Posee vehiculo?');
  poseeVehiculo = stdin.readLineSync();

  print('\n ' + ('-' * 50));
  print('Nombre:     $nombre');
  print('Sexo:       $sexo');
  print('Edad:       $edad');
  print('Salario:    $salario');
  print('Vehiculo    $poseeVehiculo');
  print('\n ' + ('-' * 50));  
}
