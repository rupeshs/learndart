enum Weather { sunny, snowy, cloudy, rainy }
void main(List<String> args) {
  //Boolean variables
  const bool yes = true;
  const bool no = false;
/* Or using type inference 
  const yes = true;
  const no1 = false;
  */

  //Testing equality
  const doesOneEqualsTwo = (1 == 2);
  print(doesOneEqualsTwo);
  const doesOneNotEqualsTwo = (1 != 2);
  print(doesOneNotEqualsTwo);

  const isOneGreaterThanTwo = (1 > 2);
  const isOneLessThanTwo = (1 < 2);

  //AND operator
  const isSunny = true;
  const isFinished = true;
  const willGoCycling = isSunny && isFinished;

  //String equality
  const animal = "dog";
  print(animal == "cat");

  //IF else
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }
  //ternary conditional operator
  const score = 83;
  const message = (score >= 60) ? 'You passed' : 'You failed';
  print(message);

  //Enums
  const weatherToday = Weather.cloudy;
  print(weatherToday);
  final index = weatherToday.index;
  print(index);

  //While loop
  var count = 1;
  while (count <= 5) {
    print(count);
    count++;
  }

  //for loop
  for (var i = 0; i < 5; i++) {
    print("count ${i + 1}");
  }

  //For in loop

  const myString = 'I ❤ Dart';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

  //for each
  var myNumbers = [1, 2, 3];
  myNumbers.forEach((number) {
    print(number);
  });
}
