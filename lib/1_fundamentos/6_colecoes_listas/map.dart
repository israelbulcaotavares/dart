void main(){

  //MAP
  //CHAVE VALOR = CHAVE UNICA A VALOR ESPECIFICO
  //TIPOS DIVERSOS = CHAVES E VALORES PODEM SER DE QUALQUER TIPO
  //DESORDENADOS

  //PEsquisa rapida, chaves unicas
  //inserir, remover, acessar, e atualizar;

  //Set<String> nomes = {'Caio' };
  Map< int ,String> nomes = {
    1: 'Caio'
  };

  //adicionar mais nomes
  // nomes.add('Alice');
  // nomes.add('Bob');
  // nomes.add('Michael');
  // nomes.add('Michael');
  // nomes.add('Michael');

  //adicionar um elemento
  nomes[2] = 'Alice';
  nomes[3] = 'Bob';
  nomes[4] = 'Michael';
  nomes[5] = 'Michael';

  //adicionando multiplos elementos
  nomes.addAll({
    6:'Betano',
    7:'Ciclano',
    8: 'Batman'
  });

  print('Lista de nomes: $nomes');

  //acessar elemento
  print('O nome com ID 1 é: ${nomes[1]}');
  print('O nome com ID 2 é: ${nomes[2]}');
  print('O nome com ID 4 é: ${nomes[4]}');

  // remover um elemento
  nomes.remove(3);
  print('Lista de nomes após a remoção: $nomes');


}