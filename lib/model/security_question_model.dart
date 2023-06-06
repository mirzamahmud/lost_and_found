/// id : null
/// type : null
/// expiredate : null
/// countryId : null
/// nationalId : null
/// typeOfVisa : null
/// districtId : null
/// thanaId : null
/// unionId : null
/// villageId : null
/// village : null
/// addressLine : null
/// postCode : null
/// mobileNumber : null
/// mobileOperator : null
/// filterType : null
/// email : null
/// password : null
/// dob : null
/// confirmPassword : null
/// imagePath : null
/// otpNumber : null
/// fullName : null
/// secuirityQuestionId : null
/// secuirityQuestionAns : null
/// secuirityQuestionId2 : null
/// formFile : null
/// formFile1 : null
/// secuirityQuestionAns2 : null
/// districts : null
/// thanas : null
/// countries : null
/// securityQuestions : [{"questionName":"What's your childhood nick name?","questionNameBn":"আপনার ছোট বেলার ডাক নাম কি ছিলো?","shortOrder":1,"Id":1,"isDelete":null,"createdAt":null,"updatedAt":null,"createdBy":null,"updatedBy":null},{"questionName":"what's your fevourite movie?","questionNameBn":"আপনার প্রিয় চলচ্চিত্রের নাম কি?","shortOrder":3,"Id":3,"isDelete":null,"createdAt":null,"updatedAt":null,"createdBy":null,"updatedBy":null},{"questionName":"how much your first salary?","questionNameBn":"আপনার প্রথম বেতন কত?","shortOrder":4,"Id":4,"isDelete":null,"createdAt":null,"updatedAt":null,"createdBy":null,"updatedBy":null},{"questionName":"In what year was your father born?","questionNameBn":"আপনার বাবা কোন সালে জন্মগ্রহণ করেন?","shortOrder":null,"Id":6,"isDelete":null,"createdAt":"2020-09-24T14:23:39.4059289","updatedAt":null,"createdBy":"01516146413","updatedBy":null},{"questionName":"What is your favorite sport?","questionNameBn":"আপনার প্রিয় খেলাধুলা কি?","shortOrder":null,"Id":9,"isDelete":null,"createdAt":"2020-09-24T14:26:06.9187302","updatedAt":null,"createdBy":"01516146413","updatedBy":null}]
/// securityQuestions2 : [{"questionName":"In what year was your mother born?","questionNameBn":"আপনার মা কোন সালে জন্মগ্রহণ করেন?","shortOrder":null,"Id":11,"isDelete":null,"createdAt":"2020-11-29T15:53:39.9085091","updatedAt":null,"createdBy":"8708120435","updatedBy":null},{"questionName":"What Is your favorite book?","questionNameBn":"আপনার প্রিয় বই কি?","shortOrder":null,"Id":12,"isDelete":null,"createdAt":"2020-11-29T15:54:35.4427441","updatedAt":null,"createdBy":"8708120435","updatedBy":null},{"questionName":"When is your anniversary?","questionNameBn":"আপনার বিবাহ বার্ষিকী কবে?","shortOrder":null,"Id":13,"isDelete":null,"createdAt":"2020-11-29T15:56:18.6583658","updatedAt":null,"createdBy":"8708120435","updatedBy":null},{"questionName":"What are the last 5 digits of your credit/debit card?","questionNameBn":"আপনার ক্রেডিট/ডেবিট কার্ডের শেষ ৫ সংখ্যাগুলি কী? ","shortOrder":null,"Id":15,"isDelete":null,"createdAt":"2020-11-29T16:04:21.2169886","updatedAt":null,"createdBy":"8708120435","updatedBy":null},{"questionName":"What are the last 5 digits of your driving license number?","questionNameBn":"আপনার ড্রাইভিং লাইসেন্স নম্বরের শেষ ৫ টি সংখ্যাগুলি কী?","shortOrder":null,"Id":17,"isDelete":null,"createdAt":"2020-11-29T16:10:51.7747653","updatedAt":null,"createdBy":"8708120435","updatedBy":null}]
/// Lang : null

