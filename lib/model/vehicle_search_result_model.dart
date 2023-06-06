

class VehicleSearchResultModel {
  VehicleSearchResultModel({
    int? gDInformationId,
    VehicleGdInformation? gDInformation,
    dynamic vehicleTypeId,
    VehicleType? vehicleType,
    dynamic vehicleBrandId,
    VehicleBrand? vehicleBrand,
    String? vehicleRegNo,
    String? regNoFirstPart,
    String? regNoSecondPart,
    String? regNoThiredPart,
    String? madeBy,
    String? madeIn,
    dynamic modelNo,
    String? mfcDate,
    String? engineNo,
    String? chasisNo,
    String? ccNo,
    dynamic vehicleModelNo,
    dynamic vehicleDescription,
    IndentifyInfo? indentifyInfo,
    SpaceAndTime? spaceAndTime,
    dynamic colorName,
    dynamic brandName,
    int? id,
    dynamic isDelete,
    dynamic createdAt,
    dynamic updatedAt,
    dynamic createdBy,
    dynamic updatedBy,}){
    _gDInformationId = gDInformationId;
    _gDInformation = gDInformation;
    _vehicleTypeId = vehicleTypeId;
    _vehicleType = vehicleType;
    _vehicleBrandId = vehicleBrandId;
    _vehicleBrand = vehicleBrand;
    _vehicleRegNo = vehicleRegNo;
    _regNoFirstPart = regNoFirstPart;
    _regNoSecondPart = regNoSecondPart;
    _regNoThiredPart = regNoThiredPart;
    _madeBy = madeBy;
    _madeIn = madeIn;
    _modelNo = modelNo;
    _mfcDate = mfcDate;
    _engineNo = engineNo;
    _chasisNo = chasisNo;
    _ccNo = ccNo;
    _vehicleModelNo = vehicleModelNo;
    _vehicleDescription = vehicleDescription;
    _spaceAndTime = spaceAndTime;
    _colorName = colorName;
    _brandName = brandName;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
  }

