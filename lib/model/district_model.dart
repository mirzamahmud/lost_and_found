class DistrictModel {
  DistrictModel({
      int? divisionId, 
      Division? division, 
      String? districtCode, 
      String? districtName, 
      String? districtNameBn, 
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
    _divisionId = divisionId;
    _division = division;
    _districtCode = districtCode;
    _districtName = districtName;
    _districtNameBn = districtNameBn;
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

  DistrictModel.fromJson(dynamic json) {
    _divisionId = json['divisionId'];
    _division = json['division'] != null ? Division.fromJson(json['division']) : null;
    _districtCode = json['districtCode'];
    _districtName = json['districtName'];
    _districtNameBn = json['districtNameBn'];
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
  int? _divisionId;
  Division? _division;
  String? _districtCode;
  String? _districtName;
  String? _districtNameBn;
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

  int? get divisionId => _divisionId;
  Division? get division => _division;
  String? get districtCode => _districtCode;
  String? get districtName => _districtName;
  String? get districtNameBn => _districtNameBn;
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
    map['divisionId'] = _divisionId;
    if (_division != null) {
      map['division'] = _division?.toJson();
    }
    map['districtCode'] = _districtCode;
    map['districtName'] = _districtName;
    map['districtNameBn'] = _districtNameBn;
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

/// countryId : 1
/// country : null
/// divisionCode : "1"
/// divisionName : "Dhaka"
/// divisionNameBn : "ঢাকা"
/// shortName : null
/// isActive : "Active"
/// latitude : null
/// longitude : null
/// Id : 11
/// isDelete : null
/// createdAt : null
/// updatedAt : "2021-12-29T22:16:17.4755239"
/// createdBy : null
/// updatedBy : "Anonymous"

class Division {
  Division({
      int? countryId, 
      dynamic country, 
      String? divisionCode, 
      String? divisionName, 
      String? divisionNameBn, 
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
    _countryId = countryId;
    _country = country;
    _divisionCode = divisionCode;
    _divisionName = divisionName;
    _divisionNameBn = divisionNameBn;
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

  Division.fromJson(dynamic json) {
    _countryId = json['countryId'];
    _country = json['country'];
    _divisionCode = json['divisionCode'];
    _divisionName = json['divisionName'];
    _divisionNameBn = json['divisionNameBn'];
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
  int? _countryId;
  dynamic _country;
  String? _divisionCode;
  String? _divisionName;
  String? _divisionNameBn;
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

  int? get countryId => _countryId;
  dynamic get country => _country;
  String? get divisionCode => _divisionCode;
  String? get divisionName => _divisionName;
  String? get divisionNameBn => _divisionNameBn;
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
    map['countryId'] = _countryId;
    map['country'] = _country;
    map['divisionCode'] = _divisionCode;
    map['divisionName'] = _divisionName;
    map['divisionNameBn'] = _divisionNameBn;
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