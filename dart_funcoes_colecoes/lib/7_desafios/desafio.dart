void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista

  final novaPessoas = <List<String>>[];

  void removeDuplicados({required List<String> listaPessoas}) {
    for (var pessoa in listaPessoas) {
      var p = pessoa.split('|');
      novaPessoas.add(p);
    }

    for (var i = 0; i < novaPessoas.length - 1; i++) {
      for (var j = i + 1; j < novaPessoas.length; j++) {
        if (novaPessoas[i][0] == novaPessoas[j][0]) {
          novaPessoas.remove(novaPessoas[i]);
        }
      }
    }
  }

  removeDuplicados(listaPessoas: pessoas);

  for (var pessoa in novaPessoas) {
    print(pessoa);
  }

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas

  void apresentaSexo({required List<List<String>> listaPessoas}) {
    int sexoM = 0;
    int sexoF = 0;
    var listaM = <String>[];
    var listaF = <String>[];
    for (var i = 0; i < listaPessoas.length; i++) {
      if (novaPessoas[i][2] == "Masculino") {
        listaM.add(novaPessoas[i][0]);
        sexoM++;
      } else {
        listaF.add(novaPessoas[i][0]);
        sexoF++;
      }
    }

    print('\nQUANTIDADE MASCULINA: $sexoM');
    for (var pessoa in listaM) {
      print(pessoa);
    }
    print('\nQUANTIDADE FEMININA: $sexoF');
    for (var pessoa in listaF) {
      print(pessoa);
    }
  }

  apresentaSexo(listaPessoas: novaPessoas);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  void maiorIdade({required List<List<String>> listaPessoas}) {
    for (var i = 0; i < listaPessoas.length; i++) {
      var idade = int.parse(listaPessoas[i][1]);

      if (idade <= 18) {
        listaPessoas.remove(listaPessoas[i]);
      }
    }
  }

  print('\nPESSOAS MAIOR 18 ANOS:');
  maiorIdade(listaPessoas: novaPessoas);
  for (var pessoa in novaPessoas) {
    print(pessoa[0]);
  }

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  void maisVelha({required List<List<String>> listaPessoas}) {}

  print('\nPESSOA MAIS VELHA: ');
  maisVelha(listaPessoas: novaPessoas);
}
