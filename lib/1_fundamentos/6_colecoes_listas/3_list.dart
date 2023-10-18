void main(){

  //ordenado
  //acessivel por indice
  //tamanho modificavel
  //permite duplicata

  List<String> nomes = ['Caio' ];// indice 0

  //adicionar mais nomes
  nomes.add('Alice'); // indice 1
  nomes.add('Bob'); //indice 2
  nomes.add('Michael'); //indice 3
  nomes.add('Michael'); //indice 3
  nomes.add('Michael'); //indice 3
  nomes.add('Michael'); //indice 3
  nomes.add('Michael'); //indice 3
  nomes.add('Michael'); //indice 3

  print('Lista de nomes: $nomes');

  //acessar elemento
  print('O primeiro nome é: ${nomes[0]}');//acessivel por indice
  print('O segundo nome é: ${nomes[1]}');//acessivel por indice
  print('O Terceiro nome é: ${nomes[2]}');//acessivel por indice

  // remover um elemento
  nomes.remove('Bob');


  print('Lista de nomes após a remoção: $nomes');



}