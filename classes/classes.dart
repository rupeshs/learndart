import "user.dart";
import 'mysingleton.dart';

void main(List<String> args) {
  final user = User(id: 1, name: "Tom");
  //user._id = 1;
  //user._name = "Tom";
  print(user);
  print(user.toString());
  print(user.toJson());

  final map = {'id': 100, 'name': 'Carl'};
  final carl = User.fromJson(map);
  print(carl);
  print(carl.id);
  print(carl.isBigId);

  var s1 = MySingleton();
  var s2 = MySingleton();
  print(identical(s1, s2)); // true
  print(s1 == s2); // true
}