  VehicleSearchResultModel.fromJson(dynamic json) {
    _gDInformationId = json['gDInformationId'];
    _gDInformation = json['gDInformation'] != null ? VehicleGdInformation.fromJson(json['gDInformation']) : null;
    _vehicleTypeId = json['vehicleTypeId'];
    _vehicleType = json['vehicleType'] != null ? VehicleType.fromJson(json['vehicleType']) : null;
    _vehicleBrandId = json['vehicleBrandId'];
    _vehicleBrand = json['vehicleBrand'] != null ? VehicleBrand.fromJson(json['vehicleBrand']) : null;
    _vehicleRegNo = json['vehicleRegNo'];
    _regNoFirstPart = json['regNoFirstPart'];
    _regNoSecondPart = json['regNoSecondPart'];
    _regNoThiredPart = json['regNoThiredPart'];
    _madeBy = json['madeBy'];
    _madeIn = json['madeIn'];
    _modelNo = json['modelNo'];
    _mfcDate = json['mfcDate'];
    _engineNo = json['engineNo'];
    _chasisNo = json['chasisNo'];
    _ccNo = json['ccNo'];
    _vehicleModelNo = json['vehicleModelNo'];
    _vehicleDescription = json['vehicleDescription'];
    _indentifyInfo = json['indentifyInfo'] != null ? IndentifyInfo.fromJson(json['indentifyInfo']) : null;
    _spaceAndTime = json['spaceAndTime'] != null ? SpaceAndTime.fromJson(json['spaceAndTime']) : null;
    _colorName = json['colorName'];
    _brandName = json['brandName'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  int? _gDInformationId;
  VehicleGdInformation? _gDInformation;
  dynamic _vehicleTypeId;
  VehicleType? _vehicleType;
  dynamic _vehicleBrandId;
  VehicleBrand? _vehicleBrand;
  String? _vehicleRegNo;
  String? _regNoFirstPart;
  String? _regNoSecondPart;
  String? _regNoThiredPart;
  String? _madeBy;
  String? _madeIn;
  dynamic _modelNo;
  String? _mfcDate;
  String? _engineNo;
  String? _chasisNo;
  String? _ccNo;
  dynamic _vehicleModelNo;
  dynamic _vehicleDescription;
  IndentifyInfo? _indentifyInfo;
  SpaceAndTime? _spaceAndTime;
  dynamic _colorName;
  dynamic _brandName;
  int? _id;
  dynamic _isDelete;
  dynamic _createdAt;
  dynamic _updatedAt;
  dynamic _createdBy;
  dynamic _updatedBy;

  int? get gDInformationId => _gDInformationId;
  VehicleGdInformation? get gDInformation => _gDInformation;
  dynamic get vehicleTypeId => _vehicleTypeId;
  VehicleType? get vehicleType => _vehicleType;
  dynamic get vehicleBrandId => _vehicleBrandId;
  VehicleBrand? get vehicleBrand => _vehicleBrand;
  String? get vehicleRegNo => _vehicleRegNo;
  String? get regNoFirstPart => _regNoFirstPart;
  String? get regNoSecondPart => _regNoSecondPart;
  String? get regNoThiredPart => _regNoThiredPart;
  String? get madeBy => _madeBy;
  String? get madeIn => _madeIn;
  dynamic get modelNo => _modelNo;
  String? get mfcDate => _mfcDate;
  String? get engineNo => _engineNo;
  String? get chasisNo => _chasisNo;
  String? get ccNo => _ccNo;
  dynamic get vehicleModelNo => _vehicleModelNo;
  dynamic get vehicleDescription => _vehicleDescription;
  IndentifyInfo? get indentifyInfo => _indentifyInfo;
  SpaceAndTime? get spaceAndTime => _spaceAndTime;
  dynamic get colorName => _colorName;
  dynamic get brandName => _brandName;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['gDInformationId'] = _gDInformationId;
    if (_gDInformation != null) {
      map['gDInformation'] = _gDInformation?.toJson();
    }
    map['vehicleTypeId'] = _vehicleTypeId;
    if (_vehicleType != null) {
      map['vehicleType'] = _vehicleType?.toJson();
    }
    map['vehicleBrandId'] = _vehicleBrandId;
    if (_vehicleBrand != null) {
      map['vehicleBrand'] = _vehicleBrand?.toJson();
    }
    map['vehicleRegNo'] = _vehicleRegNo;
    map['regNoFirstPart'] = _regNoFirstPart;
    map['regNoSecondPart'] = _regNoSecondPart;
    map['regNoThiredPart'] = _regNoThiredPart;
    map['madeBy'] = _madeBy;
    map['madeIn'] = _madeIn;
    map['modelNo'] = _modelNo;
    map['mfcDate'] = _mfcDate;
    map['engineNo'] = _engineNo;
    map['chasisNo'] = _chasisNo;
    map['ccNo'] = _ccNo;
    map['vehicleModelNo'] = _vehicleModelNo;
    map['vehicleDescription'] = _vehicleDescription;
    if (_indentifyInfo != null) {
      map['indentifyInfo'] = _indentifyInfo?.toJson();
    }
    if (_spaceAndTime != null) {
      map['spaceAndTime'] = _spaceAndTime?.toJson();
    }
    map['colorName'] = _colorName;
    map['brandName'] = _brandName;
    map['Id'] = _id;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    return map;
  }

}

class SpaceAndTime {
  SpaceAndTime({
    int? gDInformationId,
    VehicleGdInformation? gDInformation,
    dynamic divisionId,
    dynamic division,
    int? districtId,
    dynamic district,
    int? thanaId,
    dynamic thana,
    dynamic postOfficeId,
    dynamic postOffice,
    dynamic policeThanaId,
    dynamic policeThana,
    dynamic unionWardId,
    dynamic unionWard,
    dynamic villagesId,
    dynamic villages,
    dynamic village,
    String? placeDetails,
    String? lafDate,
    dynamic lafTime,
    int? id,
    dynamic isDelete,
    String? createdAt,
    dynamic updatedAt,
    String? createdBy,
    dynamic updatedBy,}){
    _gDInformationId = gDInformationId;
    _gDInformation = gDInformation;
    _divisionId = divisionId;
    _division = division;
    _districtId = districtId;
    _district = district;
    _thanaId = thanaId;
    _thana = thana;
    _postOfficeId = postOfficeId;
    _postOffice = postOffice;
    _policeThanaId = policeThanaId;
    _policeThana = policeThana;
    _unionWardId = unionWardId;
    _unionWard = unionWard;
    _villagesId = villagesId;
    _villages = villages;
    _village = village;
    _placeDetails = placeDetails;
    _lafDate = lafDate;
    _lafTime = lafTime;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
  }

