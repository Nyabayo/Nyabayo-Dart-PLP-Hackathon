import 'dart:io';

void main() {
  print('Input Student\'s marks:');
  String? input = stdin.readLineSync();
  double? marks = double.tryParse(input ?? '');
  if (marks == null) {
    print('Input valid marks.');
    return;
  }

  String grade = determineGrade(marks);
  print('Student\'s grade: $grade');
}

String determineGrade(double marks) {
  if (marks > 85) {
    return "Excellent";
  } else if (marks >= 75 && marks <= 85) {
    return "Very Good";
  } else if (marks >= 65 && marks < 75) {
    return "Good";
  } else {
    return "Average";
  }
}
