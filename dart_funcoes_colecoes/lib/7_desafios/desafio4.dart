void main() {
//* 1. Crie uma função que receba uma lista de mapas, onde cada mapa representa um produto com os campos "nome", "preço" e "quantidade", e retorne o preço total de todos os produtos.
  print('CALCULA PREÇO: ');
  List<Map<String, String>> produtos = [
    {'nome': 'Camisa Pollo', 'preco': '249.90', 'quantidade': '16'},
    {'nome': 'Bermuda Jeans', 'preco': '149.90', 'quantidade': '10'},
    {'nome': 'Short Mauricinho', 'preco': '89.90', 'quantidade': '12'},
    {'nome': 'Camisa Regata', 'preco': '69.90', 'quantidade': '15'},
    {'nome': 'Tenis', 'preco': '199.90', 'quantidade': '10'},
    {'nome': 'Camisa casual', 'preco': '79.90', 'quantidade': '22'},
  ];

  calculaPreco(List<Map<String, String>> produtos) {
    var novaLista = <String?>[];
    double? preco;
    for (var produto in produtos) {
      if (produto['nome'] != null) {
        preco = double.parse(produto['preco'] ?? '0.0') *
            double.parse(produto['quantidade'] ?? '0.0');
        novaLista.add(produto['nome']);
        novaLista.add(preco.toStringAsFixed(1));
      }
    }
    return novaLista;
  }

  print(calculaPreco(produtos));

//* 2. Crie uma função que receba uma lista de inteiros e retorne uma nova lista contendo apenas os valores que aparecem mais de uma vez na lista original.
  print('\nLISTA DE NUMEROS DUPLICADOS');
  List<int> numeros = [
    1,
    3,
    5,
    3,
    7,
    1,
    9,
    5,
    11,
    11,
    2,
    7,
    9,
    13,
    17,
    2,
    19,
    17,
    23,
    23
  ];

  valoresDuplicados(List<int> numeros) {
    var novaLista = <int>[];

    for (var i = 0; i < numeros.length - 1; i++) {
      for (var j = i + 1; j < numeros.length; j++) {
        if (numeros[i] == numeros[j]) {
          novaLista.add(numeros[i]);
        }
      }
    }
    return novaLista;
  }

  valoresDuplicados(numeros).forEach((element) => print(element));

//* 3. Crie uma função que receba uma lista de números e uma função que recebe dois números como parâmetros e retorna um número, e retorne a aplicação da função em todos os pares de elementos consecutivos da lista original.
  print('\nNUMEROS DOUBLE PAR: ');
  List<double> numerosDouble = [
    80.00,
    33.4,
    76.00,
    100.00,
    264.1,
    38.4,
    65.2,
    17,
    44.1,
    320
  ];

  calculaNumeros(List<double> numerosDouble, FuncaoMtm funcaoMtm) {
    var novaLista = <double>[];
    for (int i = 0; i < numerosDouble.length; i++) {
      if (numerosDouble[i] % 2 == 0) {
        novaLista.add(funcaoMtm(numerosDouble[i]));
      }
    }

    return novaLista;
  }

  double fazOperacao(double a) {
    return a * a + a;
  }

  calculaNumeros(numerosDouble, fazOperacao)
      .forEach((element) => print(element));

//* 4. Crie uma função que receba uma lista de strings e retorne um mapa contendo a contagem de ocorrências de cada string na lista.
  print('\nQUANTIDADE DE VEZES QUE O NOME REPETIU: ');
  List<String> nomes = [
    'Hilary',
    'Stephany',
    'Madelyn',
    'Ashley',
    'Emma',
    'Scarlett',
    'Madelyn',
    'Stephany',
    'Emma',
    'Abigail',
    'Scarlett',
    'Mila',
    'Madelyn',
    'Scarlett',
    'Abigail',
    'Stephany',
    'Hilary',
    'Emma',
    'Abigail',
  ];
  Map<String, int> contaNomes(List<String> nomes) {
    Map<String, int> mapNomes = {};
    nomes.sort();
    for (var i = 0; i < nomes.length - 1; i++) {
      var cont = 1;
      for (var j = i + 1; j < nomes.length; j++) {
        if (nomes[i] == nomes[j]) {
          cont++;
        }
      }
      mapNomes.putIfAbsent(nomes[i], () => cont);
    }
    return mapNomes;
  }

  print(contaNomes(nomes));

//* 5. Crie uma função que receba uma lista de mapas, onde cada mapa representa um produto com os campos "nome", "preço" e "quantidade", e retorne o produto mais caro da lista.
  print('\nPRODUTO COM MAIOR PREÇO: ');
  String maiorPreco(List<Map<String, String>> produtos) {
    var produtoEncontrado = '';
    var preco = 0.0;
    for (var produto in produtos) {
      if (produto['nome'] != null) {
        var doublePreco = double.parse(produto['preco'] ?? '0.0');
        if (doublePreco > preco) {
          produtoEncontrado = produto['nome'] ?? '';
          preco = doublePreco;
        }
      }
    }
    return "Produto: $produtoEncontrado, Preco: $preco";
  }

  print(maiorPreco(produtos));

//* 6. Crie uma função que receba uma lista de inteiros e retorne a soma dos dígitos de todos os números da lista.
  int somaDigitos(List<int> numeros) {
    var soma = 0;
    for (var numero in numeros) {
      soma = soma + numero.toString().length.toInt();
    }
    return soma;
  }

  print(somaDigitos(numeros));
//* 7. Crie uma função que receba uma lista de números e retorne uma nova lista contendo as diferenças entre cada par de elementos consecutivos da lista original.

  List<int> numeros2 = [
    80,
    33,
    7,
    100,
    264,
    135,
    95,
    90,
    32,
    15,
  ];
  diferenca(List<int> numeros) {
    var novaLista = [];

    for (int i = 0; i < numeros.length - 1; i++) {
      int diff = (numeros[i + 1] - numeros[i]);
      novaLista.add(diff);
    }
    return novaLista;
  }

  print(diferenca(numeros2));
//* 8. Crie uma função que receba uma lista de strings e retorne uma nova lista contendo as strings em ordem alfabética, ignorando as letras maiúsculas e minúsculas.
  organizaNomes(List<String> nomes) {
    var novaLista = nomes.toSet().toList();
    novaLista.sort();
    return novaLista;
  }

  print(organizaNomes(nomes));
//* 9. Crie uma função que receba uma lista de inteiros e retorne a soma dos fatores primos de todos os números da lista.

//* 10. Crie uma função que receba uma lista de mapas, onde cada mapa representa uma pessoa com os campos "nome", "idade" e "altura", e retorne a média de idade das pessoas com altura superior a 1,80 metros.
}

typedef FuncaoMtm = double Function(double a);