class SecurityQuestionModel {
  SecurityQuestionModel({
      dynamic id, 
      dynamic type, 
      dynamic expiredate, 
      dynamic countryId, 
      dynamic nationalId, 
      dynamic typeOfVisa, 
      dynamic districtId, 
      dynamic thanaId, 
      dynamic unionId, 
      dynamic villageId, 
      dynamic village, 
      dynamic addressLine, 
      dynamic postCode, 
      dynamic mobileNumber, 
      dynamic mobileOperator, 
      dynamic filterType, 
      dynamic email, 
      dynamic password, 
      dynamic dob, 
      dynamic confirmPassword, 
      dynamic imagePath, 
      dynamic otpNumber, 
      dynamic fullName, 
      dynamic secuirityQuestionId, 
      dynamic secuirityQuestionAns, 
      dynamic secuirityQuestionId2, 
      dynamic formFile, 
      dynamic formFile1, 
      dynamic secuirityQuestionAns2, 
      dynamic districts, 
      dynamic thanas, 
      dynamic countries, 
      List<SecurityQuestions>? securityQuestions, 
      List<SecurityQuestions2>? securityQuestions2, 
      dynamic lang,}){
    _id = id;
    _type = type;
    _expiredate = expiredate;
    _countryId = countryId;
    _nationalId = nationalId;
    _typeOfVisa = typeOfVisa;
    _districtId = districtId;
    _thanaId = thanaId;
    _unionId = unionId;
    _villageId = villageId;
    _village = village;
    _addressLine = addressLine;
    _postCode = postCode;
    _mobileNumber = mobileNumber;
    _mobileOperator = mobileOperator;
    _filterType = filterType;
    _email = email;
    _password = password;
    _dob = dob;
    _confirmPassword = confirmPassword;
    _imagePath = imagePath;
    _otpNumber = otpNumber;
    _fullName = fullName;
    _secuirityQuestionId = secuirityQuestionId;
    _secuirityQuestionAns = secuirityQuestionAns;
    _secuirityQuestionId2 = secuirityQuestionId2;
    _formFile = formFile;
    _formFile1 = formFile1;
    _secuirityQuestionAns2 = secuirityQuestionAns2;
    _districts = districts;
    _thanas = thanas;
    _countries = countries;
    _securityQuestions = securityQuestions;
    _securityQuestions2 = securityQuestions2;
    _lang = lang;
}

  SecurityQuestionModel.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _expiredate = json['expiredate'];
    _countryId = json['countryId'];
    _nationalId = json['nationalId'];
    _typeOfVisa = json['typeOfVisa'];
    _districtId = json['districtId'];
    _thanaId = json['thanaId'];
    _unionId = json['unionId'];
    _villageId = json['villageId'];
    _village = json['village'];
    _addressLine = json['addressLine'];
    _postCode = json['postCode'];
    _mobileNumber = json['mobileNumber'];
    _mobileOperator = json['mobileOperator'];
    _filterType = json['filterType'];
    _email = json['email'];
    _password = json['password'];
    _dob = json['dob'];
    _confirmPassword = json['confirmPassword'];
    _imagePath = json['imagePath'];
    _otpNumber = json['otpNumber'];
    _fullName = json['fullName'];
    _secuirityQuestionId = json['secuirityQuestionId'];
    _secuirityQuestionAns = json['secuirityQuestionAns'];
    _secuirityQuestionId2 = json['secuirityQuestionId2'];
    _formFile = json['formFile'];
    _formFile1 = json['formFile1'];
    _secuirityQuestionAns2 = json['secuirityQuestionAns2'];
    _districts = json['districts'];
    _thanas = json['thanas'];
    _countries = json['countries'];
    if (json['securityQuestions'] != null) {
      _securityQuestions = [];
      json['securityQuestions'].forEach((v) {
        _securityQuestions?.add(SecurityQuestions.fromJson(v));
      });
    }
    if (json['securityQuestions2'] != null) {
      _securityQuestions2 = [];
      json['securityQuestions2'].forEach((v) {
        _securityQuestions2?.add(SecurityQuestions2.fromJson(v));
      });
    }
    _lang = json['Lang'];
  }
  dynamic _id;
  dynamic _type;
  dynamic _expiredate;
  dynamic _countryId;
  dynamic _nationalId;
  dynamic _typeOfVisa;
  dynamic _districtId;
  dynamic _thanaId;
  dynamic _unionId;
  dynamic _villageId;
  dynamic _village;
  dynamic _addressLine;
  dynamic _postCode;
  dynamic _mobileNumber;
  dynamic _mobileOperator;
  dynamic _filterType;
  dynamic _email;
  dynamic _password;
  dynamic _dob;
  dynamic _confirmPassword;
  dynamic _imagePath;
  dynamic _otpNumber;
  dynamic _fullName;
  dynamic _secuirityQuestionId;
  dynamic _secuirityQuestionAns;
  dynamic _secuirityQuestionId2;
  dynamic _formFile;
  dynamic _formFile1;
  dynamic _secuirityQuestionAns2;
  dynamic _districts;
  dynamic _thanas;
  dynamic _countries;
  List<SecurityQuestions>? _securityQuestions;
  List<SecurityQuestions2>? _securityQuestions2;
  dynamic _lang;

  dynamic get id => _id;
  dynamic get type => _type;
  dynamic get expiredate => _expiredate;
  dynamic get countryId => _countryId;
  dynamic get nationalId => _nationalId;
  dynamic get typeOfVisa => _typeOfVisa;
  dynamic get districtId => _districtId;
  dynamic get thanaId => _thanaId;
  dynamic get unionId => _unionId;
  dynamic get villageId => _villageId;
  dynamic get village => _village;
  dynamic get addressLine => _addressLine;
  dynamic get postCode => _postCode;
  dynamic get mobileNumber => _mobileNumber;
  dynamic get mobileOperator => _mobileOperator;
  dynamic get filterType => _filterType;
  dynamic get email => _email;
  dynamic get password => _password;
  dynamic get dob => _dob;
  dynamic get confirmPassword => _confirmPassword;
  dynamic get imagePath => _imagePath;
  dynamic get otpNumber => _otpNumber;
  dynamic get fullName => _fullName;
  dynamic get secuirityQuestionId => _secuirityQuestionId;
  dynamic get secuirityQuestionAns => _secuirityQuestionAns;
  dynamic get secuirityQuestionId2 => _secuirityQuestionId2;
  dynamic get formFile => _formFile;
  dynamic get formFile1 => _formFile1;
  dynamic get secuirityQuestionAns2 => _secuirityQuestionAns2;
  dynamic get districts => _districts;
  dynamic get thanas => _thanas;
  dynamic get countries => _countries;
  List<SecurityQuestions>? get securityQuestions => _securityQuestions;
  List<SecurityQuestions2>? get securityQuestions2 => _securityQuestions2;
  dynamic get lang => _lang;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    map['expiredate'] = _expiredate;
    map['countryId'] = _countryId;
    map['nationalId'] = _nationalId;
    map['typeOfVisa'] = _typeOfVisa;
    map['districtId'] = _districtId;
    map['thanaId'] = _thanaId;
    map['unionId'] = _unionId;
    map['villageId'] = _villageId;
    map['village'] = _village;
    map['addressLine'] = _addressLine;
    map['postCode'] = _postCode;
    map['mobileNumber'] = _mobileNumber;
    map['mobileOperator'] = _mobileOperator;
    map['filterType'] = _filterType;
    map['email'] = _email;
    map['password'] = _password;
    map['dob'] = _dob;
    map['confirmPassword'] = _confirmPassword;
    map['imagePath'] = _imagePath;
    map['otpNumber'] = _otpNumber;
    map['fullName'] = _fullName;
    map['secuirityQuestionId'] = _secuirityQuestionId;
    map['secuirityQuestionAns'] = _secuirityQuestionAns;
    map['secuirityQuestionId2'] = _secuirityQuestionId2;
    map['formFile'] = _formFile;
    map['formFile1'] = _formFile1;
    map['secuirityQuestionAns2'] = _secuirityQuestionAns2;
    map['districts'] = _districts;
    map['thanas'] = _thanas;
    map['countries'] = _countries;
    if (_securityQuestions != null) {
      map['securityQuestions'] = _securityQuestions?.map((v) => v.toJson()).toList();
    }
    if (_securityQuestions2 != null) {
      map['securityQuestions2'] = _securityQuestions2?.map((v) => v.toJson()).toList();
    }
    map['Lang'] = _lang;
    return map;
  }

}

