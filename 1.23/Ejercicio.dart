void main() {
  // Matriz de 4x5 con los datos de tus compañeros
  Map<String, Map<String, dynamic>> matriz = {
    'com1': {
      'nombre': 'Raul',
      'apellido': 'Sanchez',
      'edad': 41,
      'estado': 'casado',
      'telefono': 32323
    },
    'com2': {
      'nombre': 'Ana',
      'apellido': 'Martinez',
      'edad': 20,
      'estado': 'Soltera',
      'telefono': 22222
    },
    'com3': {
      'nombre': 'Eduardo',
      'apellido': 'Diaz',
      'edad': 28,
      'estado': 'Soltero',
      'telefono': 55555
    },
    'com4': {
      'nombre': 'Manuel',
      'apellido': 'Martinez',
      'edad': 50,
      'estado': 'Soltero',
      'telefono': 8888888
    },
    'com5': {
      'nombre': 'David',
      'apellido': 'Medina',
      'edad': 50,
      'estado': 'Soltero',
      'telefono': 8888888
    },
  };
  
  matriz.forEach((key, value) {
    print('$key: ');
    value.forEach((k, v) {
      print('  $k: $v');
    });
  });
}
