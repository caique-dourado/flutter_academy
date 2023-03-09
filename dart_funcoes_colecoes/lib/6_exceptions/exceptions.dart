void main() {
//! SÃO USADAS PARA SINALIZAR QUE OCORREU UM ERRO EM TEMPO DE EXECUÇÃO
//! USA-SE O BLOCO "try-catch" PARA TRATAR EXCEÇÕES
  print('\nBLOCO CATCH{}');
  try {
    int result = (5 / 0) as int;
    print(result);
  } catch (e) {
    print('Ocorreu um erro: $e');
  }

// on - USA-SE PARA CAPTURAR EXCEÇÕES ESPECIFICAS
  print('\nON{}');
  try {
    int result = int.parse('ABC');
    print('O resultado da conversão foi: $result');
  } on FormatException catch (e) {
    print('Erro de conversão: $e');
  }

// finally - É UM BLOCO QUE É EXCECUTADO INDEPENDENTE SE A EXCEÇÃO OCORREU OU NÃO

  print('\nBLOCO FINALLY{}');
  try {
    int result = 5 ~/ 0;
    print('Resuldado da divisão: $result');
  } catch (e) {
    print('Ocorreu um erro: $e');
  } finally {
    print('O programa foi executado');
  }
// REMOVENDO O CATCH E USANDO APENAS O FORMATEXCEPTION
  print('\nBLOCO SEM O CATCH');
  try {
    int result = (5 / 0) as int;
    print('Resultado da divisão: $result');
  } on TypeError {
    print('Erro ao dividir');
  }
}
