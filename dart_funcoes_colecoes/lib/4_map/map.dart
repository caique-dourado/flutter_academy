import 'dart:math';

void main() {
  var people = <String, int>{};
  List<String> names = [
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Eva",
    "Frank",
    "Grace",
    "Henry",
    "Isabella",
    "Jack",
    "Kate",
    "Liam",
    "Mia",
    "Nathan",
    "Olivia",
    "Peter",
    "Quinn",
    "Ryan",
    "Samantha",
    "Thomas",
    "Uma",
    "Violet",
    "William",
    "Xander",
    "Yara",
    "Zoe"
  ];
//CRIANDO UM MAP USANDO LAÇO E PASSANDO AS IDADES AUTOMATICAS
  /* Random random = Random();

  for (var i = 0; i < names.length; i++) {
    people[names[i]] = random.nextInt(65) + 15;
  } */

  var newPeople = {
    'Alice': 66,
    'Bob': 58,
    'Charlie': 59,
    'David': 37,
    'Eva': 27,
    'Frank': 47,
    'Grace': 28,
    'Henry': 77,
    'Isabella': 70,
    'Jack': 70,
    'Kate': 74,
    'Liam': 74,
    'Mia': 63,
    'Nathan': 23,
    'Olivia': 21,
    'Peter': 45,
    'Quinn': 49,
    'Ryan': 72,
    'Samantha': 51,
    'Thomas': 76,
    'Uma': 40,
    'Violet': 36,
    'William': 74,
    'Xander': 67,
    'Yara': 33,
    'Zoe': 52,
  };
// .length - Retorna o tamanho do Map()
  print('Tamanho de newPeople: ${newPeople.length}\n');
// .isEmpty/.isNotEmpty - Retorna um bool para caso o Map() seja ou não vazio
  if (newPeople.isEmpty) {
    print('newPeople estar vazio');
  } else {
    print(newPeople);
  }

// .key/.values - Retorna somente as chaves (key) ou os valores(values) do Map()
  print('Key');
  print(newPeople.keys.toList());
  print('Values');
  print(newPeople.values.toList());

// .containsKey()/.containsValue() - Retorna um bool para a existencia de uma chave/valor
  print(newPeople.containsKey('Thomas')); //true
  print(newPeople.containsKey(80)); //false
}
