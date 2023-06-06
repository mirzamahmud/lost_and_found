class TypeByDocIdModel {
  TypeByDocIdModel({
      int? documentTypeId, 
      dynamic documentType, 
      String? categoryName, 
      String? categoryNameBn, 
      String? imagePath, 
      dynamic shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _documentTypeId = documentTypeId;
    _documentType = documentType;
    _categoryName = categoryName;
    _categoryNameBn = categoryNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  TypeByDocIdModel.fromJson(dynamic json) {
    _documentTypeId = json['documentTypeId'];
    _documentType = json['documentType'];
    _categoryName = json['categoryName'];
    _categoryNameBn = json['categoryNameBn'];
    _imagePath = json['imagePath'];
    _shortOrder = json['shortOrder'];
    _id = json['Id'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
  }
  int? _documentTypeId;
  dynamic _documentType;
  String? _categoryName;
  String? _categoryNameBn;
  String? _imagePath;
  dynamic _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  int? get documentTypeId => _documentTypeId;
  dynamic get documentType => _documentType;
  String? get categoryName => _categoryName;
  String? get categoryNameBn => _categoryNameBn;
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
    map['documentTypeId'] = _documentTypeId;
    map['documentType'] = _documentType;
    map['categoryName'] = _categoryName;
    map['categoryNameBn'] = _categoryNameBn;
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