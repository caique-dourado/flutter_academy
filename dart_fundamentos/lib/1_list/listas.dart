void main() {
  //! LISTA VAZIA (SEMPRE DEVE TIPAR)
  var listaVazia = <int>[];

  //! LISTA QUE PODE SER NULL, MAIS OS ELEMENTOS NÃO
  List<String>? listaNome;

  //! LISTA NÃO PODE SER NULL, MAIS OS ELEMENTOS SIM
  List<String?> listaNome2 = ['Caique', null, 'José'];

//! LISTA PODE SER NULL E OS ELEMENTOS TAMBÉM
  List<String?>? listaNome3;

  print(listaNome2);

  var listaNumeros = [1, 2, 3, 4, 5, 6];

  print(listaNumeros);

//! ADCIONANDO ELEMENTOS -> .add(value)
  listaNumeros.add(7);
  print(listaNumeros);

//! REMOVENDO UM ELEMENTO -> remove(index)
  listaNumeros.remove(7);
  print(listaNumeros);

  //! INSERINDO UM ELEMENTO EM UMA DADA POSIÇÃO -> insert(index, value)
  listaNumeros.insert(0, 0);
  print(listaNumeros);

//! INSERINDO UMA LISTA DENTRO DE OUTRA LISTA - > insertAll(index, interable)
  var listaNumeros2 = [7, 8, 9, 10, 11, 12];
  listaNumeros.insertAll(7, listaNumeros2);
  print(listaNumeros);

//! BUSCANDO ELEMENTOS -> first (PRIMEIRO), last(ULTIMO)
  print(listaNumeros.first);
  print(listaNumeros.last);

//! BUSCANDO ELEMENTOS COM firstWhere((element) => false))
  print(listaNumeros.firstWhere((element) => element == 6));

//! GERANDO UM ARRAY - > List.generate(length, (index) => null)
  var listaGerada = List.generate(20, (index) => '#${index + 1}');
  print(listaGerada);

//! GERANDO UM ARRAY COM VALORES REPETIDOS -> filled(length, fill)

  var listaGeradaRepetida = List.filled(4, 'CAIQUE DOURADO');
  print(listaGeradaRepetida);

//! CALCULOS COM LISTAS
//! REALIZANDO UMA SOMA ACUMULATIVA EM UMA LISTA .fold()

  var a2 = listaNumeros.fold<int>(
      0, (previousValue, element) => previousValue = previousValue + element);

  print(a2);

//! JUNTANDO DUAS LISTAS USANDO O OPERADOR SPREED (...)
  var listaA = ['A', 'B', 'C'];
  var listaB = ['#a', '#b', '#c'];
  var novaLista = [listaA, ...listaB];
  print(novaLista);

  //! CONDITIONAL IF()
  var promocaoAtiva = false;
  var produtos = ['Café', 'Banana', 'Refrigerante', if (promocaoAtiva) 'Arroz'];
  print(produtos);

//! CONDITIONAL FOR ()
  var alfabeto = [for (var i in listaNumeros) '#$i'];

  print(alfabeto);
}
