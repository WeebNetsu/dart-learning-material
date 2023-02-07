main() {
  /* 
    You of course have all the regular operators:
    == != > < >= <= || &&
  */

  if (true) {
    // will execute code
  }

  var age = 19;
  var birthday = true;
  var name = "Mike";

  if (age >= 18) {
    print("You may enter");

    if (birthday && name == "Mike") {
      print("All drinks are on us!");
    }

    if (age > 50 || age < 25) {
      print("You should watch how much you drink");
    }
  } else if (age < 13) {
    print("The party is down the street");
  } else {
    print("You may not enter!!!");
  }

  // you can also easily check types in Dart
  if (age is int) {
    print("age is an integer");
  }

  // single line if statement - Terniary Operator
  double money = age > 20 ? 99.99 : 10;
  print(money);

  int? x;
  // return x if x is NOT null, otherwise return money (same as in js)
  print(x ?? money);

  var example;
  // this is more important for a later course, but the idea is the same
  // as in js, if example is not null, access the value name (usually this
  // would be some sort of object)
  var val = example?.name;

  var numDrinks = 3;

  // switch statement
  switch (numDrinks) {
    case 0:
      print("Why are you here?");
      break;

    case 1:
      {
        // you can also put it in brackets
        print('You are still good for another drink!');
      }
      break;

    case 2:
      print("You are getting drunk");
      break;

    default:
      print("You are drunk, go home");
  }
}
