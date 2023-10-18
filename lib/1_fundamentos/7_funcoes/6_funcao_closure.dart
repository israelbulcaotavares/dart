void main() {
  var meuContador = criarContador();

  print(meuContador());
  print(meuContador());
  print(meuContador());

  var meuOutroContador = criarContador();

  print('\n');

  print(meuOutroContador());
  print(meuOutroContador());
  print(meuOutroContador());
  print(meuOutroContador());

}

Function criarContador() {

  int contador = 0 ;

  return () {
    contador++;
    return contador;
  };

}