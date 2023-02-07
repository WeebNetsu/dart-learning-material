void main(List<String> args) {
  // List = Array = Table
  // lists allow you to store multiple values in one variable
  List<String> friends = ["Tim", "Jack", "Mike"];

  print(friends);
  // get item at index
  print(friends[0]);
  // get index of item in list (-1 if not found)
  print(friends.indexOf("Mike"));
  // get list length
  print(friends.length);
  // if Luke is in list
  print(friends.contains("Luke"));

  // replace index in list
  friends[1] = "Jackie";
  print(friends);

  // add item to list
  friends.add("Caleb");
  print(friends);

  // remove item from list
  friends.remove("Mike");
  print(friends);

  // remove with index instead
  friends.removeAt(0);
  print(friends);

  // you can create a list of any data type
  List<int> nums = [1, 7, 99];

  // MAPS
  var friendAges = {"mike": 19, "sara": 29, "jake": 20};

  print(friendAges);
  // get a value
  print(friendAges["mike"]);
  // set a value
  friendAges["mike"] = 20;
  print(friendAges["mike"]);
}
