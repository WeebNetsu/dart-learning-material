void main(List<String> args) {
  // function can be above main or below main function
  // to call a function is easy
  sayHello();
  sayHelloTo("Nick");
  sayHelloTo2("Nick");
  sayHelloTo3("Mike", 55);

  // you can store the return value
  var x = sum(10, 5);
  print(x);

  // since we allow dart to infer the type, it will make the
  // type 'dynamic', so anything goes
  print(add(1, 99));
  print(add("Hello", " World"));
  print(add(22.9, 9));

  if (res(10, null)) {
    print("Done");
  }

  if (res2(10)) {
    print("Donneer");
  }
}

// returnType functionName(){}
void sayHello() {
  print("Hello!");
}

// take in an argument
void sayHelloTo(name) {
  print("Hello $name!");
}

// specify a data type
void sayHelloTo2(String name) {
  print("Hello $name!");
}

// return type can also be automatically infered
sayHelloTo3(String name, int age) {
  print("Hello $name you are $age");
}

// return allows you to return a value
int sum(int num1, int num2) {
  return num1 + num2;
}

// here is a good example where the return type
// could be inferred
add(val1, val2) {
  return val1 + val2;
}

// have optional parameter
bool res(int val1, int? val2) {
  if (val2 != null) {
    print(val1);
    return true;
  }

  return false;
}

// truly optional parameter
bool res2(int val1, [int? val2]) {
  if (val2 != null) {
    print(val1);
    return true;
  }

  return false;
}
