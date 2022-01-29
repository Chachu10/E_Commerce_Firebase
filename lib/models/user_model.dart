class UserModel{
  String? name;

  String? uid;
  String? email;
  String? type;
  String? phoneNumber;



  UserModel({this.uid, this.email, this.name, this.phoneNumber, this.type});
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      phoneNumber: map['phoneNumber'],
      type: map['type']
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'phoneNumber': phoneNumber,
      'type': type,
    };
  }
}