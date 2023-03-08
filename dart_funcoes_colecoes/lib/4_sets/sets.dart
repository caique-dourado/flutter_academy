void main() {
  //! Sets não permitem elementos duplicados
  var setNumber = <int>{1, 4, 8, 16, 22, 64, 36};

  print(setNumber);

  // .add() - Adiciona um valor no Set caso não exista no conjunto
  print('Adcionando um valor');
  setNumber.add(56);
  print(setNumber);

  // lookup() - Verifica se o elemento passado existe dentro do conjunto Set()
  // se sim, retorna o elemento, caso contrario retorna null
  print('Verificando com o lookup');
  print(setNumber.lookup(0));
}
