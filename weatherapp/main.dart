import "data_repository.dart";
import 'fake_webserver.dart';

void main(List<String> args) {
  final repository = DataRepository();
  final temperature = repository.fetchTemperature("Kollam");
  print(temperature);
}
