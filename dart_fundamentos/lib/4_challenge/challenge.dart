void main() {
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];
//! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP
  print(' 1 - Apresente os pacientes com mais de 20 anos e print o nome deles');
  for (var paciente in pacientes) {
    final splitPaciente = paciente.split('|');
    final idadeConvert = int.tryParse(splitPaciente[1]) ?? 0;
    if (idadeConvert > 20) {
      print(splitPaciente[0]);
    }
  }

  print(
      '\n2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)');

  int dev = 0;
  int estudante = 0;
  int dentista = 0;
  int jornalista = 0;
  for (var paciente in pacientes) {
    final splitPaciente = paciente.split('|');
    switch (splitPaciente[2].toLowerCase()) {
      case 'desenvolvedor':
        dev++;
        break;
      case 'estudante':
        estudante++;
        break;
      case 'dentista':
        dentista++;
        break;
      case 'jornalista':
        jornalista++;
        break;
    }
  }
  print(
      '\nQNT DEV: $dev\nQNT ESTUDANTE: $estudante\nQNT DENTISTA: $dentista\nQNT JORNALISTA: $jornalista');

  print('\n3 - Apresente a quantidade de pacientes que moram em SP');
  int sp = 0;
  int mg = 0;
  for (var paciente in pacientes) {
    final splitPaciente = paciente.split('|');
    switch (splitPaciente[3].toLowerCase()) {
      case 'sp':
        sp++;
        break;
      case 'mg':
        mg++;
        break;
    }
  }

  print('PACIENTE RESIDENTES DE ACORDO COM O ESTADO:\nSP: $sp\nMG: $mg');
}
