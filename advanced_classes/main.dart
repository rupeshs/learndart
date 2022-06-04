import "person.dart";
import "student.dart";
import 'animal.dart';

void main(List<String> args) {
  final jon = Person('Jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(jon.fullName);
  print(jane.fullName);

  final historyGrade = Grade.B;
  jane.grades.add(historyGrade);

  //Changes to a parent class can break a child class.
  // high coupling
  // Prefer composition over inheritance -
  // Add behavior to a class rather than share behavior with an ancestor
  // whole Flutter framework is organized around the idea of composition

  Animal platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  print(platypus);
  //code against interfaces, not implementations
  // Multiple inheritance not supported
  //class MySubclass extends OneClass, AnotherClass{} // Not OK
  //class MyClass implements OneClass, AnotherClass // OK


}
