
void main() {
  for(int i = 1; i <= 10; i++) {
    print('Tabla del $i');

    for(int y = 1; y <= 10; y++) {
      print('$y x $i = ${ y * i }');
    } 
    print('\n' + ('-' * 50));
  } 
}
