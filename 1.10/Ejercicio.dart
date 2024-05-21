import 'Cilindro.dart';

void main() {
  var cilindro = Cilindro(5, 10); 

  print('Área: ${cilindro.getArea()} unidades cuadradas');
  print('Perímetro: ${cilindro.getPerimetro()} unidades');
  print('Volumen: ${cilindro.getVolumen()} unidades cúbicas');
}

