main() {
  //! parse(value) converte apenas numeros no formato string, em caso de alfanumericos
  //! será retornado um FormatException
  var numero = '123e';
  var numeroConvert = int.parse(numero);
  print(numeroConvert);

  //! tryParse(value) converte um valor em numero caso ele seja apenas um numero
  //! em formato de uma string. Caso na string seja alfanumerica, o return é null
  var alfanumerico = '323a';
  var alfaNumericoConvert = int.tryParse(alfanumerico);
  print(alfaNumericoConvert);
}
