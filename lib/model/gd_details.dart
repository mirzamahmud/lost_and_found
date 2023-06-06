/// gdOwnerInfoId : null
/// gdOwnerInfo : null
/// nationalIdNumber : null
/// trackingNo : "L2AQMC"
/// gdNumber : null
/// gdTypeId : 3
/// gdType : {"gdTypeName":"Sumggle","gdTypeNameBn":"চুরি","shortOrder":null,"Id":3,"isDelete":null,"createdAt":"2020-04-11T12:14:02.348854","updatedAt":"2022-01-22T13:24:25.7246804","createdBy":"suza","updatedBy":"7806102686"}
/// date : "2020-11-26T12:34:02.7404926"
/// gdStatusId : 1
/// gdStatus : {"statusName":"নতুন জি ডি ","Id":1,"isDelete":null,"createdAt":null,"updatedAt":null,"createdBy":null,"updatedBy":null}
/// thanaActivityTypeId : null
/// thanaActivityType : null
/// lawInformationId : null
/// lawInformation : null
/// lawSectionInformationId : null
/// lawSectionInformation : null
/// CaseDate : null
/// storyfullDescription : "dsds"
/// cancelDescription : null
/// gDInformationId : 3302
/// gDInformation : null
/// transferthanaId : null
/// transferthana : null
/// transferdistrictId : null
/// transferdistrict : null
/// description : "Bags"
/// investigationdescription : null
/// suggestedinvestigator : null
/// investigator : null
/// dutyOfficer : null
/// OfficerIncharge : null
/// investigationdate : null
/// investigationStartDescription : null
/// investigationReportDescription : null
/// Id : 2577
/// isDelete : null
/// createdAt : "2020-11-26T12:34:02.7411271"
/// updatedAt : null
/// createdBy : "01703989646"
/// updatedBy : null

