/// jwt : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIwMTcwMzk4OTY0NiIsImp0aSI6IjYzZmRhN2Q0LTVhODQtNGZjYi04NTU3LTEzYzBhMTBmMWE5NyIsImlhdCI6MTY0MzY5OTUwNywiaWQiOiJhZGVkNDk4OS05NDM0LTRiOGMtYWU2ZS1hMzc5YzQwNmQxYzciLCJyb2wiOiJHZW5lcmFsIFVzZXIiLCJuYmYiOjE2NDM2OTk1MDYsImV4cCI6MTY0MzcwNjcwNiwiaXNzIjoiTG9zdEFuZEZvdW5kIiwiYXVkIjoiaHR0cDovL2xvY2FsaG9zdDo2MDk5MS8ifQ.VOpEbXXFeMOmJEM166tJzBmFPtuK4l0U_YPbPjXogsM"
/// otpCode : null
/// message : null
/// role : "General User"
/// userInfo : {"userTypeId":3,"userType":null,"FullName":"Mst. Rubina","Citizenship":"Bangladeshi","NationalIdentityType":1,"NationalIdentityNo":"2610413965404","AddressType":null,"userFrom":null,"ImagePath":"Upload/GenarelUser\\637365601497260370.jpg","otpCode":"3141","isVarified":1,"isActive":1,"isChangePassword":null,"createdAt":"2020-09-24T16:02:28.7322023","createdBy":null,"updatedAt":"2021-08-14T00:00:00","updatedBy":null,"Id":"aded4989-9434-4b8c-ae6e-a379c406d1c7","UserName":"01703989646","NormalizedUserName":"01703989646","Email":"st@gmail.com","NormalizedEmail":"ST@GMAIL.COM","EmailConfirmed":false,"PasswordHash":"AQAAAAEAACcQAAAAEGY593FBbW3fwue4dHXKEs5zVHqtqwDQaJf5KyJtNxNjg57tvJWvw5GuLEtImIHOOg==","SecurityStamp":"5NZ7L5Q23OYKVPVXVBIGLRA22JO3JZTE","ConcurrencyStamp":"d70b7a33-58f6-4c58-985f-e5a86dbc2df3","PhoneNumber":"01703989646","PhoneNumberConfirmed":false,"TwoFactorEnabled":false,"LockoutEnd":null,"LockoutEnabled":true,"AccessFailedCount":0}

class UserModel {
  UserModel({
      String? jwt, 
      dynamic otpCode, 
      dynamic message, 
      String? role, 
      UserInfo? userInfo,}){
    _jwt = jwt;
    _otpCode = otpCode;
    _message = message;
    _role = role;
    _userInfo = userInfo;
}

  UserModel.fromJson(dynamic json) {
    _jwt = json['jwt'];
    _otpCode = json['otpCode'];
    _message = json['message'];
    _role = json['role'];
    _userInfo = json['userInfo'] != null ? UserInfo.fromJson(json['userInfo']) : null;
  }
  String? _jwt;
  dynamic _otpCode;
  dynamic _message;
  String? _role;
  UserInfo? _userInfo;

  String? get jwt => _jwt;
  dynamic get otpCode => _otpCode;
  dynamic get message => _message;
  String? get role => _role;
  UserInfo? get userInfo => _userInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['jwt'] = _jwt;
    map['otpCode'] = _otpCode;
    map['message'] = _message;
    map['role'] = _role;
    if (_userInfo != null) {
      map['userInfo'] = _userInfo?.toJson();
    }
    return map;
  }

}


class UserInfo {
  UserInfo({
      int? userTypeId, 
      dynamic userType, 
      String? fullName, 
      String? citizenship, 
      int? nationalIdentityType, 
      String? nationalIdentityNo, 
      dynamic addressType, 
      dynamic userFrom, 
      String? imagePath, 
      String? otpCode, 
      int? isVarified, 
      int? isActive, 
      dynamic isChangePassword, 
      String? createdAt, 
      dynamic createdBy, 
      String? updatedAt, 
      dynamic updatedBy, 
      String? id, 
      String? userName, 
      String? normalizedUserName, 
      String? email, 
      String? normalizedEmail, 
      bool? emailConfirmed, 
      String? passwordHash, 
      String? securityStamp, 
      String? concurrencyStamp, 
      String? phoneNumber, 
      bool? phoneNumberConfirmed, 
      bool? twoFactorEnabled, 
      dynamic lockoutEnd, 
      bool? lockoutEnabled, 
      int? accessFailedCount,}){
    _userTypeId = userTypeId;
    _userType = userType;
    _fullName = fullName;
    _citizenship = citizenship;
    _nationalIdentityType = nationalIdentityType;
    _nationalIdentityNo = nationalIdentityNo;
    _addressType = addressType;
    _userFrom = userFrom;
    _imagePath = imagePath;
    _otpCode = otpCode;
    _isVarified = isVarified;
    _isActive = isActive;
    _isChangePassword = isChangePassword;
    _createdAt = createdAt;
    _createdBy = createdBy;
    _updatedAt = updatedAt;
    _updatedBy = updatedBy;
    _id = id;
    _userName = userName;
    _normalizedUserName = normalizedUserName;
    _email = email;
    _normalizedEmail = normalizedEmail;
    _emailConfirmed = emailConfirmed;
    _passwordHash = passwordHash;
    _securityStamp = securityStamp;
    _concurrencyStamp = concurrencyStamp;
    _phoneNumber = phoneNumber;
    _phoneNumberConfirmed = phoneNumberConfirmed;
    _twoFactorEnabled = twoFactorEnabled;
    _lockoutEnd = lockoutEnd;
    _lockoutEnabled = lockoutEnabled;
    _accessFailedCount = accessFailedCount;
}

