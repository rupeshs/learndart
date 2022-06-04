class Person {
  Person(this.givenName, this.surname);

  String givenName;
  String surname;

  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}
