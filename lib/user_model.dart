class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? phonenumber;
  String? location;
  String? profilePicture;

  UserModel({this.uid, this.email, this.firstName, this.secondName, this.phonenumber, this.location, this.profilePicture});

  // receiving data from server
factory UserModel.fromMap(map)
{
  return UserModel(
    uid: map['uid'],
    email: map['email'],
    firstName: map['firstName'],
    secondName: map['secondName'],
    location: map['location'],
    phonenumber: map['phonenumber'],
    profilePicture: map['profilePicture'],
  );
}
// sending data to our server
Map<String, dynamic> toMap() {
  return {
    'uid' : uid,
    'email' : email,
    'firstName' : firstName,
    'secondName' : secondName,
    'location' : location,
    'phonenumber' : phonenumber,
    'profilePicture': profilePicture

  };
}
}