import 'dart:io';

void main() {
  print('Input first number:');
  String? input1 = stdin.readLineSync();
  double? num1 = double.tryParse(input1 ?? '');
  if (num1 == null) {
    print('Kindly enter a valid num.');
    return;
  }

  print('Input second number:');
  String? input2 = stdin.readLineSync();
  double? num2 = double.tryParse(input2 ?? '');
  if (num2 == null) {
    print('Kindly a valid num.');
    return;
  }

  double product = multiplyTwo(num1, num2);
  double? quotient = divideTwo(num1, num2);

  print('Multplication of $num1 and $num2 is $product.');
  if (quotient != null) {
    print('Division of $num1 and $num2 is $quotient.');
  } else {
    print('Dividing by 0 is not possible.');
  }
}

double multiplyTwo(double num1, double num2) {
  return num1 * num2;
}

double? divideTwo(double num1, double num2) {
  if (num2 == 0) {
    return null;
  }
  return num1 / num2;
}
