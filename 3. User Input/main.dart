// import the input, output library
import 'dart:io';

void main(List<String> args) {
  // will not add a new line to the end of the output
  stdout.write("Enter your name: ");

  // get user input
  String? name = stdin.readLineSync();

  // we can use $ to escape a variable
  print("Your name is $name");

  // getting input from the executable
  // note: unlike in other languages, the file name is not included in
  // the args
  print(args);
  print(args[0]);
}
