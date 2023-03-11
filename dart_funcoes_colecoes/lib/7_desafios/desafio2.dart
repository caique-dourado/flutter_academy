import 'dart:math';

void main() {
//* Crie uma função chamada "soma" que receba dois parâmetros inteiros e retorne
//* a soma dos mesmos
  print('FUNÇÃO SOMA:');
  int soma({required int n1, required int n2}) => n1 + n2;
  print(soma(n1: 10, n2: 20));

//* Crie uma lista chamada "numeros" com 5 elementos inteiros.
//* Em seguida, crie uma função chamada "somaLista" que receba como parâmetro a
//* lista "numeros" e retorne a soma de todos os elementos da lista.

  print('\nFUNÇÃO SOMATORIO DE ELEMENTOS: ');
  Random random = Random();
  var numeros = <int>[];
  for (var i = 0; i < 5; i++) {
    numeros.add(random.nextInt(100));
  }

  int somaLista({required List<int> numeros}) {
    var soma = 0;
    for (var i = 0; i < numeros.length; i++) {
      soma = soma + numeros[i];
    }
    return soma;
  }

  print(somaLista(numeros: numeros));

//* Crie um mapa chamado "agenda" que contenha o nome e o número de telefone de
//* 3 pessoas. Em seguida, crie uma função chamada "pesquisarTelefone" que
//* receba como parâmetro o nome de uma pessoa e retorne o número de telefone
//* correspondente no mapa "agenda".

  print('\nPESQUISANDO NUMERO');
  var agenda = {
    'CAIQUE': 99123325,
    'FERNADINANDO': 984565489,
    'ZOE': 657864153
  };

  pesquisaTelefone({required String nome}) {
    for (var i = 0; i < agenda.length; i++) {
      if (agenda.containsKey(nome)) {
        return agenda[nome];
      }
    }
  }

  print(pesquisaTelefone(nome: 'CAIQUE'));

//* Crie uma função chamada "dobroLista" que receba como parâmetro uma lista de
//* inteiros e uma função que realiza uma operação matemática em um número.
//* A função "dobroLista" deve aplicar a função de operação matemática em cada
//* elemento da lista e retornar uma nova lista com os resultados.
  print('\nFUNÇÃO COM PARAMETRO FUNCTION');

  var novosNumeros = <int>[];
  for (var i = 0; i < 10; i++) {
    novosNumeros.add(random.nextInt(99));
  }

  List<int> dobroLista(
      List<int> numeros, OperacaoMatematica operacaoMatematica) {
    var novaLista = <int>[];
    for (var i = 0; i < numeros.length; i++) {
      novaLista.add(operacaoMatematica(numeros[i]));
    }
    return novaLista;
  }

  int operacao(int numero) {
    return numero * 4;
  }

  OperacaoMatematica operacaoDobro = operacao;

  print(dobroLista(novosNumeros, operacaoDobro));

//* Crie uma função que recebe uma lista de inteiros e uma função anônima que
//* verifica se um número é par. A função deve filtrar a lista para retornar
//* apenas os números pares e imprimir o resultado.

  print('\nVALORES PAR');
  List<int> verificaPar({required List<int> numeros}) {
    var listaPar = <int>[];

    for (int numero in numeros) {
      if (numero % 2 == 0) {
        listaPar.add(numero);
      }
    }
    return listaPar;
  }

  print(verificaPar(numeros: novosNumeros));
}

typedef OperacaoMatematica = int Function(int i);
