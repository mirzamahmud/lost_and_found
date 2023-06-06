/// districtId : 66
/// district : null
/// rangeMetroId : null
/// rangeMetro : null
/// thanaCode : "2602"
/// thanaName : "Adabor"
/// thanaNameBn : "আদাবর"
/// shortName : null
/// isActive : "Active"
/// latitude : null
/// longitude : null
/// Id : 616
/// isDelete : null
/// createdAt : null
/// updatedAt : "2021-12-11T11:06:23.6733621"
/// createdBy : null
/// updatedBy : "Anonymous"

class ThanaModel {
  ThanaModel({
      int? districtId, 
      dynamic district, 
      dynamic rangeMetroId, 
      dynamic rangeMetro, 
      String? thanaCode, 
      String? thanaName, 
      String? thanaNameBn, 
      dynamic shortName, 
      String? isActive, 
      dynamic latitude, 
      dynamic longitude, 
      int? id, 
      dynamic isDelete, 
      dynamic createdAt, 
      String? updatedAt, 
      dynamic createdBy, 
      String? updatedBy,}){
    _districtId = districtId;
    _district = district;
    _rangeMetroId = rangeMetroId;
    _rangeMetro = rangeMetro;
    _thanaCode = thanaCode;
    _thanaName = thanaName;
    _thanaNameBn = thanaNameBn;
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

  ThanaModel.fromJson(dynamic json) {
    _districtId = json['districtId'];
    _district = json['district'];
    _rangeMetroId = json['rangeMetroId'];
    _rangeMetro = json['rangeMetro'];
    _thanaCode = json['thanaCode'];
    _thanaName = json['thanaName'];
    _thanaNameBn = json['thanaNameBn'];
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
  int? _districtId;
  dynamic _district;
  dynamic _rangeMetroId;
  dynamic _rangeMetro;
  String? _thanaCode;
  String? _thanaName;
  String? _thanaNameBn;
  dynamic _shortName;
  String? _isActive;
  dynamic _latitude;
  dynamic _longitude;
  int? _id;
  dynamic _isDelete;
  dynamic _createdAt;
  String? _updatedAt;
  dynamic _createdBy;
  String? _updatedBy;

  int? get districtId => _districtId;
  dynamic get district => _district;
  dynamic get rangeMetroId => _rangeMetroId;
  dynamic get rangeMetro => _rangeMetro;
  String? get thanaCode => _thanaCode;
  String? get thanaName => _thanaName;
  String? get thanaNameBn => _thanaNameBn;
  dynamic get shortName => _shortName;
  String? get isActive => _isActive;
  dynamic get latitude => _latitude;
  dynamic get longitude => _longitude;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  dynamic get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get createdBy => _createdBy;
  String? get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['districtId'] = _districtId;
    map['district'] = _district;
    map['rangeMetroId'] = _rangeMetroId;
    map['rangeMetro'] = _rangeMetro;
    map['thanaCode'] = _thanaCode;
    map['thanaName'] = _thanaName;
    map['thanaNameBn'] = _thanaNameBn;
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