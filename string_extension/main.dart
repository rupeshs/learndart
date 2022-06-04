extension on String {
  String get encoded {
    return _code(1);
  }

  String get decoded {
    return _code(-1);
  }

  String _code(int step) {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}

extension on int {
  int get cubed {
    return this * this * this;
  }
}

void main(List<String> args) {
  final secret = 'abc'.encoded;
  print(secret);
  print(secret.decoded);

  final original = 'I like extensions!';
  final secret2 = original.encoded;
  final revealed = secret2.decoded;
  print(secret2);
  print(revealed);
  print(2.cubed);
}