  SpaceAndTime.fromJson(dynamic json) {
    _gDInformationId = json['gDInformationId'];
    _gDInformation = json['gDInformation'] != null ? VehicleGdInformation.fromJson(json['gDInformation']) : null;
    _divisionId = json['divisionId'];
    _division = json['division'];
    _districtId = json['districtId'];
    _district = json['district'];
    _thanaId = json['thanaId'];
    _thana = json['thana'];
    _postOfficeId = json['postOfficeId'];
    _postOffice = json['postOffice'];
    _policeThanaId = json['policeThanaId'];
    _policeThana = json['policeThana'];
    _unionWardId = json['unionWardId'];
    _unionWard = json['unionWard'];
    _villagesId = json['villagesId'];
    _villages = json['villages'];
    _village = json['village'];
    _placeDetails = json['placeDetails'];
    _lafDate = json['lafDate'];
    _lafTime = json['lafTime'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  int? _gDInformationId;
  VehicleGdInformation? _gDInformation;
  dynamic _divisionId;
  dynamic _division;
  int? _districtId;
  dynamic _district;
  int? _thanaId;
  dynamic _thana;
  dynamic _postOfficeId;
  dynamic _postOffice;
  dynamic _policeThanaId;
  dynamic _policeThana;
  dynamic _unionWardId;
  dynamic _unionWard;
  dynamic _villagesId;
  dynamic _villages;
  dynamic _village;
  String? _placeDetails;
  String? _lafDate;
  dynamic _lafTime;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  int? get gDInformationId => _gDInformationId;
  VehicleGdInformation? get gDInformation => _gDInformation;
  dynamic get divisionId => _divisionId;
  dynamic get division => _division;
  int? get districtId => _districtId;
  dynamic get district => _district;
  int? get thanaId => _thanaId;
  dynamic get thana => _thana;
  dynamic get postOfficeId => _postOfficeId;
  dynamic get postOffice => _postOffice;
  dynamic get policeThanaId => _policeThanaId;
  dynamic get policeThana => _policeThana;
  dynamic get unionWardId => _unionWardId;
  dynamic get unionWard => _unionWard;
  dynamic get villagesId => _villagesId;
  dynamic get villages => _villages;
  dynamic get village => _village;
  String? get placeDetails => _placeDetails;
  String? get lafDate => _lafDate;
  dynamic get lafTime => _lafTime;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['gDInformationId'] = _gDInformationId;
    if (_gDInformation != null) {
      map['gDInformation'] = _gDInformation?.toJson();
    }
    map['divisionId'] = _divisionId;
    map['division'] = _division;
    map['districtId'] = _districtId;
    map['district'] = _district;
    map['thanaId'] = _thanaId;
    map['thana'] = _thana;
    map['postOfficeId'] = _postOfficeId;
    map['postOffice'] = _postOffice;
    map['policeThanaId'] = _policeThanaId;
    map['policeThana'] = _policeThana;
    map['unionWardId'] = _unionWardId;
    map['unionWard'] = _unionWard;
    map['villagesId'] = _villagesId;
    map['villages'] = _villages;
    map['village'] = _village;
    map['placeDetails'] = _placeDetails;
    map['lafDate'] = _lafDate;
    map['lafTime'] = _lafTime;
    map['Id'] = _id;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    return map;
  }

}

class VehicleGdInformation {
  VehicleGdInformation({
    String? applicationUserId,
    ApplicationUser? applicationUser,
    dynamic gdFor,
    String? gdDate,
    String? gdNumber,
    int? productTypeId,
    dynamic productType,
    int? gDTypeId,
    dynamic gDType,
    int? documentTypeId,
    dynamic documentType,
    String? documentDescription,
    dynamic gdDescription,
    int? statusId,
    dynamic status,
    dynamic date,
    int? id,
    dynamic isDelete,
    String? createdAt,
    dynamic updatedAt,
    String? createdBy,
    dynamic updatedBy,}){
    _applicationUserId = applicationUserId;
    _applicationUser = applicationUser;
    _gdFor = gdFor;
    _gdDate = gdDate;
    _gdNumber = gdNumber;
    _productTypeId = productTypeId;
    _productType = productType;
    _gDTypeId = gDTypeId;
    _gDType = gDType;
    _documentTypeId = documentTypeId;
    _documentType = documentType;
    _documentDescription = documentDescription;
    _gdDescription = gdDescription;
    _statusId = statusId;
    _status = status;
    _date = date;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
  }

