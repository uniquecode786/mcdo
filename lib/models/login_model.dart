class LoginModal {
  bool? status;
 dynamic message;
  Data? data;

  LoginModal({this.status, this.message, this.data});

  LoginModal.fromJson(Map<String, dynamic> json) {
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
  int? userId;
 dynamic cookie;
 dynamic cookieAdmin;

  Data({this.userId, this.cookie, this.cookieAdmin});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    cookie = json['cookie'];
    cookieAdmin = json['cookie_admin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['cookie'] = this.cookie;
    data['cookie_admin'] = this.cookieAdmin;
    return data;
  }
}
