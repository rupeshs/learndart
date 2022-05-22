// Function
bool checkNumber(int number) {
  return number.isEven;
}

//Function with optional arguments
int scaleNumber(int number, [int scale = 1]) {
  return number * scale;
}

// We can omit return type ,but prefer return type
compliment() {
  return "Its good";
}

//Function with named argument
bool withInTolerence({required int value, int min = 0, int max = 50}) {
  return value >= min && value <= max;
}

// Function as argument (Higher order function)
void namedFunction(Function anonymousFunction) {}

// Return function (Higher order function)
Function namedFunction2() {
  return () {
    print('hello');
  };
}

//
Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}

// Independent counters
Function countingFunction() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
    return counter;
  };
  return incrementCounter;
}

Function applyMultiplierArrow(num multiplier) {
  return (num value) => value * multiplier;
}

void main(List<String> args) {
  //named functions and anonymous functions
  //don’t repeat yourself, abbreviated as DRY

  const myNumber = 11;
  final output = checkNumber(myNumber);
  print(output);

  // Function with optional argument
  final scaled = scaleNumber(20);
  print(scaled);
  final scaledCustom = scaleNumber(20, 2);
  print(scaledCustom);

  //Named arguments
  withInTolerence(value: 50);

  //A function is inside a class, it’s called a method

  //Anonymous fuction
  Function multiply = (int a, int b) {
    return a * b;
  };

  print(multiply.runtimeType);
  print(multiply(2, 3));

  //Use of anonymous function
  Function doubler = applyMultiplier(2);
  Function tripler = applyMultiplier(3);

  print("Double of 25: ${doubler(25)}");
  print("Triple of 5 : ${tripler(5)}");

  //Anonymous functions in forEach loops
  const numbers = [1, 5, 6];
  numbers.forEach((number) {
    final tripled = tripler(number);
    print(tripled);
  });

  //Anonymous functions act as closures
  {
    var counter = 0;
    final incrementCounter = () {
      counter++;
    };
    incrementCounter();
    print(counter);
  }

  //Independent counter
  final counter1 = countingFunction();
  final counter2 = countingFunction();
  print(counter1());
  print(counter2());
  print(counter1());
  print(counter2());

  //Arrow functions
  int add(int a, int b) => a + b;

  final adder = (int a, int b) => a + b;
  numbers.forEach((number) => print(tripler(number)));
}
