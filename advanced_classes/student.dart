import 'person.dart';

import "person.dart";

enum Grade { A, B, C, D, F }

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);
  var grades = <Grade>[];

  @override
  String get fullName => '$surname, $givenName';
}
