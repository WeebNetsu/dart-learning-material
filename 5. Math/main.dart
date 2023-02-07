// import the math library for more math functions
import 'dart:math';

void main(List<String> args) {
  // type casting from string to int and double
  int a = int.parse("10");

  String b = "9.83";
  double c = double.parse(b);

  print(a + c);
  print(a - c);
  print(a * c);
  print(a / c);
  print(10 % 4);
  print(10 + 5 * 2); // * takes order of opperation BODMAS
  print((10 + 5) * 2); // 10 + 5 will be calculated first

  a += 10; // same as a = a + 10
  a *= 5;
  // etc.

  // add / subtract one from value
  a++;
  print(a);
  a--;
  print(a);

  // all below requires the dart math library
  // get larger of 2 values
  print(max(10, 5));
  // get smaller of 2 values
  print(min(10, 5));
  // get square root
  print(sqrt(25));
}
