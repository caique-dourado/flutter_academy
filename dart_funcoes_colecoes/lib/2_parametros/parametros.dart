void main() {
//PARAMETROS OBRIGATORIOS -> DEVE-SE PASSAR OS PARAMENTROS
  print('PARAMETROS OBRIGATORIOS: ${somaParametrosObg(10, 90)}');
//PARAMETROS NULL/NON-NULL -> OS PARAMETROS PODEM ACEITAR NULL E PODE SER PROMOVIDOS A NON-NULL
  print('PARAMETROS ACEITA NULL: ${somaParametrosAceitaNull(null, 50)}');

//PARAMETROS NOMEADOS REQUERIDOS -> SÃO NOMEADOS E REQUEREM A PASSAGEM DE PARAMENTOS
  print(
      'PARAMETROS OBRIGATORIOS NOMEADOS: ${somaParametrosNomeadosObg(numero1: 300, numero2: 250)}');

//PARAMETROS NOMEADOS QUE ACEITAM NULL -> SÃO NOMEADOS E AINDA ACEITAM NULL
  print(
      'PARAMETROS NOMEADOS QUE ACEITAM: ${somaParametrosNomeadosAceitaNull(numero1: null, numero2: 1256)}');

//PARAMETROS OPCIONAIS - PODEM OU NÃO SEREM PASSADOS
  print('PARAMETROS OPCIONAIS: ${somaParametrosOpcionais(1)}');

//PARAMETROS COM VALOR DEFAULT -> SÓ FUNCIONAM EM PARAMETROS NOMEADOS
  print(
      'PARAMETROS COM VALOR DEFAULT: ${somaParametrosDefault(numero2: 5235)}');
}

int somaParametrosObg(int numero1, int numero2) {
  return numero1 + numero2;
}

int somaParametrosAceitaNull(int? numero1, int? numero2) {
  //PARAMETROS QUE ACEITAM NULL DEVEM SER FEITO A CHECAGEM
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  } else if (numero1 != null) {
    return numero1;
  } else if (numero2 != null) {
    return numero2;
  }
  return 0;
}

int somaParametrosNomeadosObg({required int numero1, required int numero2}) {
  return numero1 + numero2;
}

int somaParametrosNomeadosAceitaNull({int? numero1, int? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  } else if (numero1 != null) {
    return numero1;
  } else if (numero2 != null) {
    return numero2;
  }
  return 0;
}

int somaParametrosOpcionais([int? numero1, int? numero2]) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  } else if (numero1 != null) {
    return numero1;
  } else if (numero2 != null) {
    return numero2;
  }
  return 0;
}

int somaParametrosDefault({int numero1 = 0, int numero2 = 0}) {
  return numero1 + numero2;
}
