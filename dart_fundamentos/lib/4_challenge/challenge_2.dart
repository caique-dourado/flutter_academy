import 'dart:math';

void main() {
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

  List<String> cities = [
    "New York",
    "Los Angeles",
    "Chicago",
    "Houston",
    "Philadelphia",
    "Phoenix",
    "San Antonio",
    "San Diego",
    "Dallas",
    "San Jose",
    "Austin",
    "Jacksonville",
    "Fort Worth",
    "Columbus",
    "San Francisco",
    "Charlotte",
    "Indianapolis",
    "Seattle",
    "Denver",
    "Washington DC"
  ];

  Random random = Random();
  List<String> modelPeople = [];
  for (int i = 0; i < names.length; i++) {
    String name = names[i];
    int age = random.nextInt(50) + 18;
    String city = cities[random.nextInt(cities.length)];
    String person = '$name|$age|$city';
    modelPeople.add(person);
  }
  var peopleList = <String>[];
  for (var person in modelPeople) {
    final splitPerson = person.split('|');
    peopleList.add('$splitPerson');
  }

  print('FINAL PEOPLE');
  peopleList.forEach((element) => print(element));
  print('\n==========================');
  print('FILTER - SAN FRANCISCO\n');

  var peopleSanFrancisco = <String>[];
  peopleList.retainWhere((element) {
    if (element.contains('Francisco')) {
      peopleSanFrancisco.add(element);
      return false; //o iterable só é exibido caso retorne false
    } else {
      return true; //ao retorna true, todos os elementos que não satisfazem a condição são deletados
    }
  });

  peopleSanFrancisco.forEach((element) => print(element));
}
