class OthersItemNameModel {
  OthersItemNameModel({
      dynamic documentFor, 
      String? documentTypeName, 
      String? documentTypeNameBn, 
      String? imagePath, 
      int? shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      String? updatedAt, 
      String? createdBy, 
      String? updatedBy,}){
    _documentFor = documentFor;
    _documentTypeName = documentTypeName;
    _documentTypeNameBn = documentTypeNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  OthersItemNameModel.fromJson(dynamic json) {
    _documentFor = json['documentFor'];
    _documentTypeName = json['documentTypeName'];
    _documentTypeNameBn = json['documentTypeNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  dynamic _documentFor;
  String? _documentTypeName;
  String? _documentTypeNameBn;
  String? _imagePath;
  int? _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _createdBy;
  String? _updatedBy;

  dynamic get documentFor => _documentFor;
  String? get documentTypeName => _documentTypeName;
  String? get documentTypeNameBn => _documentTypeNameBn;
  String? get imagePath => _imagePath;
  int? get shortOrder => _shortOrder;
  int? get id => _id;
  dynamic get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get createdBy => _createdBy;
  String? get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['documentFor'] = _documentFor;
    map['documentTypeName'] = _documentTypeName;
    map['documentTypeNameBn'] = _documentTypeNameBn;
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