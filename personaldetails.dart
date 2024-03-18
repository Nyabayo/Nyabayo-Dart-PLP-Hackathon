import 'dart:io';

void main() {
  String? name;
  String? age;
  String? school;
  String? hobby;

  do {
    print('Input Your Name:');
    name = stdin.readLineSync();
  } while (!_isValidName(name));

  print('Input Your Age:');
  age = stdin.readLineSync();

  print('Input Your School:');
  school = stdin.readLineSync();

  print('Input Your Hobby:');
  hobby = stdin.readLineSync();

  displayInformation(name, age, school, hobby);
}

bool _isValidName(String? name) {
  if (name == null || name.isEmpty || !name.contains(RegExp(r'^[a-zA-Z ]+$'))) {
    print('Kindly Input a correct name using string format, avoid numbers.');
    return false;
  }

  return true;
}

void displayInformation(
    String? name, String? age, String? school, String? hobby) {
  print(
      'I go by the name of $name, I am $age years of age, I go to $school, and I enjoy doing $hobby.');
}
