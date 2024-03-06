class UserModel {
  String? email;
  String? firstName;
  String? lastName;
  int? height;
  int? weight;

  UserModel(
      {this.email, this.firstName, this.lastName, this.height, this.weight});

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    height = json['height'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['height'] = height;
    data['weight'] = weight;
    return data;
  }
}