  UserInfo.fromJson(dynamic json) {
    _userTypeId = json['userTypeId'];
    _userType = json['userType'];
    _fullName = json['FullName'];
    _citizenship = json['Citizenship'];
    _nationalIdentityType = json['NationalIdentityType'];
    _nationalIdentityNo = json['NationalIdentityNo'];
    _addressType = json['AddressType'];
    _userFrom = json['userFrom'];
    _imagePath = json['ImagePath'];
    _otpCode = json['otpCode'];
    _isVarified = json['isVarified'];
    _isActive = json['isActive'];
    _isChangePassword = json['isChangePassword'];
    _createdAt = json['createdAt'];
    _createdBy = json['createdBy'];
    _updatedAt = json['updatedAt'];
    _updatedBy = json['updatedBy'];
    _id = json['Id'];
    _userName = json['UserName'];
    _normalizedUserName = json['NormalizedUserName'];
    _email = json['Email'];
    _normalizedEmail = json['NormalizedEmail'];
    _emailConfirmed = json['EmailConfirmed'];
    _passwordHash = json['PasswordHash'];
    _securityStamp = json['SecurityStamp'];
    _concurrencyStamp = json['ConcurrencyStamp'];
    _phoneNumber = json['PhoneNumber'];
    _phoneNumberConfirmed = json['PhoneNumberConfirmed'];
    _twoFactorEnabled = json['TwoFactorEnabled'];
    _lockoutEnd = json['LockoutEnd'];
    _lockoutEnabled = json['LockoutEnabled'];
    _accessFailedCount = json['AccessFailedCount'];
  }
  int? _userTypeId;
  dynamic _userType;
  String? _fullName;
  String? _citizenship;
  int? _nationalIdentityType;
  String? _nationalIdentityNo;
  dynamic _addressType;
  dynamic _userFrom;
  String? _imagePath;
  String? _otpCode;
  int? _isVarified;
  int? _isActive;
  dynamic _isChangePassword;
  String? _createdAt;
  dynamic _createdBy;
  String? _updatedAt;
  dynamic _updatedBy;
  String? _id;
  String? _userName;
  String? _normalizedUserName;
  String? _email;
  String? _normalizedEmail;
  bool? _emailConfirmed;
  String? _passwordHash;
  String? _securityStamp;
  String? _concurrencyStamp;
  String? _phoneNumber;
  bool? _phoneNumberConfirmed;
  bool? _twoFactorEnabled;
  dynamic _lockoutEnd;
  bool? _lockoutEnabled;
  int? _accessFailedCount;

  int? get userTypeId => _userTypeId;
  dynamic get userType => _userType;
  String? get fullName => _fullName;
  String? get citizenship => _citizenship;
  int? get nationalIdentityType => _nationalIdentityType;
  String? get nationalIdentityNo => _nationalIdentityNo;
  dynamic get addressType => _addressType;
  dynamic get userFrom => _userFrom;
  String? get imagePath => _imagePath;
  String? get otpCode => _otpCode;
  int? get isVarified => _isVarified;
  int? get isActive => _isActive;
  dynamic get isChangePassword => _isChangePassword;
  String? get createdAt => _createdAt;
  dynamic get createdBy => _createdBy;
  String? get updatedAt => _updatedAt;
  dynamic get updatedBy => _updatedBy;
  String? get id => _id;
  String? get userName => _userName;
  String? get normalizedUserName => _normalizedUserName;
  String? get email => _email;
  String? get normalizedEmail => _normalizedEmail;
  bool? get emailConfirmed => _emailConfirmed;
  String? get passwordHash => _passwordHash;
  String? get securityStamp => _securityStamp;
  String? get concurrencyStamp => _concurrencyStamp;
  String? get phoneNumber => _phoneNumber;
  bool? get phoneNumberConfirmed => _phoneNumberConfirmed;
  bool? get twoFactorEnabled => _twoFactorEnabled;
  dynamic get lockoutEnd => _lockoutEnd;
  bool? get lockoutEnabled => _lockoutEnabled;
  int? get accessFailedCount => _accessFailedCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userTypeId'] = _userTypeId;
    map['userType'] = _userType;
    map['FullName'] = _fullName;
    map['Citizenship'] = _citizenship;
    map['NationalIdentityType'] = _nationalIdentityType;
    map['NationalIdentityNo'] = _nationalIdentityNo;
    map['AddressType'] = _addressType;
    map['userFrom'] = _userFrom;
    map['ImagePath'] = _imagePath;
    map['otpCode'] = _otpCode;
    map['isVarified'] = _isVarified;
    map['isActive'] = _isActive;
    map['isChangePassword'] = _isChangePassword;
    map['createdAt'] = _createdAt;
    map['createdBy'] = _createdBy;
    map['updatedAt'] = _updatedAt;
    map['updatedBy'] = _updatedBy;
    map['Id'] = _id;
    map['UserName'] = _userName;
    map['NormalizedUserName'] = _normalizedUserName;
    map['Email'] = _email;
    map['NormalizedEmail'] = _normalizedEmail;
    map['EmailConfirmed'] = _emailConfirmed;
    map['PasswordHash'] = _passwordHash;
    map['SecurityStamp'] = _securityStamp;
    map['ConcurrencyStamp'] = _concurrencyStamp;
    map['PhoneNumber'] = _phoneNumber;
    map['PhoneNumberConfirmed'] = _phoneNumberConfirmed;
    map['TwoFactorEnabled'] = _twoFactorEnabled;
    map['LockoutEnd'] = _lockoutEnd;
    map['LockoutEnabled'] = _lockoutEnabled;
    map['AccessFailedCount'] = _accessFailedCount;
    return map;
  }

}