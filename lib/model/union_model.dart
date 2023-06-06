class UnionModel {
  UnionModel({
      int? thanaId, 
      Thana? thana, 
      int? districtsId, 
      Districts? districts, 
      String? unionCode, 
      String? unionName, 
      String? unionNameBn, 
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
    _thanaId = thanaId;
    _thana = thana;
    _districtsId = districtsId;
    _districts = districts;
    _unionCode = unionCode;
    _unionName = unionName;
    _unionNameBn = unionNameBn;
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

  UnionModel.fromJson(dynamic json) {
    _thanaId = json['thanaId'];
    _thana = json['thana'] != null ? Thana.fromJson(json['thana']) : null;
    _districtsId = json['districtsId'];
    _districts = json['districts'] != null ? Districts.fromJson(json['districts']) : null;
    _unionCode = json['unionCode'];
    _unionName = json['unionName'];
    _unionNameBn = json['unionNameBn'];
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
  int? _thanaId;
  Thana? _thana;
  int? _districtsId;
  Districts? _districts;
  String? _unionCode;
  String? _unionName;
  String? _unionNameBn;
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

  int? get thanaId => _thanaId;
  Thana? get thana => _thana;
  int? get districtsId => _districtsId;
  Districts? get districts => _districts;
  String? get unionCode => _unionCode;
  String? get unionName => _unionName;
  String? get unionNameBn => _unionNameBn;
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
    map['thanaId'] = _thanaId;
    if (_thana != null) {
      map['thana'] = _thana?.toJson();
    }
    map['districtsId'] = _districtsId;
    if (_districts != null) {
      map['districts'] = _districts?.toJson();
    }
    map['unionCode'] = _unionCode;
    map['unionName'] = _unionName;
    map['unionNameBn'] = _unionNameBn;
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

/// divisionId : 11
/// division : {"countryId":1,"country":null,"divisionCode":"1","divisionName":"Dhaka","divisionNameBn":"ঢাকা","shortName":null,"isActive":"Active","latitude":null,"longitude":null,"Id":11,"isDelete":null,"createdAt":null,"updatedAt":"2021-12-29T22:16:17.4755239","createdBy":null,"updatedBy":"Anonymous"}
/// districtCode : "26"
/// districtName : "Dhaka"
/// districtNameBn : "ঢাকা"
/// shortName : null
/// isActive : "Active"
/// latitude : null
/// longitude : null
/// Id : 66
/// isDelete : null
/// createdAt : null
/// updatedAt : "2021-12-29T22:16:17.4676929"
/// createdBy : null
/// updatedBy : "Anonymous"

class Districts {
  Districts({
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

  Districts.fromJson(dynamic json) {
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

/// districtId : 66
/// district : {"divisionId":11,"division":{"countryId":1,"country":null,"divisionCode":"1","divisionName":"Dhaka","divisionNameBn":"ঢাকা","shortName":null,"isActive":"Active","latitude":null,"longitude":null,"Id":11,"isDelete":null,"createdAt":null,"updatedAt":"2021-12-29T22:16:17.4755239","createdBy":null,"updatedBy":"Anonymous"},"districtCode":"26","districtName":"Dhaka","districtNameBn":"ঢাকা","shortName":null,"isActive":"Active","latitude":null,"longitude":null,"Id":66,"isDelete":null,"createdAt":null,"updatedAt":"2021-12-29T22:16:17.4676929","createdBy":null,"updatedBy":"Anonymous"}
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

class Thana {
  Thana({
      int? districtId, 
      District? district, 
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

  Thana.fromJson(dynamic json) {
    _districtId = json['districtId'];
    _district = json['district'] != null ? District.fromJson(json['district']) : null;
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
  District? _district;
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
  District? get district => _district;
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
    if (_district != null) {
      map['district'] = _district?.toJson();
    }
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

/// divisionId : 11
/// division : {"countryId":1,"country":null,"divisionCode":"1","divisionName":"Dhaka","divisionNameBn":"ঢাকা","shortName":null,"isActive":"Active","latitude":null,"longitude":null,"Id":11,"isDelete":null,"createdAt":null,"updatedAt":"2021-12-29T22:16:17.4755239","createdBy":null,"updatedBy":"Anonymous"}
/// districtCode : "26"
/// districtName : "Dhaka"
/// districtNameBn : "ঢাকা"
/// shortName : null
/// isActive : "Active"
/// latitude : null
/// longitude : null
/// Id : 66
/// isDelete : null
/// createdAt : null
/// updatedAt : "2021-12-29T22:16:17.4676929"
/// createdBy : null
/// updatedBy : "Anonymous"

class District {
  District({
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

  District.fromJson(dynamic json) {
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