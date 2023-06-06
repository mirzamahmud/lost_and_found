class VehicleModel {
  VehicleModel({
      List<VehicleTypes>? vehicleTypes, 
      List<VehicleModels>? vehicleModels, 
      List<RegistrationLevels>? registrationLevels, 
      List<MetropolitanAreas>? metropolitanAreas, 
      List<Districts>? districts, 
      List<Thanas>? thanas, 
      List<Colors>? colors, 
      List<NationalIdentityTypes>? nationalIdentityTypes,}){
    _vehicleTypes = vehicleTypes;
    _vehicleModels = vehicleModels;
    _registrationLevels = registrationLevels;
    _metropolitanAreas = metropolitanAreas;
    _districts = districts;
    _thanas = thanas;
    _colors = colors;
    _nationalIdentityTypes = nationalIdentityTypes;
}

  VehicleModel.fromJson(dynamic json) {
    if (json['vehicleTypes'] != null) {
      _vehicleTypes = [];
      json['vehicleTypes'].forEach((v) {
        _vehicleTypes?.add(VehicleTypes.fromJson(v));
      });
    }
    if (json['vehicleModels'] != null) {
      _vehicleModels = [];
      json['vehicleModels'].forEach((v) {
        _vehicleModels?.add(VehicleModels.fromJson(v));
      });
    }
    if (json['registrationLevels'] != null) {
      _registrationLevels = [];
      json['registrationLevels'].forEach((v) {
        _registrationLevels?.add(RegistrationLevels.fromJson(v));
      });
    }
    if (json['metropolitanAreas'] != null) {
      _metropolitanAreas = [];
      json['metropolitanAreas'].forEach((v) {
        _metropolitanAreas?.add(MetropolitanAreas.fromJson(v));
      });
    }
    if (json['districts'] != null) {
      _districts = [];
      json['districts'].forEach((v) {
        _districts?.add(Districts.fromJson(v));
      });
    }
    if (json['thanas'] != null) {
      _thanas = [];
      json['thanas'].forEach((v) {
        _thanas?.add(Thanas.fromJson(v));
      });
    }
    if (json['colors'] != null) {
      _colors = [];
      json['colors'].forEach((v) {
        _colors?.add(Colors.fromJson(v));
      });
    }
    if (json['nationalIdentityTypes'] != null) {
      _nationalIdentityTypes = [];
      json['nationalIdentityTypes'].forEach((v) {
        _nationalIdentityTypes?.add(NationalIdentityTypes.fromJson(v));
      });
    }
  }
  List<VehicleTypes>? _vehicleTypes;
  List<VehicleModels>? _vehicleModels;
  List<RegistrationLevels>? _registrationLevels;
  List<MetropolitanAreas>? _metropolitanAreas;
  List<Districts>? _districts;
  List<Thanas>? _thanas;
  List<Colors>? _colors;
  List<NationalIdentityTypes>? _nationalIdentityTypes;

  List<VehicleTypes>? get vehicleTypes => _vehicleTypes;
  List<VehicleModels>? get vehicleModels => _vehicleModels;
  List<RegistrationLevels>? get registrationLevels => _registrationLevels;
  List<MetropolitanAreas>? get metropolitanAreas => _metropolitanAreas;
  List<Districts>? get districts => _districts;
  List<Thanas>? get thanas => _thanas;
  List<Colors>? get colors => _colors;
  List<NationalIdentityTypes>? get nationalIdentityTypes => _nationalIdentityTypes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_vehicleTypes != null) {
      map['vehicleTypes'] = _vehicleTypes?.map((v) => v.toJson()).toList();
    }
    if (_vehicleModels != null) {
      map['vehicleModels'] = _vehicleModels?.map((v) => v.toJson()).toList();
    }
    if (_registrationLevels != null) {
      map['registrationLevels'] = _registrationLevels?.map((v) => v.toJson()).toList();
    }
    if (_metropolitanAreas != null) {
      map['metropolitanAreas'] = _metropolitanAreas?.map((v) => v.toJson()).toList();
    }
    if (_districts != null) {
      map['districts'] = _districts?.map((v) => v.toJson()).toList();
    }
    if (_thanas != null) {
      map['thanas'] = _thanas?.map((v) => v.toJson()).toList();
    }
    if (_colors != null) {
      map['colors'] = _colors?.map((v) => v.toJson()).toList();
    }
    if (_nationalIdentityTypes != null) {
      map['nationalIdentityTypes'] = _nationalIdentityTypes?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// nationalIdentityName : "NID"
/// nationalIdentityNameBn : "জাতীয় পরিচয়পত্র"
/// shortOrder : null
/// Id : 1
/// isDelete : null
/// createdAt : "2020-04-09T15:14:01.9114213"
/// updatedAt : "2020-11-30T15:14:23.4799753"
/// createdBy : "suza"
/// updatedBy : "8708120435"

class NationalIdentityTypes {
  NationalIdentityTypes({
      String? nationalIdentityName, 
      String? nationalIdentityNameBn, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      String? updatedAt, 
      String? createdBy, 
      String? updatedBy,}){
    _nationalIdentityName = nationalIdentityName;
    _nationalIdentityNameBn = nationalIdentityNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  NationalIdentityTypes.fromJson(dynamic json) {
    _nationalIdentityName = json['nationalIdentityName'];
    _nationalIdentityNameBn = json['nationalIdentityNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _nationalIdentityName;
  String? _nationalIdentityNameBn;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  String? get nationalIdentityName => _nationalIdentityName;
  String? get nationalIdentityNameBn => _nationalIdentityNameBn;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  String? get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['nationalIdentityName'] = _nationalIdentityName;
    map['nationalIdentityNameBn'] = _nationalIdentityNameBn;
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

/// colorName : " Red"
/// colorNameBn : "লাল"
/// colorCode : "#FF0000"
/// shortOrder : null
/// Id : 1
/// isDelete : null
/// createdAt : "2020-04-11T16:54:36.6429862"
/// updatedAt : "2020-05-13T22:50:29.2283474"
/// createdBy : "suza"
/// updatedBy : "suza"

class Colors {
  Colors({
      String? colorName, 
      String? colorNameBn, 
      String? colorCode, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      String? updatedAt, 
      String? createdBy, 
      String? updatedBy,}){
    _colorName = colorName;
    _colorNameBn = colorNameBn;
    _colorCode = colorCode;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  Colors.fromJson(dynamic json) {
    _colorName = json['colorName'];
    _colorNameBn = json['colorNameBn'];
    _colorCode = json['colorCode'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _colorName;
  String? _colorNameBn;
  String? _colorCode;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  String? get colorName => _colorName;
  String? get colorNameBn => _colorNameBn;
  String? get colorCode => _colorCode;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  String? get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['colorName'] = _colorName;
    map['colorNameBn'] = _colorNameBn;
    map['colorCode'] = _colorCode;
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

class Thanas {
  Thanas({
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
      dynamic updatedAt, 
      dynamic createdBy, 
      dynamic updatedBy,}){
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

  Thanas.fromJson(dynamic json) {
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
  dynamic _updatedAt;
  dynamic _createdBy;
  dynamic _updatedBy;

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
  dynamic get updatedAt => _updatedAt;
  dynamic get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

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
      dynamic updatedAt, 
      dynamic createdBy, 
      dynamic updatedBy,}){
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
  dynamic _updatedAt;
  dynamic _createdBy;
  dynamic _updatedBy;

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
  dynamic get updatedAt => _updatedAt;
  dynamic get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

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

class Division {
  Division({
      int? countryId, 
      // Country? country,
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
    // _country = country;
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
    // _country = json['country'] != null ? Country.fromJson(json['country']) : null;
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
  // Country? _country;
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
  // Country? get country => _country;
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
    /*map['countryId'] = _countryId;
    if (_country != null) {
      map['country'] = _country?.toJson();
    }*/
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

class MetropolitanAreas {
  MetropolitanAreas({
      String? areaName, 
      dynamic areaNameBn, 
      dynamic districtId, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _areaName = areaName;
    _areaNameBn = areaNameBn;
    _districtId = districtId;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  MetropolitanAreas.fromJson(dynamic json) {
    _areaName = json['areaName'];
    _areaNameBn = json['areaNameBn'];
    _districtId = json['districtId'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _areaName;
  dynamic _areaNameBn;
  dynamic _districtId;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get areaName => _areaName;
  dynamic get areaNameBn => _areaNameBn;
  dynamic get districtId => _districtId;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['areaName'] = _areaName;
    map['areaNameBn'] = _areaNameBn;
    map['districtId'] = _districtId;
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

/// levelName : "E"
/// levelNameBn : null
/// shortOrder : null
/// Id : 1
/// isDelete : null
/// createdAt : "2020-04-23T17:32:58.7238141"
/// updatedAt : null
/// createdBy : "suza"
/// updatedBy : null

class RegistrationLevels {
  RegistrationLevels({
      String? levelName, 
      dynamic levelNameBn, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _levelName = levelName;
    _levelNameBn = levelNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  RegistrationLevels.fromJson(dynamic json) {
    _levelName = json['levelName'];
    _levelNameBn = json['levelNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _levelName;
  dynamic _levelNameBn;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get levelName => _levelName;
  dynamic get levelNameBn => _levelNameBn;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['levelName'] = _levelName;
    map['levelNameBn'] = _levelNameBn;
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

/// vehicleTypeId : 1
/// vehicleType : {"vehicleTypeName":"Bus","vehicleTypeNameBn":" বাস","imagePath":"","shortOrder":null,"Id":1,"isDelete":null,"createdAt":"2020-04-09T10:50:12.6673013","updatedAt":"2020-05-13T22:37:58.6239401","createdBy":"suza","updatedBy":"suza"}
/// modelName : "TATA"
/// modelNameBn : "টাটা"
/// imagePath : "Upload/Attachment/VehicleType\\637280138618969051.png"
/// shortOrder : null
/// Id : 1
/// isDelete : null
/// createdAt : "2020-04-09T11:50:41.3996471"
/// updatedAt : "2020-06-17T18:04:21.8979578"
/// createdBy : "suza"
/// updatedBy : "suza"

class VehicleModels {
  VehicleModels({
      int? vehicleTypeId, 
      VehicleType? vehicleType, 
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

  VehicleModels.fromJson(dynamic json) {
    _vehicleTypeId = json['vehicleTypeId'];
    _vehicleType = json['vehicleType'] != null ? VehicleType.fromJson(json['vehicleType']) : null;
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
  VehicleType? _vehicleType;
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
  VehicleType? get vehicleType => _vehicleType;
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
    if (_vehicleType != null) {
      map['vehicleType'] = _vehicleType?.toJson();
    }
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

/// vehicleTypeName : "Bus"
/// vehicleTypeNameBn : " বাস"
/// imagePath : ""
/// shortOrder : null
/// Id : 1
/// isDelete : null
/// createdAt : "2020-04-09T10:50:12.6673013"
/// updatedAt : "2020-05-13T22:37:58.6239401"
/// createdBy : "suza"
/// updatedBy : "suza"

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

/// vehicleTypeName : "Bus"
/// vehicleTypeNameBn : " বাস"
/// imagePath : ""
/// shortOrder : null
/// Id : 1
/// isDelete : null
/// createdAt : "2020-04-09T10:50:12.6673013"
/// updatedAt : "2020-05-13T22:37:58.6239401"
/// createdBy : "suza"
/// updatedBy : "suza"

class VehicleTypes {
  VehicleTypes({
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

  VehicleTypes.fromJson(dynamic json) {
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