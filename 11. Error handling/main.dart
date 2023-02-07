bool greaterThan(val) {
  return val > 0;
}

void main(List<String> args) {
  // error handling like this will keep our program from crashing
  // since we can handle what would happen in the scenario of an error
  try {
    // will cause error because true > 0 not allowed
    var val = greaterThan(true);

    print(val);
  } catch (e) {
    print("ERROR DOING MATH!");
    print(e);
  } finally {
    print("This will run, if there was an error or not");
  }

  try {
    // will cause error because true > 0 not allowed
    var val = greaterThan(true);

    print(val);
  } on NoSuchMethodError catch (e) {
    // catch specific error
    print("There is NO such method for the type entered!!");
  } catch (e) {
    // will catch all other errors
    print(e);
  } finally {
    print("Will still run, error or not!");
  }
}
