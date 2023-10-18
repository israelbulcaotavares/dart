void main(){

  //Unicidade
  //desordenado
  //operações de conjunto = uniao, interseção e diferença

  //List<String> nomes = ['Caio' ];
  Set<String> nomes = {'Caio' };

  //adicionar mais nomes
  nomes.add('Alice');
  nomes.add('Bob');
  nomes.add('Michael');
  nomes.add('Michael');
  nomes.add('Michael');
 

  print('Lista de nomes: $nomes');

  //acessar elemento
  // print('O primeiro nome é: ${nomes[0]}');
  // print('O segundo nome é: ${nomes[1]}');
  // print('O Terceiro nome é: ${nomes[2]}');

  // remover um elemento
  nomes.remove('Bob');


  print('Lista de nomes após a remoção: $nomes');



}