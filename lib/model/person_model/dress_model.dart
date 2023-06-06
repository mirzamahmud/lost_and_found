class DressModel {
  DressModel({
      List<InTheBodies>? inTheBodies, 
      List<InTheHeads>? inTheHeads, 
      List<InTheEyes>? inTheEyes, 
      List<InTheLegs>? inTheLegs, 
      List<InTheThroats>? inTheThroats, 
      List<InTheWaists>? inTheWaists,}){
    _inTheBodies = inTheBodies;
    _inTheHeads = inTheHeads;
    _inTheEyes = inTheEyes;
    _inTheLegs = inTheLegs;
    _inTheThroats = inTheThroats;
    _inTheWaists = inTheWaists;
}

  DressModel.fromJson(dynamic json) {
    if (json['inTheBodies'] != null) {
      _inTheBodies = [];
      json['inTheBodies'].forEach((v) {
        _inTheBodies?.add(InTheBodies.fromJson(v));
      });
    }
    if (json['inTheHeads'] != null) {
      _inTheHeads = [];
      json['inTheHeads'].forEach((v) {
        _inTheHeads?.add(InTheHeads.fromJson(v));
      });
    }
    if (json['inTheEyes'] != null) {
      _inTheEyes = [];
      json['inTheEyes'].forEach((v) {
        _inTheEyes?.add(InTheEyes.fromJson(v));
      });
    }
    if (json['inTheLegs'] != null) {
      _inTheLegs = [];
      json['inTheLegs'].forEach((v) {
        _inTheLegs?.add(InTheLegs.fromJson(v));
      });
    }
    if (json['inTheThroats'] != null) {
      _inTheThroats = [];
      json['inTheThroats'].forEach((v) {
        _inTheThroats?.add(InTheThroats.fromJson(v));
      });
    }
    if (json['inTheWaists'] != null) {
      _inTheWaists = [];
      json['inTheWaists'].forEach((v) {
        _inTheWaists?.add(InTheWaists.fromJson(v));
      });
    }
  }
  List<InTheBodies>? _inTheBodies;
  List<InTheHeads>? _inTheHeads;
  List<InTheEyes>? _inTheEyes;
  List<InTheLegs>? _inTheLegs;
  List<InTheThroats>? _inTheThroats;
  List<InTheWaists>? _inTheWaists;

  List<InTheBodies>? get inTheBodies => _inTheBodies;
  List<InTheHeads>? get inTheHeads => _inTheHeads;
  List<InTheEyes>? get inTheEyes => _inTheEyes;
  List<InTheLegs>? get inTheLegs => _inTheLegs;
  List<InTheThroats>? get inTheThroats => _inTheThroats;
  List<InTheWaists>? get inTheWaists => _inTheWaists;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_inTheBodies != null) {
      map['inTheBodies'] = _inTheBodies?.map((v) => v.toJson()).toList();
    }
    if (_inTheHeads != null) {
      map['inTheHeads'] = _inTheHeads?.map((v) => v.toJson()).toList();
    }
    if (_inTheEyes != null) {
      map['inTheEyes'] = _inTheEyes?.map((v) => v.toJson()).toList();
    }
    if (_inTheLegs != null) {
      map['inTheLegs'] = _inTheLegs?.map((v) => v.toJson()).toList();
    }
    if (_inTheThroats != null) {
      map['inTheThroats'] = _inTheThroats?.map((v) => v.toJson()).toList();
    }
    if (_inTheWaists != null) {
      map['inTheWaists'] = _inTheWaists?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class InTheWaists {
  InTheWaists({
      String? name, 
      String? nameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
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

  InTheWaists.fromJson(dynamic json) {
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
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get name => _name;
  String? get nameBn => _nameBn;
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

class InTheThroats {
  InTheThroats({
      String? name, 
      String? nameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
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

  InTheThroats.fromJson(dynamic json) {
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
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get name => _name;
  String? get nameBn => _nameBn;
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

class InTheLegs {
  InTheLegs({
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

  InTheLegs.fromJson(dynamic json) {
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

class InTheEyes {
  InTheEyes({
      String? name, 
      String? nameBn, 
      String? imagePath, 
      int? shortOrder, 
      int? id, 
      dynamic isDelete, 
      dynamic createdAt, 
      dynamic updatedAt, 
      dynamic createdBy, 
      dynamic updatedBy,}){
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

  InTheEyes.fromJson(dynamic json) {
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
  int? _shortOrder;
  int? _id;
  dynamic _isDelete;
  dynamic _createdAt;
  dynamic _updatedAt;
  dynamic _createdBy;
  dynamic _updatedBy;

  String? get name => _name;
  String? get nameBn => _nameBn;
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

class InTheHeads {
  InTheHeads({
      String? name, 
      String? nameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
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

  InTheHeads.fromJson(dynamic json) {
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
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  String? get name => _name;
  String? get nameBn => _nameBn;
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

class InTheBodies {
  InTheBodies({
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

  InTheBodies.fromJson(dynamic json) {
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