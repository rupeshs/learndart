import "dart:math";

void main() {
  //This is a single line comment

  /*
   Multi line comment in dart
   This is a test
  */

  //Dart support nested comment

  /* This is a comment
  /*And inside it is
    another comment. */
  */

  //statement
  print("Hello");

  // complex statement
  if (10 > 2) {
    // code block
  }

// dart expressions
  print(2 + 5);
  print(22 / 7);

  // Integer division ~/ (truncating division operator)
  print(22 ~/ 7);

  //Euclidean modulo operator is the % symbol
  print(10 % 3);

  //operator precedence
  // mul == div > add == sub

  print(350 / (5 + 2));

  //dart math lib
  print(sin(45 * pi / 180));
  print(pow(4, 3));

  //variables
  // Everything is an object in dart
  // The int,double are subclass of num class
  int number = 10;
  number = 15;
  double apple = 3.14;

  print(number.isEven);
  print(apple.round());
  print(number.toString());

  //Dart is a type-safe language
  int myInteger = 15;
  //myInteger = 4.5; not allowed

  // As num can be int or float data we can write
  num myNumber = 15;
  myNumber = 4.5; // OK
  // myNumber = "hello"; not allowed

  //dynamic type is also there
  // but dont do like this
  dynamic myObject = 15;
  myObject = 4.5; //OK
  myObject = 'test'; //OK

  //Type inference
  var someNumber = 15;
  someNumber = 50; // OK
  //someNumber = 4.6;

  /*
    Dart supports two types of constants
     const
     final
   * 
   */
  // To create constant data
  const chairCount = 10;
  //chairCount = 15; immutable

  /*
   You’ll only know the value after the program starts running. 
   This kind of constant is known as a runtime constant.
   Final keyword
   */
  final hoursSinceMidnight = DateTime.now().hour;
  //hoursSinceMidnight = 5; //final variable can only be set once

  /*Meaningful names
    personAge
    numberOfPeople
   In Dart, it’s standard to use lowerCamelCase for variable and constant names
   Treat abbreviations like words
    sourceUrl,urlDescription
  */

  //increment /decrement
  var counter = 0;
  counter++;
  counter--;

  double myValue = 10;
  myValue *= 3;
  print(myValue);
  print(myValue.runtimeType.toString());
}
