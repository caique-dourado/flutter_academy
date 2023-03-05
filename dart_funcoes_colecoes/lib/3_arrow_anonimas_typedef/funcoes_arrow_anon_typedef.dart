void main() {
  //? FUNCOES SÃO INVOCADAS USANDO O '()' APOS SEU NOME
//!FUNCOES ANONIMAS - NÃO POSSUEM NOMES
  () {
    print('OLA MUNDO!');
  }();

  print(somaNumeros2(4, 8));

  //funcaoParametroFuncao((nome) => nome);
  //USANDO UMA LOGICA

  funcaoParametroFuncao((nome) {
    if (nome.isEmpty) {
      print('Nome estar vazio');
    }
  });
}

//! FUNCOES ARROW - SÃO FUNCOES QUE NÃO POSSUEM UM CORPO DE CODIGO
//ISSO:
int somaNumeros(int n1, int n2) {
  return n1 + n2;
}

//VIRA ISSO:
int somaNumeros2(int n1, int n2) => n1 + n2;

//! TYPEDEF - SAO APELIDOS PARA FUNCOES. MUITO USADO NA DEFINICAO DE PARAMETROS DE FUNCOES
//! QUE POSSUEM A SUA ASSINATURA COMPLEXA

void funcaoParametroFuncao(Function(String nome) funcaoQueRecebeNome) {
  var nomeCompleto = 'CAIQUE DOURADO';
  print(nomeCompleto);
}
