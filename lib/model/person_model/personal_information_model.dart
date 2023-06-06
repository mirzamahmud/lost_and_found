class PersonalInformationModel {
  PersonalInformationModel({
      List<Religions>? religions, 
      List<Genders>? genders, 
      List<ReligionCusts>? religionCusts, 
      List<MaritalStatuses>? maritalStatuses, 
      List<RelationTypes>? relationTypes, 
      List<Occupations>? occupations, 
      List<Habits>? habits, 
      List<Speeches>? speeches, 
      List<NumberTypes>? numberTypes, 
      dynamic deadbodyConditions,}){
    _religions = religions;
    _genders = genders;
    _religionCusts = religionCusts;
    _maritalStatuses = maritalStatuses;
    _relationTypes = relationTypes;
    _occupations = occupations;
    _habits = habits;
    _speeches = speeches;
    _numberTypes = numberTypes;
    _deadbodyConditions = deadbodyConditions;
}

  PersonalInformationModel.fromJson(dynamic json) {
    if (json['religions'] != null) {
      _religions = [];
      json['religions'].forEach((v) {
        _religions?.add(Religions.fromJson(v));
      });
    }
    if (json['genders'] != null) {
      _genders = [];
      json['genders'].forEach((v) {
        _genders?.add(Genders.fromJson(v));
      });
    }
    if (json['religionCusts'] != null) {
      _religionCusts = [];
      json['religionCusts'].forEach((v) {
        _religionCusts?.add(ReligionCusts.fromJson(v));
      });
    }
    if (json['maritalStatuses'] != null) {
      _maritalStatuses = [];
      json['maritalStatuses'].forEach((v) {
        _maritalStatuses?.add(MaritalStatuses.fromJson(v));
      });
    }
    if (json['relationTypes'] != null) {
      _relationTypes = [];
      json['relationTypes'].forEach((v) {
        _relationTypes?.add(RelationTypes.fromJson(v));
      });
    }
    if (json['occupations'] != null) {
      _occupations = [];
      json['occupations'].forEach((v) {
        _occupations?.add(Occupations.fromJson(v));
      });
    }
    if (json['habits'] != null) {
      _habits = [];
      json['habits'].forEach((v) {
        _habits?.add(Habits.fromJson(v));
      });
    }
    if (json['speeches'] != null) {
      _speeches = [];
      json['speeches'].forEach((v) {
        _speeches?.add(Speeches.fromJson(v));
      });
    }
    if (json['numberTypes'] != null) {
      _numberTypes = [];
      json['numberTypes'].forEach((v) {
        _numberTypes?.add(NumberTypes.fromJson(v));
      });
    }
    _deadbodyConditions = json['deadbodyConditions'];
  }
  List<Religions>? _religions;
  List<Genders>? _genders;
  List<ReligionCusts>? _religionCusts;
  List<MaritalStatuses>? _maritalStatuses;
  List<RelationTypes>? _relationTypes;
  List<Occupations>? _occupations;
  List<Habits>? _habits;
  List<Speeches>? _speeches;
  List<NumberTypes>? _numberTypes;
  dynamic _deadbodyConditions;

  List<Religions>? get religions => _religions;
  List<Genders>? get genders => _genders;
  List<ReligionCusts>? get religionCusts => _religionCusts;
  List<MaritalStatuses>? get maritalStatuses => _maritalStatuses;
  List<RelationTypes>? get relationTypes => _relationTypes;
  List<Occupations>? get occupations => _occupations;
  List<Habits>? get habits => _habits;
  List<Speeches>? get speeches => _speeches;
  List<NumberTypes>? get numberTypes => _numberTypes;
  dynamic get deadbodyConditions => _deadbodyConditions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_religions != null) {
      map['religions'] = _religions?.map((v) => v.toJson()).toList();
    }
    if (_genders != null) {
      map['genders'] = _genders?.map((v) => v.toJson()).toList();
    }
    if (_religionCusts != null) {
      map['religionCusts'] = _religionCusts?.map((v) => v.toJson()).toList();
    }
    if (_maritalStatuses != null) {
      map['maritalStatuses'] = _maritalStatuses?.map((v) => v.toJson()).toList();
    }
    if (_relationTypes != null) {
      map['relationTypes'] = _relationTypes?.map((v) => v.toJson()).toList();
    }
    if (_occupations != null) {
      map['occupations'] = _occupations?.map((v) => v.toJson()).toList();
    }
    if (_habits != null) {
      map['habits'] = _habits?.map((v) => v.toJson()).toList();
    }
    if (_speeches != null) {
      map['speeches'] = _speeches?.map((v) => v.toJson()).toList();
    }
    if (_numberTypes != null) {
      map['numberTypes'] = _numberTypes?.map((v) => v.toJson()).toList();
    }
    map['deadbodyConditions'] = _deadbodyConditions;
    return map;
  }

}

