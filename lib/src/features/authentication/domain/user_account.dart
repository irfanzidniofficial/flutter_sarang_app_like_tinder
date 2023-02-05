import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserAccount {
  final String fullName;
  final String email;
  final String password;
  final String occupation;
  final String age;
  String? imageProfile;

  UserAccount({
    required this.fullName,
    required this.email,
    required this.password,
    required this.occupation,
    required this.age,
    this.imageProfile,
  });

  @override
  String toString() {
    return 'UserAccount(fullName: $fullName, email: $email, password: $password, occupation: $occupation, age: $age, imageProfile: $imageProfile)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullName': fullName,
      'email': email,
      'password': password,
      'occupation': occupation,
      'age': age,
      'imageProfile': imageProfile,
    };
  }

  factory UserAccount.fromMap(Map<String, dynamic> map) {
    return UserAccount(
      fullName: map['fullName'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      occupation: map['occupation'] as String,
      age: map['age'] as String,
      imageProfile: map['imageProfile'] != null ? map['imageProfile'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserAccount.fromJson(String source) => UserAccount.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant UserAccount other) {
    if (identical(this, other)) return true;
  
    return 
      other.fullName == fullName &&
      other.email == email &&
      other.password == password &&
      other.occupation == occupation &&
      other.age == age &&
      other.imageProfile == imageProfile;
  }

  @override
  int get hashCode {
    return fullName.hashCode ^
      email.hashCode ^
      password.hashCode ^
      occupation.hashCode ^
      age.hashCode ^
      imageProfile.hashCode;
  }
}
