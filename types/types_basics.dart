void main() {
  /*
   types:
         int
         double
         num
         dynamic
         string
  */

  int myInteger = 10;
  //constant
  const int myConstant = 15;
  //Run time constant
  final int myRuntimeConstant = 50;
  //myRuntimeConstant=25 //'myRuntimeConstant' can only be set once.

  //variable without type annotation
  //type inference
  var myNumber = 32;
  const countNumber = 5;
  print(myNumber is int);
  print(myNumber.runtimeType);

  //Type conversion
  var integer = 100;
  var decimal = 12.5;
  //decimal = integer; wrong
  integer = decimal.toInt();
  print(integer);

  //Mixed types and operators
  const hourlyRate = 19.5;
  const hoursWorked = 10;
  final totalCost = (hourlyRate * hoursWorked).toInt();

  //Strings
  var greeting = "Hello world";
  print(greeting);
  greeting = "fine";
  print(greeting);

  //No character type only string
  const letter = 'a';
  const dart = '🎯';
  print(dart);

  //Dart strings are a collection of UTF-16 code units.
  // to print unicode values
  var message = "Hello";
  print(message.codeUnits);

  // More than 16 bits 65535
  // surrogate pairs.
  print(dart.codeUnits);
  //surrogate pairs -> runes
  print(dart.runes);

  const flag = '🎯';

  //Flutter style guide does recommend using single-quotes
  //if you have apostrophes
  var catFood = "my cat's food";
  var catFood2 = 'my cat\'s food';

  //Simple concatenation
  var name = "nolowiz";
  var helloMessage = " Hello";
  print(helloMessage + name);

  //Efficient way to  concatenate
  final messageHello = StringBuffer();
  messageHello.write('Hello');
  messageHello.write(' my name is ');
  messageHello.write('Rup');
  print(messageHello.toString());

  //Interpolation
  const firstName = "Tom";
  const introduction = 'Hello my name is $firstName';

  const oneThird = 1 / 3;
  final sentence = "One third is ${oneThird.toStringAsFixed(3)}";
  print(sentence);

  //Multi-line strings
  const bigString = '''
                    You can have a string
                    that contains multiple
                    lines
                    by
                    doing this.''';
  print(bigString);
  const oneLine = 'This is only '
      'a single '
      'line '
      'at runtime.';
  print(oneLine);

  // raw string
  const rawString = r'My name \n is $name.';
  print(rawString);

  //Emoji codes
  print('I \u2764 Dart\u0021');
  print('I love Dart\u{1F3AF}');
  print("Cool 😀");
  print("\u{1F600}");
  /*
  Dart is optionally-typed language
  Javascript is dynamically typed language 
  var myVariable = 42;
  myVariable = "hello";
  But prefer to use static type
   */
  dynamic myVariable = 42;
  myVariable = "hello"; //OK

  Object? myVariable2 = 42;
  myVariable2 = "hello"; //OK
}
