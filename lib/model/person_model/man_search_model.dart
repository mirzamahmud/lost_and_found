class ManSearchModel {
  ManSearchModel({
      ManInformation? manInformation, 
      dynamic physicalDescription, 
      dynamic dressDescription, 
      dynamic indentifyInfo, 
      dynamic attachmentInformation, 
      dynamic addressInformation, 
      dynamic manHabitDetails, 
      dynamic manSpeechDetails,}){
    _manInformation = manInformation;
    _physicalDescription = physicalDescription;
    _dressDescription = dressDescription;
    _indentifyInfo = indentifyInfo;
    _attachmentInformation = attachmentInformation;
    _addressInformation = addressInformation;
    _manHabitDetails = manHabitDetails;
    _manSpeechDetails = manSpeechDetails;
}

  ManSearchModel.fromJson(dynamic json) {
    _manInformation = json['manInformation'] != null ? ManInformation.fromJson(json['manInformation']) : null;
    _physicalDescription = json['physicalDescription'];
    _dressDescription = json['dressDescription'];
    _indentifyInfo = json['indentifyInfo'];
    _attachmentInformation = json['attachmentInformation'];
    _addressInformation = json['addressInformation'];
    _manHabitDetails = json['manHabitDetails'];
    _manSpeechDetails = json['manSpeechDetails'];
  }
  ManInformation? _manInformation;
  dynamic _physicalDescription;
  dynamic _dressDescription;
  dynamic _indentifyInfo;
  dynamic _attachmentInformation;
  dynamic _addressInformation;
  dynamic _manHabitDetails;
  dynamic _manSpeechDetails;

  ManInformation? get manInformation => _manInformation;
  dynamic get physicalDescription => _physicalDescription;
  dynamic get dressDescription => _dressDescription;
  dynamic get indentifyInfo => _indentifyInfo;
  dynamic get attachmentInformation => _attachmentInformation;
  dynamic get addressInformation => _addressInformation;
  dynamic get manHabitDetails => _manHabitDetails;
  dynamic get manSpeechDetails => _manSpeechDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_manInformation != null) {
      map['manInformation'] = _manInformation?.toJson();
    }
    map['physicalDescription'] = _physicalDescription;
    map['dressDescription'] = _dressDescription;
    map['indentifyInfo'] = _indentifyInfo;
    map['attachmentInformation'] = _attachmentInformation;
    map['addressInformation'] = _addressInformation;
    map['manHabitDetails'] = _manHabitDetails;
    map['manSpeechDetails'] = _manSpeechDetails;
    return map;
  }

}

