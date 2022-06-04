class User {
  String? name;
  int? id;
}

void main(List<String> args) {
  //int postalCode = null; not allowed

  //Nullable types end with a question mark (?)
  // while non-nullable types do not

  //Dart types are non-nullable by default
  int postalCode = 200;

  //Nullable types
  int? myInt = null;
  double? myDouble = null;
  bool? myBool = null;

  int? age;
  double? height;
  String? message;

  print(age);
  print(height);
  print(message);

  //Null-aware operators
  String? mesg;
  final text = mesg ?? 'Error';
  print(text);

  //Null-aware assignment operator (??=)
  double? fontSize;
  fontSize = fontSize ?? 20.0;

  //Null-aware access operator (?.)
  {
    int? age;
    print(age?.isNegative);
  }
  //Null-aware cascade operator (?..)
  User user = User()
    ..name = 'Ray'
    ..id = 42;
}
