class User {
  final int _id;
  final String _name;

  User({int id = 0, String name = "anonymous"})
      : _id = id,
        _name = name;

  // Factory constructor
  factory User.ray() {
    return User(id: 42, name: 'Ray');
  }

  factory User.fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }
  //Getters

  int get id => _id;
  String get name => _name;

  bool get isBigId => _id > 1000;

  // Keep this bottom of the class
  @override
  String toString() {
    return "User(id: $_id ,name: $_name)";
  }

  String toJson() {
    return '{"id":$_id,"name":"$_name"}';
  }
}
