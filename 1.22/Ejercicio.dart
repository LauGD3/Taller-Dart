void main() {
  List<int> vector = List.filled(10, 0);

  int a = vector.length;
  print(a);
  
  // Llenar el vector
  for (int i = 0; i < vector.length; i++) {
    vector[i] = i + 1;
  }

  // Imprimir el vector
  for (int i = 0; i < vector.length; i++) {
    print('Índice: $i, Posición: ${i+1}, Valor: ${vector[i]}');
  }
}
