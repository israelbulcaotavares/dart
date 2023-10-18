import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {

  print('Iniciando a recuperação dos dados...');

  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');

  var dados = await recuperarDados(url);

  print('Dados recuperados: $dados');

}

Future<Map<String, dynamic>> recuperarDados(Uri url) async {
    final resposta = await http.get(url);

    if(resposta.statusCode == 200) {
      return jsonDecode(resposta.body);
    }else{
      throw Exception('Falha ao recuperar os dados');
    }
}

//async
//Future
