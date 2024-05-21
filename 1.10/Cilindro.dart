import 'dart:math';

class Cilindro {
  double radio;
  double altura;

  Cilindro(this.radio, this.altura);

  double getArea() {
    return 2 * pi * radio * (radio + altura);
  }

  double getPerimetro() {
    return 2 * pi * radio;
  }

  double getVolumen() {
    return pi * pow(radio, 2) * altura;
  }
}