/// questionName : "In what year was your mother born?"
/// questionNameBn : "আপনার মা কোন সালে জন্মগ্রহণ করেন?"
/// shortOrder : null
/// Id : 11
/// isDelete : null
/// createdAt : "2020-11-29T15:53:39.9085091"
/// updatedAt : null
/// createdBy : "8708120435"
/// updatedBy : null

class SecurityQuestions2 {
  SecurityQuestions2({
      String? questionName, 
      String? questionNameBn, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _questionName = questionName;
    _questionNameBn = questionNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  SecurityQuestions2.fromJson(dynamic json) {
    _questionName = json['questionName'];
    _questionNameBn = json['questionNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _questionName;
  String? _questionNameBn;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get questionName => _questionName;
  String? get questionNameBn => _questionNameBn;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['questionName'] = _questionName;
    map['questionNameBn'] = _questionNameBn;
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

/// questionName : "What's your childhood nick name?"
/// questionNameBn : "আপনার ছোট বেলার ডাক নাম কি ছিলো?"
/// shortOrder : 1
/// Id : 1
/// isDelete : null
/// createdAt : null
/// updatedAt : null
/// createdBy : null
/// updatedBy : null

class SecurityQuestions {
  SecurityQuestions({
      String? questionName, 
      String? questionNameBn, 
      int? shortOrder, 
      int? id, 
      dynamic isDelete, 
      dynamic createdAt, 
      dynamic updatedAt, 
      dynamic createdBy, 
      dynamic updatedBy,}){
    _questionName = questionName;
    _questionNameBn = questionNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  SecurityQuestions.fromJson(dynamic json) {
    _questionName = json['questionName'];
    _questionNameBn = json['questionNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _questionName;
  String? _questionNameBn;
  int? _shortOrder;
  int? _id;
  dynamic _isDelete;
  dynamic _createdAt;
  dynamic _updatedAt;
  dynamic _createdBy;
  dynamic _updatedBy;

  String? get questionName => _questionName;
  String? get questionNameBn => _questionNameBn;
  int? get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['questionName'] = _questionName;
    map['questionNameBn'] = _questionNameBn;
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