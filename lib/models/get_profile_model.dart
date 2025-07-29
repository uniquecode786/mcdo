class GetProfileModel {
  bool? status;
  dynamic message;
  Data? data;

  GetProfileModel({this.status, this.message, this.data});

  GetProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  dynamic firstName;
  dynamic lastName;
  dynamic email;
  dynamic gender;
  dynamic dob;

  Data({this.firstName, this.lastName, this.email, this.gender, this.dob});

  Data.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    gender = json['gender'];
    dob = json['dob'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    return data;
  }
}