class GdDetails {
  GdDetails({
      dynamic gdOwnerInfoId, 
      dynamic gdOwnerInfo, 
      dynamic nationalIdNumber, 
      String? trackingNo, 
      dynamic gdNumber, 
      int? gdTypeId, 
      GdType? gdType, 
      String? date, 
      int? gdStatusId, 
      GdStatus? gdStatus, 
      dynamic thanaActivityTypeId, 
      dynamic thanaActivityType, 
      dynamic lawInformationId, 
      dynamic lawInformation, 
      dynamic lawSectionInformationId, 
      dynamic lawSectionInformation, 
      dynamic caseDate, 
      String? storyfullDescription, 
      dynamic cancelDescription, 
      int? gDInformationId, 
      dynamic gDInformation, 
      dynamic transferthanaId, 
      dynamic transferthana, 
      dynamic transferdistrictId, 
      dynamic transferdistrict, 
      String? description, 
      dynamic investigationdescription, 
      dynamic suggestedinvestigator, 
      dynamic investigator, 
      dynamic dutyOfficer, 
      dynamic officerIncharge, 
      dynamic investigationdate, 
      dynamic investigationStartDescription, 
      dynamic investigationReportDescription, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _gdOwnerInfoId = gdOwnerInfoId;
    _gdOwnerInfo = gdOwnerInfo;
    _nationalIdNumber = nationalIdNumber;
    _trackingNo = trackingNo;
    _gdNumber = gdNumber;
    _gdTypeId = gdTypeId;
    _gdType = gdType;
    _date = date;
    _gdStatusId = gdStatusId;
    _gdStatus = gdStatus;
    _thanaActivityTypeId = thanaActivityTypeId;
    _thanaActivityType = thanaActivityType;
    _lawInformationId = lawInformationId;
    _lawInformation = lawInformation;
    _lawSectionInformationId = lawSectionInformationId;
    _lawSectionInformation = lawSectionInformation;
    _caseDate = caseDate;
    _storyfullDescription = storyfullDescription;
    _cancelDescription = cancelDescription;
    _gDInformationId = gDInformationId;
    _gDInformation = gDInformation;
    _transferthanaId = transferthanaId;
    _transferthana = transferthana;
    _transferdistrictId = transferdistrictId;
    _transferdistrict = transferdistrict;
    _description = description;
    _investigationdescription = investigationdescription;
    _suggestedinvestigator = suggestedinvestigator;
    _investigator = investigator;
    _dutyOfficer = dutyOfficer;
    _officerIncharge = officerIncharge;
    _investigationdate = investigationdate;
    _investigationStartDescription = investigationStartDescription;
    _investigationReportDescription = investigationReportDescription;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  GdDetails.fromJson(dynamic json) {
    _gdOwnerInfoId = json['gdOwnerInfoId'];
    _gdOwnerInfo = json['gdOwnerInfo'];
    _nationalIdNumber = json['nationalIdNumber'];
    _trackingNo = json['trackingNo'];
    _gdNumber = json['gdNumber'];
    _gdTypeId = json['gdTypeId'];
    _gdType = json['gdType'] != null ? GdType.fromJson(json['gdType']) : null;
    _date = json['date'];
    _gdStatusId = json['gdStatusId'];
    _gdStatus = json['gdStatus'] != null ? GdStatus.fromJson(json['gdStatus']) : null;
    _thanaActivityTypeId = json['thanaActivityTypeId'];
    _thanaActivityType = json['thanaActivityType'];
    _lawInformationId = json['lawInformationId'];
    _lawInformation = json['lawInformation'];
    _lawSectionInformationId = json['lawSectionInformationId'];
    _lawSectionInformation = json['lawSectionInformation'];
    _caseDate = json['CaseDate'];
    _storyfullDescription = json['storyfullDescription'];
    _cancelDescription = json['cancelDescription'];
    _gDInformationId = json['gDInformationId'];
    _gDInformation = json['gDInformation'];
    _transferthanaId = json['transferthanaId'];
    _transferthana = json['transferthana'];
    _transferdistrictId = json['transferdistrictId'];
    _transferdistrict = json['transferdistrict'];
    _description = json['description'];
    _investigationdescription = json['investigationdescription'];
    _suggestedinvestigator = json['suggestedinvestigator'];
    _investigator = json['investigator'];
    _dutyOfficer = json['dutyOfficer'];
    _officerIncharge = json['OfficerIncharge'];
    _investigationdate = json['investigationdate'];
    _investigationStartDescription = json['investigationStartDescription'];
    _investigationReportDescription = json['investigationReportDescription'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  dynamic _gdOwnerInfoId;
  dynamic _gdOwnerInfo;
  dynamic _nationalIdNumber;
  String? _trackingNo;
  dynamic _gdNumber;
  int? _gdTypeId;
  GdType? _gdType;
  String? _date;
  int? _gdStatusId;
  GdStatus? _gdStatus;
  dynamic _thanaActivityTypeId;
  dynamic _thanaActivityType;
  dynamic _lawInformationId;
  dynamic _lawInformation;
  dynamic _lawSectionInformationId;
  dynamic _lawSectionInformation;
  dynamic _caseDate;
  String? _storyfullDescription;
  dynamic _cancelDescription;
  int? _gDInformationId;
  dynamic _gDInformation;
  dynamic _transferthanaId;
  dynamic _transferthana;
  dynamic _transferdistrictId;
  dynamic _transferdistrict;
  String? _description;
  dynamic _investigationdescription;
  dynamic _suggestedinvestigator;
  dynamic _investigator;
  dynamic _dutyOfficer;
  dynamic _officerIncharge;
  dynamic _investigationdate;
  dynamic _investigationStartDescription;
  dynamic _investigationReportDescription;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  dynamic get gdOwnerInfoId => _gdOwnerInfoId;
  dynamic get gdOwnerInfo => _gdOwnerInfo;
  dynamic get nationalIdNumber => _nationalIdNumber;
  String? get trackingNo => _trackingNo;
  dynamic get gdNumber => _gdNumber;
  int? get gdTypeId => _gdTypeId;
  GdType? get gdType => _gdType;
  String? get date => _date;
  int? get gdStatusId => _gdStatusId;
  GdStatus? get gdStatus => _gdStatus;
  dynamic get thanaActivityTypeId => _thanaActivityTypeId;
  dynamic get thanaActivityType => _thanaActivityType;
  dynamic get lawInformationId => _lawInformationId;
  dynamic get lawInformation => _lawInformation;
  dynamic get lawSectionInformationId => _lawSectionInformationId;
  dynamic get lawSectionInformation => _lawSectionInformation;
  dynamic get caseDate => _caseDate;
  String? get storyfullDescription => _storyfullDescription;
  dynamic get cancelDescription => _cancelDescription;
  int? get gDInformationId => _gDInformationId;
  dynamic get gDInformation => _gDInformation;
  dynamic get transferthanaId => _transferthanaId;
  dynamic get transferthana => _transferthana;
  dynamic get transferdistrictId => _transferdistrictId;
  dynamic get transferdistrict => _transferdistrict;
  String? get description => _description;
  dynamic get investigationdescription => _investigationdescription;
  dynamic get suggestedinvestigator => _suggestedinvestigator;
  dynamic get investigator => _investigator;
  dynamic get dutyOfficer => _dutyOfficer;
  dynamic get officerIncharge => _officerIncharge;
  dynamic get investigationdate => _investigationdate;
  dynamic get investigationStartDescription => _investigationStartDescription;
  dynamic get investigationReportDescription => _investigationReportDescription;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['gdOwnerInfoId'] = _gdOwnerInfoId;
    map['gdOwnerInfo'] = _gdOwnerInfo;
    map['nationalIdNumber'] = _nationalIdNumber;
    map['trackingNo'] = _trackingNo;
    map['gdNumber'] = _gdNumber;
    map['gdTypeId'] = _gdTypeId;
    if (_gdType != null) {
      map['gdType'] = _gdType?.toJson();
    }
    map['date'] = _date;
    map['gdStatusId'] = _gdStatusId;
    if (_gdStatus != null) {
      map['gdStatus'] = _gdStatus?.toJson();
    }
    map['thanaActivityTypeId'] = _thanaActivityTypeId;
    map['thanaActivityType'] = _thanaActivityType;
    map['lawInformationId'] = _lawInformationId;
    map['lawInformation'] = _lawInformation;
    map['lawSectionInformationId'] = _lawSectionInformationId;
    map['lawSectionInformation'] = _lawSectionInformation;
    map['CaseDate'] = _caseDate;
    map['storyfullDescription'] = _storyfullDescription;
    map['cancelDescription'] = _cancelDescription;
    map['gDInformationId'] = _gDInformationId;
    map['gDInformation'] = _gDInformation;
    map['transferthanaId'] = _transferthanaId;
    map['transferthana'] = _transferthana;
    map['transferdistrictId'] = _transferdistrictId;
    map['transferdistrict'] = _transferdistrict;
    map['description'] = _description;
    map['investigationdescription'] = _investigationdescription;
    map['suggestedinvestigator'] = _suggestedinvestigator;
    map['investigator'] = _investigator;
    map['dutyOfficer'] = _dutyOfficer;
    map['OfficerIncharge'] = _officerIncharge;
    map['investigationdate'] = _investigationdate;
    map['investigationStartDescription'] = _investigationStartDescription;
    map['investigationReportDescription'] = _investigationReportDescription;
    map['Id'] = _id;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    return map;
  }

}

/// statusName : "নতুন জি ডি "
/// Id : 1
/// isDelete : null
/// createdAt : null
/// updatedAt : null
/// createdBy : null
/// updatedBy : null

class GdStatus {
  GdStatus({
      String? statusName, 
      int? id, 
      dynamic isDelete, 
      dynamic createdAt, 
      dynamic updatedAt, 
      dynamic createdBy, 
      dynamic updatedBy,}){
    _statusName = statusName;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  GdStatus.fromJson(dynamic json) {
    _statusName = json['statusName'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _statusName;
  int? _id;
  dynamic _isDelete;
  dynamic _createdAt;
  dynamic _updatedAt;
  dynamic _createdBy;
  dynamic _updatedBy;

  String? get statusName => _statusName;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusName'] = _statusName;
    map['Id'] = _id;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    return map;
  }

}

/// gdTypeName : "Sumggle"
/// gdTypeNameBn : "চুরি"
/// shortOrder : null
/// Id : 3
/// isDelete : null
/// createdAt : "2020-04-11T12:14:02.348854"
/// updatedAt : "2022-01-22T13:24:25.7246804"
/// createdBy : "suza"
/// updatedBy : "7806102686"

class GdType {
  GdType({
      String? gdTypeName, 
      String? gdTypeNameBn, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      String? updatedAt, 
      String? createdBy, 
      String? updatedBy,}){
    _gdTypeName = gdTypeName;
    _gdTypeNameBn = gdTypeNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  GdType.fromJson(dynamic json) {
    _gdTypeName = json['gdTypeName'];
    _gdTypeNameBn = json['gdTypeNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _gdTypeName;
  String? _gdTypeNameBn;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  String? get gdTypeName => _gdTypeName;
  String? get gdTypeNameBn => _gdTypeNameBn;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  String? get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['gdTypeName'] = _gdTypeName;
    map['gdTypeNameBn'] = _gdTypeNameBn;
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