  VehicleGdInformation.fromJson(dynamic json) {
    _applicationUserId = json['ApplicationUserId'];
    _applicationUser = json['ApplicationUser'] != null ? ApplicationUser.fromJson(json['ApplicationUser']) : null;
    _gdFor = json['gdFor'];
    _gdDate = json['gdDate'];
    _gdNumber = json['gdNumber'];
    _productTypeId = json['productTypeId'];
    _productType = json['productType'];
    _gDTypeId = json['gDTypeId'];
    _gDType = json['gDType'];
    _documentTypeId = json['documentTypeId'];
    _documentType = json['documentType'];
    _documentDescription = json['documentDescription'];
    _gdDescription = json['gdDescription'];
    _statusId = json['statusId'];
    _status = json['status'];
    _date = json['date'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _applicationUserId;
  ApplicationUser? _applicationUser;
  dynamic _gdFor;
  String? _gdDate;
  String? _gdNumber;
  int? _productTypeId;
  dynamic _productType;
  int? _gDTypeId;
  dynamic _gDType;
  int? _documentTypeId;
  dynamic _documentType;
  String? _documentDescription;
  dynamic _gdDescription;
  int? _statusId;
  dynamic _status;
  dynamic _date;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get applicationUserId => _applicationUserId;
  ApplicationUser? get applicationUser => _applicationUser;
  dynamic get gdFor => _gdFor;
  String? get gdDate => _gdDate;
  String? get gdNumber => _gdNumber;
  int? get productTypeId => _productTypeId;
  dynamic get productType => _productType;
  int? get gDTypeId => _gDTypeId;
  dynamic get gDType => _gDType;
  int? get documentTypeId => _documentTypeId;
  dynamic get documentType => _documentType;
  String? get documentDescription => _documentDescription;
  dynamic get gdDescription => _gdDescription;
  int? get statusId => _statusId;
  dynamic get status => _status;
  dynamic get date => _date;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ApplicationUserId'] = _applicationUserId;
    if (_applicationUser != null) {
      map['ApplicationUser'] = _applicationUser?.toJson();
    }
    map['gdFor'] = _gdFor;
    map['gdDate'] = _gdDate;
    map['gdNumber'] = _gdNumber;
    map['productTypeId'] = _productTypeId;
    map['productType'] = _productType;
    map['gDTypeId'] = _gDTypeId;
    map['gDType'] = _gDType;
    map['documentTypeId'] = _documentTypeId;
    map['documentType'] = _documentType;
    map['documentDescription'] = _documentDescription;
    map['gdDescription'] = _gdDescription;
    map['statusId'] = _statusId;
    map['status'] = _status;
    map['date'] = _date;
    map['Id'] = _id;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    return map;
  }

}

class ApplicationUser {
  ApplicationUser({
    int? userTypeId,
    dynamic userType,
    String? fullName,
    String? citizenship,
    int? nationalIdentityType,
    dynamic nationalIdentityNo,
    int? addressType,
    String? userFrom,
    String? imagePath,
    String? otpCode,
    int? isVarified,
    dynamic isActive,
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

  ApplicationUser.fromJson(dynamic json) {
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
  dynamic _nationalIdentityNo;
  int? _addressType;
  String? _userFrom;
  String? _imagePath;
  String? _otpCode;
  int? _isVarified;
  dynamic _isActive;
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
  dynamic get nationalIdentityNo => _nationalIdentityNo;
  int? get addressType => _addressType;
  String? get userFrom => _userFrom;
  String? get imagePath => _imagePath;
  String? get otpCode => _otpCode;
  int? get isVarified => _isVarified;
  dynamic get isActive => _isActive;
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

class VehicleBrand {
  VehicleBrand({
    int? vehicleTypeId,
    dynamic vehicleType,
    String? modelName,
    String? modelNameBn,
    String? imagePath,
    dynamic shortOrder,
    int? id,
    dynamic isDelete,
    String? createdAt,
    String? updatedAt,
    String? createdBy,
    String? updatedBy,}){
    _vehicleTypeId = vehicleTypeId;
    _vehicleType = vehicleType;
    _modelName = modelName;
    _modelNameBn = modelNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
  }

  VehicleBrand.fromJson(dynamic json) {
    _vehicleTypeId = json['vehicleTypeId'];
    _vehicleType = json['vehicleType'];
    _modelName = json['modelName'];
    _modelNameBn = json['modelNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  int? _vehicleTypeId;
  dynamic _vehicleType;
  String? _modelName;
  String? _modelNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  int? get vehicleTypeId => _vehicleTypeId;
  dynamic get vehicleType => _vehicleType;
  String? get modelName => _modelName;
  String? get modelNameBn => _modelNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  String? get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['vehicleTypeId'] = _vehicleTypeId;
    map['vehicleType'] = _vehicleType;
    map['modelName'] = _modelName;
    map['modelNameBn'] = _modelNameBn;
    map['imagePath'] = _imagePath;
    map['shortOrder'] = _shortOrder;
    map['Id'] = _id;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    return map;
  }

}

class VehicleType {
  VehicleType({
    String? vehicleTypeName,
    String? vehicleTypeNameBn,
    String? imagePath,
    dynamic shortOrder,
    int? id,
    dynamic isDelete,
    String? createdAt,
    String? updatedAt,
    String? createdBy,
    String? updatedBy,}){
    _vehicleTypeName = vehicleTypeName;
    _vehicleTypeNameBn = vehicleTypeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
  }

  VehicleType.fromJson(dynamic json) {
    _vehicleTypeName = json['vehicleTypeName'];
    _vehicleTypeNameBn = json['vehicleTypeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _vehicleTypeName;
  String? _vehicleTypeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  String? get vehicleTypeName => _vehicleTypeName;
  String? get vehicleTypeNameBn => _vehicleTypeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  String? get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['vehicleTypeName'] = _vehicleTypeName;
    map['vehicleTypeNameBn'] = _vehicleTypeNameBn;
    map['imagePath'] = _imagePath;
    map['shortOrder'] = _shortOrder;
    map['Id'] = _id;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    return map;
  }

}

class IndentifyInfo {
  IndentifyInfo({
    int? gDInformationId,
    int? colorsId,
    dynamic colors,
    dynamic assitanceColorId,
    dynamic assitanceColor,
    String? identifySign,
    dynamic identifyType,
    dynamic religionId,
    dynamic religion,
    dynamic bloodGroup,
    dynamic occupationId,
    dynamic occupation,
    dynamic maritalStatusId,
    dynamic maritalStatus,
    String? attachmentPath,
    dynamic descriptionCircumcisionId,
    int? id,
    dynamic isDelete,
    String? createdAt,
    String? updatedAt,
    String? createdBy,
    String? updatedBy,}){
    _gDInformationId = gDInformationId;
    _colorsId = colorsId;
    _colors = colors;
    _assitanceColorId = assitanceColorId;
    _assitanceColor = assitanceColor;
    _identifySign = identifySign;
    _identifyType = identifyType;
    _religionId = religionId;
    _religion = religion;
    _bloodGroup = bloodGroup;
    _occupationId = occupationId;
    _occupation = occupation;
    _maritalStatusId = maritalStatusId;
    _maritalStatus = maritalStatus;
    _attachmentPath = attachmentPath;
    _descriptionCircumcisionId = descriptionCircumcisionId;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
  }

  IndentifyInfo.fromJson(dynamic json) {
    _gDInformationId = json['gDInformationId'];
    _colorsId = json['colorsId'];
    _colors = json['colors'];
    _assitanceColorId = json['assitanceColorId'];
    _assitanceColor = json['assitanceColor'];
    _identifySign = json['identifySign'];
    _identifyType = json['identifyType'];
    _religionId = json['religionId'];
    _religion = json['religion'];
    _bloodGroup = json['bloodGroup'];
    _occupationId = json['occupationId'];
    _occupation = json['occupation'];
    _maritalStatusId = json['maritalStatusId'];
    _maritalStatus = json['maritalStatus'];
    _attachmentPath = json['attachmentPath'];
    _descriptionCircumcisionId = json['descriptionCircumcisionId'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  int? _gDInformationId;
  int? _colorsId;
  dynamic _colors;
  dynamic _assitanceColorId;
  dynamic _assitanceColor;
  String? _identifySign;
  dynamic _identifyType;
  dynamic _religionId;
  dynamic _religion;
  dynamic _bloodGroup;
  dynamic _occupationId;
  dynamic _occupation;
  dynamic _maritalStatusId;
  dynamic _maritalStatus;
  String? _attachmentPath;
  dynamic _descriptionCircumcisionId;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  int? get gDInformationId => _gDInformationId;
  int? get colorsId => _colorsId;
  dynamic get colors => _colors;
  dynamic get assitanceColorId => _assitanceColorId;
  dynamic get assitanceColor => _assitanceColor;
  String? get identifySign => _identifySign;
  dynamic get identifyType => _identifyType;
  dynamic get religionId => _religionId;
  dynamic get religion => _religion;
  dynamic get bloodGroup => _bloodGroup;
  dynamic get occupationId => _occupationId;
  dynamic get occupation => _occupation;
  dynamic get maritalStatusId => _maritalStatusId;
  dynamic get maritalStatus => _maritalStatus;
  String? get attachmentPath => _attachmentPath;
  dynamic get descriptionCircumcisionId => _descriptionCircumcisionId;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  String? get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['gDInformationId'] = _gDInformationId;
    map['colorsId'] = _colorsId;
    map['colors'] = _colors;
    map['assitanceColorId'] = _assitanceColorId;
    map['assitanceColor'] = _assitanceColor;
    map['identifySign'] = _identifySign;
    map['identifyType'] = _identifyType;
    map['religionId'] = _religionId;
    map['religion'] = _religion;
    map['bloodGroup'] = _bloodGroup;
    map['occupationId'] = _occupationId;
    map['occupation'] = _occupation;
    map['maritalStatusId'] = _maritalStatusId;
    map['maritalStatus'] = _maritalStatus;
    map['attachmentPath'] = _attachmentPath;
    map['descriptionCircumcisionId'] = _descriptionCircumcisionId;
    map['Id'] = _id;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    return map;
  }

}

