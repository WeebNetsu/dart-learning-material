void main(List<String> args) {
  // for loop
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  var arr = [1, 4, 7];
  // for in loop
  for (var num in arr) {
    print(num);
  }

  // forEach (mapping)
  arr.forEach((num) {
    print(num);
  });

  // for each one liner
  arr.forEach((num) => print(num));

  var num = 5;

  // while loop
  while (num > 0) {
    print(num);
    num--;
  }

  // do while loop
  do {
    print(num);
    num++;
  } while (num < 5);

  while (true) {
    num--;
    // this if statement does not need {} since it only
    // does one thing
    // break will break out of the loop
    if (num <= 1) break;
    // continue will skip  loop itteration
    if (num % 2 == 0) continue;

    print(num);
  }
}
