void main(List<String> args) {
  // strings can be defined with " or '
  String a = "Hello World";
  String b = 'I am cool';
  String c = '''I am cool
  mulit
line
    String
''';
  String d = """
another
multi line
string
""";

  print(a + b); // concatonate a string
  // a formatted string
  print("$a... $b. $c$d");
  // you can use ${} to do expressions
  print("${a + '!'} and ${10 + 5}");

  // get first index in string (starts at 0)
  print(a[0]);
  // get string length
  print(a.length);
  print(a.toLowerCase()); // convert whole string to lowercase
  print(a.toUpperCase()); // convert to uppercase
  print(a.indexOf('l')); // find the index of the first 'l' in the string
  print(a.contains('or')); // true - a contains 'or'

  // escape characters
  print("Hello\nWorld\tthese\vare\$ escape \"characters\'\\text");

  // raw strings ignore escape characters
  print(r"This\nis a \t raw $string");

  // type casting, int to string
  String e = 10.toString();
  double f = 99.334234;
  String g = f.toString();

  // will concatonate, not add
  print(e + g);
  // will only convert up until 2 decimal places
  print(f.toStringAsFixed(2));
}
