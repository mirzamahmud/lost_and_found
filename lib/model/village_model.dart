/// unionWardId : 3670
/// unionWard : null
/// thanaId : 616
/// thana : null
/// districtsId : 66
/// districts : null
/// villageCode : null
/// villageName : " Prominent Housing Society"
/// villageNameBn : " প্রমিনেন্ট হাউজিং সোসাইটি"
/// shortName : null
/// isActive : "Active"
/// latitude : null
/// longitude : null
/// Id : 148168
/// isDelete : null
/// createdAt : null
/// updatedAt : null
/// createdBy : null
/// updatedBy : null

class VillageModel {
  VillageModel({
      int? unionWardId, 
      dynamic unionWard, 
      int? thanaId, 
      dynamic thana, 
      int? districtsId, 
      dynamic districts, 
      dynamic villageCode, 
      String? villageName, 
      String? villageNameBn, 
      dynamic shortName, 
      String? isActive, 
      dynamic latitude, 
      dynamic longitude, 
      int? id, 
      dynamic isDelete, 
      dynamic createdAt, 
      dynamic updatedAt, 
      dynamic createdBy, 
      dynamic updatedBy,}){
    _unionWardId = unionWardId;
    _unionWard = unionWard;
    _thanaId = thanaId;
    _thana = thana;
    _districtsId = districtsId;
    _districts = districts;
    _villageCode = villageCode;
    _villageName = villageName;
    _villageNameBn = villageNameBn;
    _shortName = shortName;
    _isActive = isActive;
    _latitude = latitude;
    _longitude = longitude;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  VillageModel.fromJson(dynamic json) {
    _unionWardId = json['unionWardId'];
    _unionWard = json['unionWard'];
    _thanaId = json['thanaId'];
    _thana = json['thana'];
    _districtsId = json['districtsId'];
    _districts = json['districts'];
    _villageCode = json['villageCode'];
    _villageName = json['villageName'];
    _villageNameBn = json['villageNameBn'];
    _shortName = json['shortName'];
    _isActive = json['isActive'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  int? _unionWardId;
  dynamic _unionWard;
  int? _thanaId;
  dynamic _thana;
  int? _districtsId;
  dynamic _districts;
  dynamic _villageCode;
  String? _villageName;
  String? _villageNameBn;
  dynamic _shortName;
  String? _isActive;
  dynamic _latitude;
  dynamic _longitude;
  int? _id;
  dynamic _isDelete;
  dynamic _createdAt;
  dynamic _updatedAt;
  dynamic _createdBy;
  dynamic _updatedBy;

  int? get unionWardId => _unionWardId;
  dynamic get unionWard => _unionWard;
  int? get thanaId => _thanaId;
  dynamic get thana => _thana;
  int? get districtsId => _districtsId;
  dynamic get districts => _districts;
  dynamic get villageCode => _villageCode;
  String? get villageName => _villageName;
  String? get villageNameBn => _villageNameBn;
  dynamic get shortName => _shortName;
  String? get isActive => _isActive;
  dynamic get latitude => _latitude;
  dynamic get longitude => _longitude;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['unionWardId'] = _unionWardId;
    map['unionWard'] = _unionWard;
    map['thanaId'] = _thanaId;
    map['thana'] = _thana;
    map['districtsId'] = _districtsId;
    map['districts'] = _districts;
    map['villageCode'] = _villageCode;
    map['villageName'] = _villageName;
    map['villageNameBn'] = _villageNameBn;
    map['shortName'] = _shortName;
    map['isActive'] = _isActive;
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    map['Id'] = _id;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    return map;
  }

}