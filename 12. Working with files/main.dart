import 'dart:async'; // to allow asyncronous programming
import 'dart:io'; // for file reading/writing

void main(List<String> args) {
  // --- Reading a file ---
  // get the file we want to read
  File file = new File('./readme.txt');

  // Future = saying we're expecting a value from an asyncronous call
  // it will allow us to use .then()
  Future<String> futureContent = file.readAsString();
  // then(ifSuccess, ifError)
  futureContent.then((c) => print(c), onError: (err) => print(err));

  // You can also do it in one line
  new File('./readme.txt').readAsString().then((c) => print(c));

  // you of course don't have to use ASYNC to read from a file
  // without async
  try {
    List<String> lines = file.readAsLinesSync();
    lines.forEach((l) => print(l));
  } on FileSystemException catch (err) {
    print("Could not read file");
    print(err);
  }

  readFile("readme.txt");

  // --- Writing to a file ---
  File writeFile = new File("writeto.txt");
  writeFile.writeAsString("This has\nbeen written").then(
      (value) => print("Success!"),
      onError: (err) => print("Could not write to file"));
}

void readFile(String filename) async {
  // you can use async/await if you have an async function
  var x = await new File('./$filename').readAsString();
  print(x);
}
