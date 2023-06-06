class PersonPhysicalModel {
  PersonPhysicalModel({
      List<AgePeriods>? agePeriods, 
      List<BeardTypes>? beardTypes, 
      List<BodyChinTypes>? bodyChinTypes, 
      List<BodyColors>? bodyColors, 
      List<BodyStructures>? bodyStructures, 
      List<DeadbodyConditions>? deadbodyConditions, 
      List<DeathTypes>? deathTypes, 
      List<EarTypes>? earTypes, 
      List<EyeTypes>? eyeTypes, 
      List<FaceShapeTypes>? faceShapeTypes, 
      List<ForeHeadTypes>? foreHeadTypes, 
      List<HairTypes>? hairTypes, 
      List<HeadTypes>? headTypes, 
      List<MoustacheTypes>? moustacheTypes, 
      List<MouthTypes>? mouthTypes, 
      List<NeckTypes>? neckTypes, 
      List<NoseTypes>? noseTypes, 
      List<SpecialBodyConditions>? specialBodyConditions, 
      List<TeethTypes>? teethTypes, 
      List<SpecialBirthMarkTypes>? specialBirthMarkTypes, 
      List<SpecialBirthMarkBodyParts>? specialBirthMarkBodyParts, 
      List<SpecialBirthMarkBodyPartPositions>? specialBirthMarkBodyPartPositions,}){
    _agePeriods = agePeriods;
    _beardTypes = beardTypes;
    _bodyChinTypes = bodyChinTypes;
    _bodyColors = bodyColors;
    _bodyStructures = bodyStructures;
    _deadbodyConditions = deadbodyConditions;
    _deathTypes = deathTypes;
    _earTypes = earTypes;
    _eyeTypes = eyeTypes;
    _faceShapeTypes = faceShapeTypes;
    _foreHeadTypes = foreHeadTypes;
    _hairTypes = hairTypes;
    _headTypes = headTypes;
    _moustacheTypes = moustacheTypes;
    _mouthTypes = mouthTypes;
    _neckTypes = neckTypes;
    _noseTypes = noseTypes;
    _specialBodyConditions = specialBodyConditions;
    _teethTypes = teethTypes;
    _specialBirthMarkTypes = specialBirthMarkTypes;
    _specialBirthMarkBodyParts = specialBirthMarkBodyParts;
    _specialBirthMarkBodyPartPositions = specialBirthMarkBodyPartPositions;
}

  PersonPhysicalModel.fromJson(dynamic json) {
    if (json['agePeriods'] != null) {
      _agePeriods = [];
      json['agePeriods'].forEach((v) {
        _agePeriods?.add(AgePeriods.fromJson(v));
      });
    }
    if (json['beardTypes'] != null) {
      _beardTypes = [];
      json['beardTypes'].forEach((v) {
        _beardTypes?.add(BeardTypes.fromJson(v));
      });
    }
    if (json['bodyChinTypes'] != null) {
      _bodyChinTypes = [];
      json['bodyChinTypes'].forEach((v) {
        _bodyChinTypes?.add(BodyChinTypes.fromJson(v));
      });
    }
    if (json['bodyColors'] != null) {
      _bodyColors = [];
      json['bodyColors'].forEach((v) {
        _bodyColors?.add(BodyColors.fromJson(v));
      });
    }
    if (json['bodyStructures'] != null) {
      _bodyStructures = [];
      json['bodyStructures'].forEach((v) {
        _bodyStructures?.add(BodyStructures.fromJson(v));
      });
    }
    if (json['deadbodyConditions'] != null) {
      _deadbodyConditions = [];
      json['deadbodyConditions'].forEach((v) {
        _deadbodyConditions?.add(DeadbodyConditions.fromJson(v));
      });
    }
    if (json['deathTypes'] != null) {
      _deathTypes = [];
      json['deathTypes'].forEach((v) {
        _deathTypes?.add(DeathTypes.fromJson(v));
      });
    }
    if (json['earTypes'] != null) {
      _earTypes = [];
      json['earTypes'].forEach((v) {
        _earTypes?.add(EarTypes.fromJson(v));
      });
    }
    if (json['eyeTypes'] != null) {
      _eyeTypes = [];
      json['eyeTypes'].forEach((v) {
        _eyeTypes?.add(EyeTypes.fromJson(v));
      });
    }
    if (json['faceShapeTypes'] != null) {
      _faceShapeTypes = [];
      json['faceShapeTypes'].forEach((v) {
        _faceShapeTypes?.add(FaceShapeTypes.fromJson(v));
      });
    }
    if (json['foreHeadTypes'] != null) {
      _foreHeadTypes = [];
      json['foreHeadTypes'].forEach((v) {
        _foreHeadTypes?.add(ForeHeadTypes.fromJson(v));
      });
    }
    if (json['hairTypes'] != null) {
      _hairTypes = [];
      json['hairTypes'].forEach((v) {
        _hairTypes?.add(HairTypes.fromJson(v));
      });
    }
    if (json['headTypes'] != null) {
      _headTypes = [];
      json['headTypes'].forEach((v) {
        _headTypes?.add(HeadTypes.fromJson(v));
      });
    }
    if (json['moustacheTypes'] != null) {
      _moustacheTypes = [];
      json['moustacheTypes'].forEach((v) {
        _moustacheTypes?.add(MoustacheTypes.fromJson(v));
      });
    }
    if (json['mouthTypes'] != null) {
      _mouthTypes = [];
      json['mouthTypes'].forEach((v) {
        _mouthTypes?.add(MouthTypes.fromJson(v));
      });
    }
    if (json['neckTypes'] != null) {
      _neckTypes = [];
      json['neckTypes'].forEach((v) {
        _neckTypes?.add(NeckTypes.fromJson(v));
      });
    }
    if (json['noseTypes'] != null) {
      _noseTypes = [];
      json['noseTypes'].forEach((v) {
        _noseTypes?.add(NoseTypes.fromJson(v));
      });
    }
    if (json['specialBodyConditions'] != null) {
      _specialBodyConditions = [];
      json['specialBodyConditions'].forEach((v) {
        _specialBodyConditions?.add(SpecialBodyConditions.fromJson(v));
      });
    }
    if (json['teethTypes'] != null) {
      _teethTypes = [];
      json['teethTypes'].forEach((v) {
        _teethTypes?.add(TeethTypes.fromJson(v));
      });
    }
    if (json['specialBirthMarkTypes'] != null) {
      _specialBirthMarkTypes = [];
      json['specialBirthMarkTypes'].forEach((v) {
        _specialBirthMarkTypes?.add(SpecialBirthMarkTypes.fromJson(v));
      });
    }
    if (json['specialBirthMarkBodyParts'] != null) {
      _specialBirthMarkBodyParts = [];
      json['specialBirthMarkBodyParts'].forEach((v) {
        _specialBirthMarkBodyParts?.add(SpecialBirthMarkBodyParts.fromJson(v));
      });
    }
    if (json['specialBirthMarkBodyPartPositions'] != null) {
      _specialBirthMarkBodyPartPositions = [];
      json['specialBirthMarkBodyPartPositions'].forEach((v) {
        _specialBirthMarkBodyPartPositions?.add(SpecialBirthMarkBodyPartPositions.fromJson(v));
      });
    }
  }
  List<AgePeriods>? _agePeriods;
  List<BeardTypes>? _beardTypes;
  List<BodyChinTypes>? _bodyChinTypes;
  List<BodyColors>? _bodyColors;
  List<BodyStructures>? _bodyStructures;
  List<DeadbodyConditions>? _deadbodyConditions;
  List<DeathTypes>? _deathTypes;
  List<EarTypes>? _earTypes;
  List<EyeTypes>? _eyeTypes;
  List<FaceShapeTypes>? _faceShapeTypes;
  List<ForeHeadTypes>? _foreHeadTypes;
  List<HairTypes>? _hairTypes;
  List<HeadTypes>? _headTypes;
  List<MoustacheTypes>? _moustacheTypes;
  List<MouthTypes>? _mouthTypes;
  List<NeckTypes>? _neckTypes;
  List<NoseTypes>? _noseTypes;
  List<SpecialBodyConditions>? _specialBodyConditions;
  List<TeethTypes>? _teethTypes;
  List<SpecialBirthMarkTypes>? _specialBirthMarkTypes;
  List<SpecialBirthMarkBodyParts>? _specialBirthMarkBodyParts;
  List<SpecialBirthMarkBodyPartPositions>? _specialBirthMarkBodyPartPositions;

  List<AgePeriods>? get agePeriods => _agePeriods;
  List<BeardTypes>? get beardTypes => _beardTypes;
  List<BodyChinTypes>? get bodyChinTypes => _bodyChinTypes;
  List<BodyColors>? get bodyColors => _bodyColors;
  List<BodyStructures>? get bodyStructures => _bodyStructures;
  List<DeadbodyConditions>? get deadbodyConditions => _deadbodyConditions;
  List<DeathTypes>? get deathTypes => _deathTypes;
  List<EarTypes>? get earTypes => _earTypes;
  List<EyeTypes>? get eyeTypes => _eyeTypes;
  List<FaceShapeTypes>? get faceShapeTypes => _faceShapeTypes;
  List<ForeHeadTypes>? get foreHeadTypes => _foreHeadTypes;
  List<HairTypes>? get hairTypes => _hairTypes;
  List<HeadTypes>? get headTypes => _headTypes;
  List<MoustacheTypes>? get moustacheTypes => _moustacheTypes;
  List<MouthTypes>? get mouthTypes => _mouthTypes;
  List<NeckTypes>? get neckTypes => _neckTypes;
  List<NoseTypes>? get noseTypes => _noseTypes;
  List<SpecialBodyConditions>? get specialBodyConditions => _specialBodyConditions;
  List<TeethTypes>? get teethTypes => _teethTypes;
  List<SpecialBirthMarkTypes>? get specialBirthMarkTypes => _specialBirthMarkTypes;
  List<SpecialBirthMarkBodyParts>? get specialBirthMarkBodyParts => _specialBirthMarkBodyParts;
  List<SpecialBirthMarkBodyPartPositions>? get specialBirthMarkBodyPartPositions => _specialBirthMarkBodyPartPositions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_agePeriods != null) {
      map['agePeriods'] = _agePeriods?.map((v) => v.toJson()).toList();
    }
    if (_beardTypes != null) {
      map['beardTypes'] = _beardTypes?.map((v) => v.toJson()).toList();
    }
    if (_bodyChinTypes != null) {
      map['bodyChinTypes'] = _bodyChinTypes?.map((v) => v.toJson()).toList();
    }
    if (_bodyColors != null) {
      map['bodyColors'] = _bodyColors?.map((v) => v.toJson()).toList();
    }
    if (_bodyStructures != null) {
      map['bodyStructures'] = _bodyStructures?.map((v) => v.toJson()).toList();
    }
    if (_deadbodyConditions != null) {
      map['deadbodyConditions'] = _deadbodyConditions?.map((v) => v.toJson()).toList();
    }
    if (_deathTypes != null) {
      map['deathTypes'] = _deathTypes?.map((v) => v.toJson()).toList();
    }
    if (_earTypes != null) {
      map['earTypes'] = _earTypes?.map((v) => v.toJson()).toList();
    }
    if (_eyeTypes != null) {
      map['eyeTypes'] = _eyeTypes?.map((v) => v.toJson()).toList();
    }
    if (_faceShapeTypes != null) {
      map['faceShapeTypes'] = _faceShapeTypes?.map((v) => v.toJson()).toList();
    }
    if (_foreHeadTypes != null) {
      map['foreHeadTypes'] = _foreHeadTypes?.map((v) => v.toJson()).toList();
    }
    if (_hairTypes != null) {
      map['hairTypes'] = _hairTypes?.map((v) => v.toJson()).toList();
    }
    if (_headTypes != null) {
      map['headTypes'] = _headTypes?.map((v) => v.toJson()).toList();
    }
    if (_moustacheTypes != null) {
      map['moustacheTypes'] = _moustacheTypes?.map((v) => v.toJson()).toList();
    }
    if (_mouthTypes != null) {
      map['mouthTypes'] = _mouthTypes?.map((v) => v.toJson()).toList();
    }
    if (_neckTypes != null) {
      map['neckTypes'] = _neckTypes?.map((v) => v.toJson()).toList();
    }
    if (_noseTypes != null) {
      map['noseTypes'] = _noseTypes?.map((v) => v.toJson()).toList();
    }
    if (_specialBodyConditions != null) {
      map['specialBodyConditions'] = _specialBodyConditions?.map((v) => v.toJson()).toList();
    }
    if (_teethTypes != null) {
      map['teethTypes'] = _teethTypes?.map((v) => v.toJson()).toList();
    }
    if (_specialBirthMarkTypes != null) {
      map['specialBirthMarkTypes'] = _specialBirthMarkTypes?.map((v) => v.toJson()).toList();
    }
    if (_specialBirthMarkBodyParts != null) {
      map['specialBirthMarkBodyParts'] = _specialBirthMarkBodyParts?.map((v) => v.toJson()).toList();
    }
    if (_specialBirthMarkBodyPartPositions != null) {
      map['specialBirthMarkBodyPartPositions'] = _specialBirthMarkBodyPartPositions?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class SpecialBirthMarkBodyPartPositions {
  SpecialBirthMarkBodyPartPositions({
      String? typeName, 
      String? typeNameBn, 
      int? shortOrder, 
      int? id, 
      dynamic isDelete, 
      dynamic createdAt, 
      dynamic updatedAt, 
      dynamic createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  SpecialBirthMarkBodyPartPositions.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  int? _shortOrder;
  int? _id;
  dynamic _isDelete;
  dynamic _createdAt;
  dynamic _updatedAt;
  dynamic _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  int? get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class SpecialBirthMarkBodyParts {
  SpecialBirthMarkBodyParts({
      String? bodyName, 
      String? bodyNameBn, 
      int? shortOrder, 
      int? id, 
      dynamic isDelete, 
      dynamic createdAt, 
      dynamic updatedAt, 
      dynamic createdBy, 
      dynamic updatedBy,}){
    _bodyName = bodyName;
    _bodyNameBn = bodyNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  SpecialBirthMarkBodyParts.fromJson(dynamic json) {
    _bodyName = json['bodyName'];
    _bodyNameBn = json['bodyNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _bodyName;
  String? _bodyNameBn;
  int? _shortOrder;
  int? _id;
  dynamic _isDelete;
  dynamic _createdAt;
  dynamic _updatedAt;
  dynamic _createdBy;
  dynamic _updatedBy;

  String? get bodyName => _bodyName;
  String? get bodyNameBn => _bodyNameBn;
  int? get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bodyName'] = _bodyName;
    map['bodyNameBn'] = _bodyNameBn;
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

class SpecialBirthMarkTypes {
  SpecialBirthMarkTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      int? shortOrder, 
      int? id, 
      dynamic isDelete, 
      dynamic createdAt, 
      dynamic updatedAt, 
      dynamic createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  SpecialBirthMarkTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  int? _shortOrder;
  int? _id;
  dynamic _isDelete;
  dynamic _createdAt;
  dynamic _updatedAt;
  dynamic _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  int? get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class TeethTypes {
  TeethTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  TeethTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class SpecialBodyConditions {
  SpecialBodyConditions({
      String? conditionName, 
      String? conditionNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _conditionName = conditionName;
    _conditionNameBn = conditionNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  SpecialBodyConditions.fromJson(dynamic json) {
    _conditionName = json['conditionName'];
    _conditionNameBn = json['conditionNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _conditionName;
  String? _conditionNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get conditionName => _conditionName;
  String? get conditionNameBn => _conditionNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['conditionName'] = _conditionName;
    map['conditionNameBn'] = _conditionNameBn;
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

class NoseTypes {
  NoseTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  NoseTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class NeckTypes {
  NeckTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  NeckTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class MouthTypes {
  MouthTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      String? updatedAt, 
      String? createdBy, 
      String? updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  MouthTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
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
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class MoustacheTypes {
  MoustacheTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  MoustacheTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class HeadTypes {
  HeadTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  HeadTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class HairTypes {
  HairTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      String? updatedAt, 
      String? createdBy, 
      String? updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  HairTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
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
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class ForeHeadTypes {
  ForeHeadTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  ForeHeadTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class FaceShapeTypes {
  FaceShapeTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  FaceShapeTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class EyeTypes {
  EyeTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  EyeTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class EarTypes {
  EarTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  EarTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class DeathTypes {
  DeathTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  DeathTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class DeadbodyConditions {
  DeadbodyConditions({
      String? conditionName, 
      String? conditionNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _conditionName = conditionName;
    _conditionNameBn = conditionNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  DeadbodyConditions.fromJson(dynamic json) {
    _conditionName = json['conditionName'];
    _conditionNameBn = json['conditionNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _conditionName;
  String? _conditionNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get conditionName => _conditionName;
  String? get conditionNameBn => _conditionNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['conditionName'] = _conditionName;
    map['conditionNameBn'] = _conditionNameBn;
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

class BodyStructures {
  BodyStructures({
      String? structureName, 
      String? structureNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _structureName = structureName;
    _structureNameBn = structureNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  BodyStructures.fromJson(dynamic json) {
    _structureName = json['structureName'];
    _structureNameBn = json['structureNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _structureName;
  String? _structureNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get structureName => _structureName;
  String? get structureNameBn => _structureNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['structureName'] = _structureName;
    map['structureNameBn'] = _structureNameBn;
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

class BodyColors {
  BodyColors({
      String? colorName, 
      String? colorNameBn, 
      String? colorCode, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
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

  BodyColors.fromJson(dynamic json) {
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
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get colorName => _colorName;
  String? get colorNameBn => _colorNameBn;
  String? get colorCode => _colorCode;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

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

class BodyChinTypes {
  BodyChinTypes({
      String? chinTypeName, 
      String? chinTypeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _chinTypeName = chinTypeName;
    _chinTypeNameBn = chinTypeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  BodyChinTypes.fromJson(dynamic json) {
    _chinTypeName = json['chinTypeName'];
    _chinTypeNameBn = json['chinTypeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _chinTypeName;
  String? _chinTypeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get chinTypeName => _chinTypeName;
  String? get chinTypeNameBn => _chinTypeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['chinTypeName'] = _chinTypeName;
    map['chinTypeNameBn'] = _chinTypeNameBn;
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

class BeardTypes {
  BeardTypes({
      String? typeName, 
      String? typeNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _typeName = typeName;
    _typeNameBn = typeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  BeardTypes.fromJson(dynamic json) {
    _typeName = json['typeName'];
    _typeNameBn = json['typeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _typeName;
  String? _typeNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get typeName => _typeName;
  String? get typeNameBn => _typeNameBn;
  String? get imagePath => _imagePath;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typeName'] = _typeName;
    map['typeNameBn'] = _typeNameBn;
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

class AgePeriods {
  AgePeriods({
      String? periodName, 
      String? periodNameBn, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _periodName = periodName;
    _periodNameBn = periodNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  AgePeriods.fromJson(dynamic json) {
    _periodName = json['periodName'];
    _periodNameBn = json['periodNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _periodName;
  String? _periodNameBn;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get periodName => _periodName;
  String? get periodNameBn => _periodNameBn;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['periodName'] = _periodName;
    map['periodNameBn'] = _periodNameBn;
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