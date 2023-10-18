void main(){
  double nota1 = 7.5;
  double nota2 = 6.8;

  double media = (nota1 + nota2) / 2;

  if(media >= 7.0) {
    print('Aprovado! Média: $media');
  }else if(media >= 4.0 && media <= 6.0){
    print('Recuperação! Média: $media');
  }else{
    print('Reprovado! Média: $media');
  }

  if(media >= 7.0){
    print('Parabéns! Você passou de ano!');
  }else{
    print('Você terá quie repetir o ano!');
  }

}