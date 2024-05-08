// ignore_for_file: dead_code

void main() {
  String nombre = 'Cristian Martinez';
  String sexo = 'Masculino';
  int edad = 18;
  double salario = 325000;
  dynamic poseeVehiculo = false;
  if(!poseeVehiculo) {
    poseeVehiculo = 'no tiene vehiculo';
  } else {
    poseeVehiculo = 'tiene vehiculo';
  }
  
  print('\n ' + ('-' * 50));
  print(('\n ' * 3) + '$nombre, es de sexo $sexo, tiene ${edad.toString()} años. Gana quincenalmente ${salario.toString()} y $poseeVehiculo.');
  print(('\n ' * 4) + ('-' * 50));
}