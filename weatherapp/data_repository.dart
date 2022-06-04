// DataRepository interface
import "fake_webserver.dart";

abstract class DataRepository {
  // Factory constructor
  factory DataRepository() => FakeWebServer();

  double? fetchTemperature(String city);
}