class NumberTypes {
  NumberTypes({
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

  NumberTypes.fromJson(dynamic json) {
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

class Speeches {
  Speeches({
      String? speechName, 
      String? speechNameBn, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _speechName = speechName;
    _speechNameBn = speechNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  Speeches.fromJson(dynamic json) {
    _speechName = json['speechName'];
    _speechNameBn = json['speechNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _speechName;
  String? _speechNameBn;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get speechName => _speechName;
  String? get speechNameBn => _speechNameBn;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speechName'] = _speechName;
    map['speechNameBn'] = _speechNameBn;
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

class Habits {
  Habits({
      String? habitName, 
      String? habitNameBn, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _habitName = habitName;
    _habitNameBn = habitNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  Habits.fromJson(dynamic json) {
    _habitName = json['habitName'];
    _habitNameBn = json['habitNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _habitName;
  String? _habitNameBn;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get habitName => _habitName;
  String? get habitNameBn => _habitNameBn;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['habitName'] = _habitName;
    map['habitNameBn'] = _habitNameBn;
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

class Occupations {
  Occupations({
      String? name, 
      String? nameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      String? updatedAt, 
      String? createdBy, 
      String? updatedBy,}){
    _name = name;
    _nameBn = nameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  Occupations.fromJson(dynamic json) {
    _name = json['name'];
    _nameBn = json['nameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _name;
  String? _nameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  String? get name => _name;
  String? get nameBn => _nameBn;
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
    map['name'] = _name;
    map['nameBn'] = _nameBn;
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

class RelationTypes {
  RelationTypes({
      String? relationName, 
      String? relationNameBn, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _relationName = relationName;
    _relationNameBn = relationNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  RelationTypes.fromJson(dynamic json) {
    _relationName = json['relationName'];
    _relationNameBn = json['relationNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _relationName;
  String? _relationNameBn;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get relationName => _relationName;
  String? get relationNameBn => _relationNameBn;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['relationName'] = _relationName;
    map['relationNameBn'] = _relationNameBn;
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

class MaritalStatuses {
  MaritalStatuses({
      String? name, 
      String? nameBn, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _name = name;
    _nameBn = nameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  MaritalStatuses.fromJson(dynamic json) {
    _name = json['name'];
    _nameBn = json['nameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _name;
  String? _nameBn;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get name => _name;
  String? get nameBn => _nameBn;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['nameBn'] = _nameBn;
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

class ReligionCusts {
  ReligionCusts({
      int? religionId, 
      Religion? religion, 
      String? custName, 
      String? custNameBn, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _religionId = religionId;
    _religion = religion;
    _custName = custName;
    _custNameBn = custNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  ReligionCusts.fromJson(dynamic json) {
    _religionId = json['religionId'];
    _religion = json['religion'] != null ? Religion.fromJson(json['religion']) : null;
    _custName = json['custName'];
    _custNameBn = json['custNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  int? _religionId;
  Religion? _religion;
  String? _custName;
  String? _custNameBn;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  int? get religionId => _religionId;
  Religion? get religion => _religion;
  String? get custName => _custName;
  String? get custNameBn => _custNameBn;
  dynamic get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['religionId'] = _religionId;
    if (_religion != null) {
      map['religion'] = _religion?.toJson();
    }
    map['custName'] = _custName;
    map['custNameBn'] = _custNameBn;
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

class Religion {
  Religion({
      String? religionName, 
      String? religionNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      String? updatedAt, 
      String? createdBy, 
      String? updatedBy,}){
    _religionName = religionName;
    _religionNameBn = religionNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  Religion.fromJson(dynamic json) {
    _religionName = json['religionName'];
    _religionNameBn = json['religionNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _religionName;
  String? _religionNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  String? get religionName => _religionName;
  String? get religionNameBn => _religionNameBn;
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
    map['religionName'] = _religionName;
    map['religionNameBn'] = _religionNameBn;
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

class Genders {
  Genders({
      String? genderName, 
      String? genderNameBn, 
      int? shortOrder, 
      int? id, 
      dynamic isDelete, 
      dynamic createdAt, 
      dynamic updatedAt, 
      dynamic createdBy, 
      dynamic updatedBy,}){
    _genderName = genderName;
    _genderNameBn = genderNameBn;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  Genders.fromJson(dynamic json) {
    _genderName = json['genderName'];
    _genderNameBn = json['genderNameBn'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _genderName;
  String? _genderNameBn;
  int? _shortOrder;
  int? _id;
  dynamic _isDelete;
  dynamic _createdAt;
  dynamic _updatedAt;
  dynamic _createdBy;
  dynamic _updatedBy;

  String? get genderName => _genderName;
  String? get genderNameBn => _genderNameBn;
  int? get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genderName'] = _genderName;
    map['genderNameBn'] = _genderNameBn;
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

class Religions {
  Religions({
      String? religionName, 
      String? religionNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      String? updatedAt, 
      String? createdBy, 
      String? updatedBy,}){
    _religionName = religionName;
    _religionNameBn = religionNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  Religions.fromJson(dynamic json) {
    _religionName = json['religionName'];
    _religionNameBn = json['religionNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  String? _religionName;
  String? _religionNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  String? get religionName => _religionName;
  String? get religionNameBn => _religionNameBn;
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
    map['religionName'] = _religionName;
    map['religionNameBn'] = _religionNameBn;
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