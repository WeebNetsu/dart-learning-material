// basic object
class Pet {
  // object properties
  String? name;
  int? age;
}

class Car {
  int wheels = 4;
  // we use late, since we'll declare it later
  // but it may not be null
  late String color;

  // this is a constructor
  // will run when the object is created
  Car(String color, [int? wheels]) {
    // this -> refers to the object, like in all languages
    this.color = color;

    if (wheels != null) {
      this.wheels = wheels;
    }
  }

  // getters
  int getWheels() {
    return this.wheels;
  }

  // setters
  void setWheels(int wheels) {
    this.wheels = wheels;
  }

  // normal functions
  void honk() {
    print("BEEP! BEEP!");
  }
}

class Truck extends Car {
  int wheels = 8; // new wheels value

  // super will give default values to all parent class values in constructor
  Truck([String? color]) : super('Red') {
    if (color != null) {
      this.color = color;
    }
  }

  // a new function that does not exist in Car
  double carryCapacity(double length) {
    return length * 2.13;
  }
}

void main(List<String> args) {
  var pet = Pet();
  pet.name = "Jackie";
  pet.age = 9;
  // will print an instance of
  print(pet);
  // will print the name of the pet
  print(pet.name);

  var buggie = Car("Yellow");
  print(buggie.color);
  // we can use a getter to get the wheels
  print(buggie.getWheels());
  // we can use a setter to set them too
  buggie.setWheels(3);
  print(buggie.getWheels());

  // use a normal function
  buggie.honk();

  var monster = Truck();
  // gets default color provided by super()
  print(monster.color);

  var monster2 = Truck("Blue");
  // gets given color
  print(monster2.color);
}
