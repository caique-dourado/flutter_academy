import 'dart:math';

void main() {
//* Crie uma função que receba uma lista de inteiros como parâmetro e retorne o maior valor da lista.
  print('MAIOR VALOR DA LISTA: ');
  Random random = Random();
  var numeros = <int>[];
  for (int i = 0; i < 20; i++) {
    numeros.add(random.nextInt(90));
  }

  void maioNumero(List<int> numeros) {
    numeros.sort();
    print(numeros.last);
  }

  maioNumero(numeros);

//* Crie uma função que receba uma lista de strings como parâmetro e retorne uma novalista contendo apenas as strings que contêm mais de 5 caracteres.

  var nomes = <String>[
    'Lucian',
    'Zoe',
    'Freddy',
    'Merlyn',
    'Antony',
    'Jhon',
    'Jason',
  ];

  List<String> retornaNomes(List<String> nomes) {
    var novaLista = <String>[];
    for (var nome in nomes) {
      if (nome.length > 5) {
        novaLista.add(nome);
      }
    }
    return novaLista;
  }

  print('\nNOMES COM MAIS DE 5 CARACTERES: ');
  print(retornaNomes(nomes));

//* Crie uma função que receba uma lista de números como parâmetro e retorne a soma dos números pares da lista.

  print('\nSOMA ELEMENTOS PARES: ');

  int somaPares(List<int> numeros) {
    int soma = 0;
    for (int numero in numeros) {
      if (numero % 2 == 0) {
        soma = soma + numero;
      }
    }
    return soma;
  }

  print(somaPares(numeros));

//* Crie uma função que receba uma lista de mapas, onde cada mapa representa uma pessoa com os campos "nome" e "idade", e retorne uma nova lista contendo apenas os nomes das pessoas com idade superior a 18 anos.
  print('\nDADOS PESSOAS: ');
  var listNomes = <String>[
    'Lucian',
    'Zoe',
    'Freddy',
    'Merlyn',
    'Antony',
    'Jhon',
    'Jason',
    'Bredd',
    'Emma',
    'July',
    'Rackel',
    'Bryan',
    'Cristian',
    'Olie',
    'Rock',
  ];
  List<Map<String, dynamic>> pessoas = [];
  for (var i = 0; i < listNomes.length; i++) {
    var idade = random.nextInt(50) + 5;
    pessoas.add({'nome': listNomes[i], 'idade': idade});
  }

  maiorIdade(List<Map<String, dynamic>> pessoas) {
    var novaLista = pessoas
        .where((pessoa) => pessoa['idade'] > 18)
        .map((value) => value['nome'])
        .toList();

    print(novaLista);
  }

  maiorIdade(pessoas);
//* Crie uma função que receba uma lista de inteiros e uma função como parâmetros, e retorne uma nova lista contendo os resultados da aplicação da função em cada elemento da lista.
  print('\nPRINT FUNCÃO COM typedef: ');
  List<int> fazOperacao(List<int> numeros, OpMatematica opMatm) {
    var novaLista = <int>[];
    for (int numero in numeros) {
      novaLista.add(opMatm(numero, numero * 2));
    }
    return novaLista;
  }

//A FUNCAO DEVE POSSUIR A MESMA ASSINATURA DO typedef
  int opDivisao(int a, int b) {
    return (a % 2) + b;
  }

  print(fazOperacao(
      numeros, opDivisao)); //NESSE CASO PASSA SÓ A FUNÇÃO SEM INVOCA-LA

//* Crie uma função que receba uma lista de números e uma função que realiza uma operação matemática como parâmetros, e retorne uma nova lista contendo os resultados da aplicação da operação matemática em cada elemento da lista.

  print('\nOPERAÇÃO VALORES AO QUADRADO typedef: ');
  List<int> quadrado(List<int> numeros, OpQuadrado opQuadrado) {
    var listaQuadrado = <int>[];

    for (int numero in numeros) {
      listaQuadrado.add(opQuadrado(numero));
    }
    return listaQuadrado;
  }

  int opQuadrado(int numero) {
    return numero * numero;
  }

  print(quadrado(numeros, opQuadrado));

//* Crie uma função que receba uma lista de strings e uma função que retorna um booleano como parâmetros, e retorne uma nova lista contendo apenas as strings que satisfazem a função booleana.
  List<String> retornaString(List<String> nomes, Boolean boolean) {
    var novaLista = <String>[];

    for (var nome in nomes) {
      if (boolean(nome)) {
        novaLista.add(nome);
      }
    }
    return novaLista;
  }

  bool boolean(String nome) {
    if (nome.length > 5) {
      return true;
    }
    return false;
  }

  print(retornaString(nomes, boolean));

//* Crie uma função que receba uma lista de números e retorne a mediana dos números (o valor que divide a lista em duas partes iguais).
  print('\nCALCULO MEDIANA: ');
  double mediana(List<int> numeros) {
    int indice1;
    int indice2;
    double valorMediano;
    if (numeros.length % 2 == 0) {
      indice1 = ((numeros.length) + 1) ~/ 2;
      indice2 = indice1 - 1;

      valorMediano = (numeros[indice1] + numeros[indice2]) / 2;
    } else {
      indice1 = ((numeros.length)) ~/ 2;
      valorMediano = numeros[indice1].toDouble();
    }

    return valorMediano;
  }

  print(mediana(numeros));

//* Crie uma função que receba uma lista de strings e retorne a string mais longa da lista.
  String stringLonga(List<String> nomes) {
    int tam = 0;
    String nomeEncontrado = '';
    for (var nome in nomes) {
      if (nome.length > tam) {
        tam = nome.length;
        nomeEncontrado = nome;
      }
    }
    return nomeEncontrado;
  }

  print(stringLonga(listNomes));

//* Crie uma função que receba uma lista de inteiros e retorne uma nova lista contendo apenas os valores únicos da lista (ou seja, sem duplicatas).
  print('\nREMOVENDO VALORES DUPLICADOS: ');
  var valoresDuplicados = [
    0,
    13,
    15,
    99,
    87,
    18,
    120,
    99,
    0,
    55,
    47,
    89,
    36,
    15,
    136,
    87,
    120,
    13,
    99
  ];

  removeDuplicados(List<int> valoresDuplicados) {
    List<int> novaLista;
    novaLista = valoresDuplicados.toSet().toList();

    return novaLista;
  }

  print(removeDuplicados(valoresDuplicados));
}

typedef OpMatematica = int Function(int a, int b);
typedef OpQuadrado = int Function(int a);
typedef Boolean = bool Function(String nome);
