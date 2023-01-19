class UserModel {
  bool? status;
  String? message;
  User? user;
  String? token;

  UserModel({this.status, this.message, this.user, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  Null? name;
  Null? fname;
  Null? lname;
  String? email;
  String? mobileNo;
  Null? emailVerifiedAt;
  String? dob;
  String? gender;
  Null? address;
  Null? image;
  String? role;
  String? isBan;
  String? isDelete;
  String? status;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
        this.name,
        this.fname,
        this.lname,
        this.email,
        this.mobileNo,
        this.emailVerifiedAt,
        this.dob,
        this.gender,
        this.address,
        this.image,
        this.role,
        this.isBan,
        this.isDelete,
        this.status,
        this.createdAt,
        this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fname = json['fname'];
    lname = json['lname'];
    email = json['email'];
    mobileNo = json['mobile_no'];
    emailVerifiedAt = json['email_verified_at'];
    dob = json['dob'];
    gender = json['gender'];
    address = json['address'];
    image = json['image'];
    role = json['role'];
    isBan = json['isBan'];
    isDelete = json['is_delete'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['email'] = this.email;
    data['mobile_no'] = this.mobileNo;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['image'] = this.image;
    data['role'] = this.role;
    data['isBan'] = this.isBan;
    data['is_delete'] = this.isDelete;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
