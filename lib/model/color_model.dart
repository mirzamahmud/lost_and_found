class ColorModel {
  ColorModel({
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

  ColorModel.fromJson(dynamic json) {
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