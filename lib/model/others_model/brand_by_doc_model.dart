class BrandByDocModel {
  BrandByDocModel({
      int? documentTypeId, 
      dynamic documentType, 
      dynamic documentCategoryId, 
      dynamic documentCategory, 
      String? brandName, 
      String? brandNameBn, 
      String? imagePath, 
      int? shortOrder, 
      int? id, 
      dynamic isDelete, 
      String? createdAt, 
      dynamic updatedAt, 
      String? createdBy, 
      dynamic updatedBy,}){
    _documentTypeId = documentTypeId;
    _documentType = documentType;
    _documentCategoryId = documentCategoryId;
    _documentCategory = documentCategory;
    _brandName = brandName;
    _brandNameBn = brandNameBn;
    _imagePath = imagePath;
    _shortOrder = shortOrder;
    _id = id;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  BrandByDocModel.fromJson(dynamic json) {
    _documentTypeId = json['documentTypeId'];
    _documentType = json['documentType'];
    _documentCategoryId = json['documentCategoryId'];
    _documentCategory = json['documentCategory'];
    _brandName = json['brandName'];
    _brandNameBn = json['brandNameBn'];
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
  dynamic _documentCategoryId;
  dynamic _documentCategory;
  String? _brandName;
  String? _brandNameBn;
  String? _imagePath;
  int? _shortOrder;
  int? _id;
  dynamic _isDelete;
  String? _createdAt;
  dynamic _updatedAt;
  String? _createdBy;
  dynamic _updatedBy;

  int? get documentTypeId => _documentTypeId;
  dynamic get documentType => _documentType;
  dynamic get documentCategoryId => _documentCategoryId;
  dynamic get documentCategory => _documentCategory;
  String? get brandName => _brandName;
  String? get brandNameBn => _brandNameBn;
  String? get imagePath => _imagePath;
  int? get shortOrder => _shortOrder;
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
    map['documentCategoryId'] = _documentCategoryId;
    map['documentCategory'] = _documentCategory;
    map['brandName'] = _brandName;
    map['brandNameBn'] = _brandNameBn;
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