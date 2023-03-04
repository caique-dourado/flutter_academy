// ? O INTERABLE NÃO É UMA LISTA, PARA USAR OS METODOS DA LISTA, CONVERTA O INTERABLE
// ? USANDO O METODO toList()
void main() {
  var numeros = List.generate(10, (index) => index);
  print('EXIBINDO TODA A LISTA:');

  print(numeros);

  //! BUSCAR UM ELEMENTO -> elementAt(value);
  print('BUSCANDO UM UNICO ELEMENTO:');
  print(numeros.elementAt(3));

//! FILTRO -> where((element) => false);
  print('FILTRANDO SEM O VALOR 5:');
  /* var n = numeros.where((element) => element != 5);
  print(n);*/
  //? SUBSTITUI POR ISSO
  numeros.where((element) => element != 5).forEach((element) => print(element));

//! FIlTRO A PARTIR DE UM VALOR -> skipeWhile((element) => false);
  print('FILTRO A PARTIR DO VALOR 5: ');
  numeros.skipWhile((value) => value != 5).forEach((element) => print(element));
  //CONVERTENDO EM UMA LISTA
  final numerosList = numeros.skipWhile((value) => value != 5).toList();
  print(numerosList);

//!USANDO O METODO MAP
  print('SAUDACAO USANDO MAP: ');
  var nomes = ['CAIQUE', 'JOSE', 'LUIS', 'MARCOS'];

  var saudacao = nomes.map((e) {
    return 'Olá Sr. ' + e;
  }).toList();
  print(saudacao);
}
