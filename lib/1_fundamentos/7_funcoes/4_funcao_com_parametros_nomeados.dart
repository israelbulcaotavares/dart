void main() {

  descreverPessoa(nome: 'Fabio', idade:  50);
  descreverPessoa(idade:  50, nome: 'Fabio' );

}

void descreverPessoa({ String? nome, int? idade }) {
  print('$nome tem $idade anos');
}