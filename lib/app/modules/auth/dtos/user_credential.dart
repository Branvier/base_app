import 'dart:convert';

class UserCredential {
  final String name;
  final String email;

  UserCredential({
    required this.name,
    required this.email,
  });

  UserCredential copyWith({
    String? name,
    String? email,
  }) {
    return UserCredential(
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
    };
  }

  factory UserCredential.fromMap(Map<String, dynamic> map) {
    T isA<T>(k) => map[k] is T ? map[k] : throw ArgumentError.value(map[k], k);
    return UserCredential(
      name: isA<String>('name'),
      email: isA<String>('email'),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserCredential.fromJson(String source) =>
      UserCredential.fromMap(json.decode(source));

  @override
  String toString() => 'UserCredential(name: $name, email: $email)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserCredential &&
        other.name == name &&
        other.email == email;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode;
}
