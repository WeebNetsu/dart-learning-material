void main() {
  /* 
    Available Basic Data Types
    null
    Strings
    int
    double
    bool
    dynamic (any)
  */

  // basic variable, string can be in double or single quotes
  var name = "Netsu";

  // specifying the type is optional, but can be done
  // by replacing var with the type
  String surname = 'McVan';

  // can concatonate with +
  print(name + ' ' + surname);

  // the ? allows for optional values, so x may be a null value
  String? x;
  print(x);

  // the ??= will assign a value, only if the value in x is null
  x ??= "lol";
  print(x);

  // will also default to null, however, it has to be given a value
  // before it can be used, but it will be null until then
  int p;
  // below will error, since p is non-nullable and is null
  // print(p);
  p = 10;
  print(p);

  int age = 10;
  double money = 50.99;
  bool hasMoney = true;

  // you can do a format string with $, then you don't have to use +
  print("This $age year old person has \$$money");

  // dynamic variables can be any data type and can change later
  dynamic anything = 10;
  print(anything);
  anything = "I am cool";
  print(anything);

  const MY_CONSTANT = "can't be changed";
  // below will throw error, since you can't change a constant
  // MY_CONSTANT = 10;
  print(MY_CONSTANT);
}
