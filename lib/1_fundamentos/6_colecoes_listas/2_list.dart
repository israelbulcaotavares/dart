void main(){
  List<int> numeros = [];

  //adicionar elementos
  numeros.add(10); // indice 0
  numeros.add(20); // indice 1
  numeros.add(30); //indice 2
  numeros.add(40); // indice 3

  print('Lista completa $numeros');
  print('${numeros[1]}');
  print(numeros[2]);

  //remover um elemento da lista
  numeros.remove(20);

  print('Lista completa $numeros');

}