

/// success : true
/// message : "Get Data Successfully  !"
/// data : {"user":{"id":104,"name":"user","email":"user@email.com","phone":"1234565551296","image":"https://cashrocket.maantechnology.com/","user_type":"User","refer":null,"refer_code":"RF2256","facebook_token":null,"google_token":null,"status":1,"email_verified_at":null,"access_date":"2022-11-16 19:45:58","remember_token":null,"created_at":"2022-11-16T18:45:58.000000Z","updated_at":"2022-11-16T18:45:58.000000Z","wallet":{"id":98,"user_id":104,"balance":0,"status":1,"created_at":"2022-11-16T18:45:58.000000Z","updated_at":"2022-11-16T18:45:58.000000Z"}},"withdraw_request_count":0,"refer_user_count":0}

class UserProfileModel {
  UserProfileModel({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  UserProfileModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;

  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}
class User {
  User({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? image,
    String? userType,
    dynamic refer,
    String? referCode,
    dynamic facebookToken,
    dynamic googleToken,
    int? status,
    dynamic emailVerifiedAt,
    String? accessDate,
    dynamic rememberToken,
    String? createdAt,
    String? updatedAt,
    Wallet? wallet,}){
    _id = id;
    _name = name;
    _email = email;
    _phone = phone;
    _image = image;
    _userType = userType;
    _refer = refer;
    _referCode = referCode;
    _facebookToken = facebookToken;
    _googleToken = googleToken;
    _status = status;
    _emailVerifiedAt = emailVerifiedAt;
    _accessDate = accessDate;
    _rememberToken = rememberToken;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _wallet = wallet;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _image = json['image'];
    _userType = json['user_type'];
    _refer = json['refer'];
    _referCode = json['refer_code'];
    _facebookToken = json['facebook_token'];
    _googleToken = json['google_token'];
    _status = json['status'];
    _emailVerifiedAt = json['email_verified_at'];
    _accessDate = json['access_date'];
    _rememberToken = json['remember_token'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _wallet = json['wallet'] != null ? Wallet.fromJson(json['wallet']) : null;
  }
  int? _id;
  String? _name;
  String? _email;
  String? _phone;
  String? _image;
  String? _userType;
  dynamic _refer;
  String? _referCode;
  dynamic _facebookToken;
  dynamic _googleToken;
  int? _status;
  dynamic _emailVerifiedAt;
  String? _accessDate;
  dynamic _rememberToken;
  String? _createdAt;
  String? _updatedAt;
  Wallet? _wallet;

  int? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get phone => _phone;
  String? get image => _image;
  String? get userType => _userType;
  dynamic get refer => _refer;
  String? get referCode => _referCode;
  dynamic get facebookToken => _facebookToken;
  dynamic get googleToken => _googleToken;
  int? get status => _status;
  dynamic get emailVerifiedAt => _emailVerifiedAt;
  String? get accessDate => _accessDate;
  dynamic get rememberToken => _rememberToken;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Wallet? get wallet => _wallet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['phone'] = _phone;
    map['image'] = _image;
    map['user_type'] = _userType;
    map['refer'] = _refer;
    map['refer_code'] = _referCode;
    map['facebook_token'] = _facebookToken;
    map['google_token'] = _googleToken;
    map['status'] = _status;
    map['email_verified_at'] = _emailVerifiedAt;
    map['access_date'] = _accessDate;
    map['remember_token'] = _rememberToken;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_wallet != null) {
      map['wallet'] = _wallet?.toJson();
    }
    return map;
  }

}
class Wallet {
  Wallet({
    int? id,
    int? userId,
    int? balance,
    int? status,
    String? createdAt,
    String? updatedAt,}){
    _id = id;
    _userId = userId;
    _balance = balance;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Wallet.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _balance = json['balance'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _userId;
  int? _balance;
  int? _status;
  String? _createdAt;
  String? _updatedAt;

  int? get id => _id;
  int? get userId => _userId;
  int? get balance => _balance;
  int? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['balance'] = _balance;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
class Data {
  Data({
    User? user,
    int? withdrawRequestCount,
    int? referUserCount,}){
    _user = user;
    _withdrawRequestCount = withdrawRequestCount;
    _referUserCount = referUserCount;
  }

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _withdrawRequestCount = json['withdraw_request_count'];
    _referUserCount = json['refer_user_count'];
  }
  User? _user;
  int? _withdrawRequestCount;
  int? _referUserCount;

  User? get user => _user;
  int? get withdrawRequestCount => _withdrawRequestCount;
  int? get referUserCount => _referUserCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['withdraw_request_count'] = _withdrawRequestCount;
    map['refer_user_count'] = _referUserCount;
    return map;
  }

}