void main() {
  var nome = 'CAIQUE DOURADO';
  //! CONVERTENDO EM MINUSCULO
  print(nome.toLowerCase());

  //! OBTENDO O PRIMEIRO NOME USANDO
  print(nome.substring(0, 7));

  //! TRANSFORMANDO EM UMA LISTA
  print(nome.split(' '));

  //! OBTENDO O SOBRENOME A PARTIR DE UMA LISTA

  var listaNomes = ['JOAO BARTOLOMEU', "JOSE LYNON", "PIERY ONES"];

  var listaSobrenomes = listaNomes.map((e) {
    return e.split(" ").toList().last;
  });

  print(listaSobrenomes.toList());
}