class ManInformation {
  ManInformation({
      int? gDInformationId, 
      GdInformation? gDInformation, 
      dynamic relationTypeId, 
      dynamic relationType, 
      dynamic name, 
      dynamic aproxAge, 
      dynamic agePeriodId, 
      dynamic agePeriod, 
      dynamic genderId, 
      dynamic gender, 
      dynamic isHealthDisabled, 
      dynamic fatherName, 
      dynamic motherName, 
      dynamic spouseName, 
      dynamic nationalIdentityTypeId, 
      dynamic nationalIdentityType, 
      dynamic identityNo, 
      dynamic numberTypeId, 
      dynamic numberType, 
      dynamic number, 
      dynamic dateOfDeath, 
      dynamic deadbodyConditionId, 
      dynamic deadbodyCondition, 
      dynamic status, 
      dynamic physicalDescription, 
      dynamic dressDescription, 
      dynamic indentifyInfo, 
      dynamic spaceAndTime, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _gDInformationId = gDInformationId;
    _gDInformation = gDInformation;
    _relationTypeId = relationTypeId;
    _relationType = relationType;
    _name = name;
    _aproxAge = aproxAge;
    _agePeriodId = agePeriodId;
    _agePeriod = agePeriod;
    _genderId = genderId;
    _gender = gender;
    _isHealthDisabled = isHealthDisabled;
    _fatherName = fatherName;
    _motherName = motherName;
    _spouseName = spouseName;
    _nationalIdentityTypeId = nationalIdentityTypeId;
    _nationalIdentityType = nationalIdentityType;
    _identityNo = identityNo;
    _numberTypeId = numberTypeId;
    _numberType = numberType;
    _number = number;
    _dateOfDeath = dateOfDeath;
    _deadbodyConditionId = deadbodyConditionId;
    _deadbodyCondition = deadbodyCondition;
    _status = status;
    _physicalDescription = physicalDescription;
    _dressDescription = dressDescription;
    _indentifyInfo = indentifyInfo;
    _spaceAndTime = spaceAndTime;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  ManInformation.fromJson(dynamic json) {
    _gDInformationId = json['gDInformationId'];
    _gDInformation = json['gDInformation'] != null ? GdInformation.fromJson(json['gDInformation']) : null;
    _relationTypeId = json['relationTypeId'];
    _relationType = json['relationType'];
    _name = json['name'];
    _aproxAge = json['aproxAge'];
    _agePeriodId = json['agePeriodId'];
    _agePeriod = json['agePeriod'];
    _genderId = json['genderId'];
    _gender = json['gender'];
    _isHealthDisabled = json['isHealthDisabled'];
    _fatherName = json['fatherName'];
    _motherName = json['motherName'];
    _spouseName = json['spouseName'];
    _nationalIdentityTypeId = json['nationalIdentityTypeId'];
    _nationalIdentityType = json['nationalIdentityType'];
    _identityNo = json['identityNo'];
    _numberTypeId = json['numberTypeId'];
    _numberType = json['numberType'];
    _number = json['number'];
    _dateOfDeath = json['dateOfDeath'];
    _deadbodyConditionId = json['deadbodyConditionId'];
    _deadbodyCondition = json['deadbodyCondition'];
    _status = json['status'];
    _physicalDescription = json['physicalDescription'];
    _dressDescription = json['dressDescription'];
    _indentifyInfo = json['indentifyInfo'];
    _spaceAndTime = json['spaceAndTime'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  int? _gDInformationId;
  GdInformation? _gDInformation;
  dynamic _relationTypeId;
  dynamic _relationType;
  dynamic _name;
  dynamic _aproxAge;
  dynamic _agePeriodId;
  dynamic _agePeriod;
  dynamic _genderId;
  dynamic _gender;
  dynamic _isHealthDisabled;
  dynamic _fatherName;
  dynamic _motherName;
  dynamic _spouseName;
  dynamic _nationalIdentityTypeId;
  dynamic _nationalIdentityType;
  dynamic _identityNo;
  dynamic _numberTypeId;
  dynamic _numberType;
  dynamic _number;
  dynamic _dateOfDeath;
  dynamic _deadbodyConditionId;
  dynamic _deadbodyCondition;
  dynamic _status;
  dynamic _physicalDescription;
  dynamic _dressDescription;
  dynamic _indentifyInfo;
  dynamic _spaceAndTime;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  int? get gDInformationId => _gDInformationId;
  GdInformation? get gDInformation => _gDInformation;
  dynamic get relationTypeId => _relationTypeId;
  dynamic get relationType => _relationType;
  dynamic get name => _name;
  dynamic get aproxAge => _aproxAge;
  dynamic get agePeriodId => _agePeriodId;
  dynamic get agePeriod => _agePeriod;
  dynamic get genderId => _genderId;
  dynamic get gender => _gender;
  dynamic get isHealthDisabled => _isHealthDisabled;
  dynamic get fatherName => _fatherName;
  dynamic get motherName => _motherName;
  dynamic get spouseName => _spouseName;
  dynamic get nationalIdentityTypeId => _nationalIdentityTypeId;
  dynamic get nationalIdentityType => _nationalIdentityType;
  dynamic get identityNo => _identityNo;
  dynamic get numberTypeId => _numberTypeId;
  dynamic get numberType => _numberType;
  dynamic get number => _number;
  dynamic get dateOfDeath => _dateOfDeath;
  dynamic get deadbodyConditionId => _deadbodyConditionId;
  dynamic get deadbodyCondition => _deadbodyCondition;
  dynamic get status => _status;
  dynamic get physicalDescription => _physicalDescription;
  dynamic get dressDescription => _dressDescription;
  dynamic get indentifyInfo => _indentifyInfo;
  dynamic get spaceAndTime => _spaceAndTime;
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
    map['relationTypeId'] = _relationTypeId;
    map['relationType'] = _relationType;
    map['name'] = _name;
    map['aproxAge'] = _aproxAge;
    map['agePeriodId'] = _agePeriodId;
    map['agePeriod'] = _agePeriod;
    map['genderId'] = _genderId;
    map['gender'] = _gender;
    map['isHealthDisabled'] = _isHealthDisabled;
    map['fatherName'] = _fatherName;
    map['motherName'] = _motherName;
    map['spouseName'] = _spouseName;
    map['nationalIdentityTypeId'] = _nationalIdentityTypeId;
    map['nationalIdentityType'] = _nationalIdentityType;
    map['identityNo'] = _identityNo;
    map['numberTypeId'] = _numberTypeId;
    map['numberType'] = _numberType;
    map['number'] = _number;
    map['dateOfDeath'] = _dateOfDeath;
    map['deadbodyConditionId'] = _deadbodyConditionId;
    map['deadbodyCondition'] = _deadbodyCondition;
    map['status'] = _status;
    map['physicalDescription'] = _physicalDescription;
    map['dressDescription'] = _dressDescription;
    map['indentifyInfo'] = _indentifyInfo;
    map['spaceAndTime'] = _spaceAndTime;
    map['Id'] = _id;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    return map;
  }

}

class GdInformation {
  GdInformation({
      String? applicationUserId, 
      dynamic applicationUser, 
      String? gdFor, 
      String? gdDate, 
      String? gdNumber, 
      int? productTypeId, 
      dynamic productType, 
      int? gDTypeId, 
      dynamic gDType, 
      dynamic documentTypeId, 
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

  GdInformation.fromJson(dynamic json) {
    _applicationUserId = json['ApplicationUserId'];
    _applicationUser = json['ApplicationUser'];
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
  dynamic _applicationUser;
  String? _gdFor;
  String? _gdDate;
  String? _gdNumber;
  int? _productTypeId;
  dynamic _productType;
  int? _gDTypeId;
  dynamic _gDType;
  dynamic _documentTypeId;
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
  dynamic get applicationUser => _applicationUser;
  String? get gdFor => _gdFor;
  String? get gdDate => _gdDate;
  String? get gdNumber => _gdNumber;
  int? get productTypeId => _productTypeId;
  dynamic get productType => _productType;
  int? get gDTypeId => _gDTypeId;
  dynamic get gDType => _gDType;
  dynamic get documentTypeId => _documentTypeId;
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
    map['ApplicationUser'] = _applicationUser;
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