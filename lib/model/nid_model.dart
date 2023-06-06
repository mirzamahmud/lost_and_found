/// requestId : "7b6bede2-704f-4c92-bcb4-e655aee7b721"
/// name : "মোঃ দেলোয়ার হোসেন"
/// nameEn : "Mohammad Delowar Hossain"
/// gender : "male"
/// bloodGroup : "B+"
/// dateOfBirth : "1988-10-10"
/// father : "মোঃ মতিউর রহমান"
/// mother : "হালিমা"
/// spouse : ""
/// nationalId : "5082684266"
/// permanentAddress : {"division":"ঢাকা","district":"কিশোরগঞ্জ","rmo":"1","upozila":"কটিয়াদী","unionOrWard":null,"postOffice":"মুচুয়া","postalCode":"","additionalMouzaOrMoholla":"","additionalVillageOrRoad":"ফুলদি","homeOrHoldingNo":"","region":"ময়মনসিংহ"}
/// photo : "https://prportal.nidw.gov.bd/file-ea/d/6/f/b9494e5f-a273-102b-b531-809d930a783c/Photo-b9494e5f-a273-102b-b531-809d930a783c.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=fileobj%2F20220203%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220203T105703Z&X-Amz-Expires=120&X-Amz-SignedHeaders=host&X-Amz-Signature=21d7053b7305cf2d7d6ae1db5078643ebb39732ce633e32629367c27d8008c48"
/// presentAddress : {"division":"ঢাকা","district":"ঢাকা","rmo":"9","upozila":"মোহাম্মদপুর","cityCorporationOrMunicipality":"ঢাকা উত্তর সিটি কর্পোরেশন","unionOrWard":"ওয়ার্ড নং-২৮","postOffice":"মোহাম্মদপুর","postalCode":"1207","wardForUnionPorishod":0,"additionalMouzaOrMoholla":"পশ্চিম আগারগাঁও দক্ষিন অংশ","additionalVillageOrRoad":"পশ্চিমআগারগাও দক্ষিন","homeOrHoldingNo":"৩১","region":"ঢাকা"}
/// voterArea : "পশ্চিম আগারগাঁও দক্ষিন অংশ"
/// voterAreaCode : ""
/// mobile : ""
/// religion : "muslim"
/// nidFather : ""
/// nidMother : ""
/// access_token : null
/// refresh_token : null
/// picture : null

class NidModel {
  NidModel({
      String? requestId, 
      String? name, 
      String? nameEn, 
      String? gender, 
      String? bloodGroup, 
      String? dateOfBirth, 
      String? father, 
      String? mother, 
      String? spouse, 
      String? nationalId, 
      PermanentAddress? permanentAddress, 
      String? photo, 
      PresentAddress? presentAddress, 
      String? voterArea, 
      String? voterAreaCode, 
      String? mobile, 
      String? religion, 
      String? nidFather, 
      String? nidMother, 
      dynamic accessToken, 
      dynamic refreshToken, 
      dynamic picture,}){
    _requestId = requestId;
    _name = name;
    _nameEn = nameEn;
    _gender = gender;
    _bloodGroup = bloodGroup;
    _dateOfBirth = dateOfBirth;
    _father = father;
    _mother = mother;
    _spouse = spouse;
    _nationalId = nationalId;
    _permanentAddress = permanentAddress;
    _photo = photo;
    _presentAddress = presentAddress;
    _voterArea = voterArea;
    _voterAreaCode = voterAreaCode;
    _mobile = mobile;
    _religion = religion;
    _nidFather = nidFather;
    _nidMother = nidMother;
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    _picture = picture;
}

  NidModel.fromJson(dynamic json) {
    _requestId = json['requestId'];
    _name = json['name'];
    _nameEn = json['nameEn'];
    _gender = json['gender'];
    _bloodGroup = json['bloodGroup'];
    _dateOfBirth = json['dateOfBirth'];
    _father = json['father'];
    _mother = json['mother'];
    _spouse = json['spouse'];
    _nationalId = json['nationalId'];
    _permanentAddress = json['permanentAddress'] != null ? PermanentAddress.fromJson(json['permanentAddress']) : null;
    _photo = json['photo'];
    _presentAddress = json['presentAddress'] != null ? PresentAddress.fromJson(json['presentAddress']) : null;
    _voterArea = json['voterArea'];
    _voterAreaCode = json['voterAreaCode'];
    _mobile = json['mobile'];
    _religion = json['religion'];
    _nidFather = json['nidFather'];
    _nidMother = json['nidMother'];
    _accessToken = json['access_token'];
    _refreshToken = json['refresh_token'];
    _picture = json['picture'];
  }
  String? _requestId;
  String? _name;
  String? _nameEn;
  String? _gender;
  String? _bloodGroup;
  String? _dateOfBirth;
  String? _father;
  String? _mother;
  String? _spouse;
  String? _nationalId;
  PermanentAddress? _permanentAddress;
  String? _photo;
  PresentAddress? _presentAddress;
  String? _voterArea;
  String? _voterAreaCode;
  String? _mobile;
  String? _religion;
  String? _nidFather;
  String? _nidMother;
  dynamic _accessToken;
  dynamic _refreshToken;
  dynamic _picture;

  String? get requestId => _requestId;
  String? get name => _name;
  String? get nameEn => _nameEn;
  String? get gender => _gender;
  String? get bloodGroup => _bloodGroup;
  String? get dateOfBirth => _dateOfBirth;
  String? get father => _father;
  String? get mother => _mother;
  String? get spouse => _spouse;
  String? get nationalId => _nationalId;
  PermanentAddress? get permanentAddress => _permanentAddress;
  String? get photo => _photo;
  PresentAddress? get presentAddress => _presentAddress;
  String? get voterArea => _voterArea;
  String? get voterAreaCode => _voterAreaCode;
  String? get mobile => _mobile;
  String? get religion => _religion;
  String? get nidFather => _nidFather;
  String? get nidMother => _nidMother;
  dynamic get accessToken => _accessToken;
  dynamic get refreshToken => _refreshToken;
  dynamic get picture => _picture;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['requestId'] = _requestId;
    map['name'] = _name;
    map['nameEn'] = _nameEn;
    map['gender'] = _gender;
    map['bloodGroup'] = _bloodGroup;
    map['dateOfBirth'] = _dateOfBirth;
    map['father'] = _father;
    map['mother'] = _mother;
    map['spouse'] = _spouse;
    map['nationalId'] = _nationalId;
    if (_permanentAddress != null) {
      map['permanentAddress'] = _permanentAddress?.toJson();
    }
    map['photo'] = _photo;
    if (_presentAddress != null) {
      map['presentAddress'] = _presentAddress?.toJson();
    }
    map['voterArea'] = _voterArea;
    map['voterAreaCode'] = _voterAreaCode;
    map['mobile'] = _mobile;
    map['religion'] = _religion;
    map['nidFather'] = _nidFather;
    map['nidMother'] = _nidMother;
    map['access_token'] = _accessToken;
    map['refresh_token'] = _refreshToken;
    map['picture'] = _picture;
    return map;
  }

}

/// division : "ঢাকা"
/// district : "ঢাকা"
/// rmo : "9"
/// upozila : "মোহাম্মদপুর"
/// cityCorporationOrMunicipality : "ঢাকা উত্তর সিটি কর্পোরেশন"
/// unionOrWard : "ওয়ার্ড নং-২৮"
/// postOffice : "মোহাম্মদপুর"
/// postalCode : "1207"
/// wardForUnionPorishod : 0
/// additionalMouzaOrMoholla : "পশ্চিম আগারগাঁও দক্ষিন অংশ"
/// additionalVillageOrRoad : "পশ্চিমআগারগাও দক্ষিন"
/// homeOrHoldingNo : "৩১"
/// region : "ঢাকা"

class PresentAddress {
  PresentAddress({
      String? division, 
      String? district, 
      String? rmo, 
      String? upozila, 
      String? cityCorporationOrMunicipality, 
      String? unionOrWard, 
      String? postOffice, 
      String? postalCode, 
      int? wardForUnionPorishod, 
      String? additionalMouzaOrMoholla, 
      String? additionalVillageOrRoad, 
      String? homeOrHoldingNo, 
      String? region,}){
    _division = division;
    _district = district;
    _rmo = rmo;
    _upozila = upozila;
    _cityCorporationOrMunicipality = cityCorporationOrMunicipality;
    _unionOrWard = unionOrWard;
    _postOffice = postOffice;
    _postalCode = postalCode;
    _wardForUnionPorishod = wardForUnionPorishod;
    _additionalMouzaOrMoholla = additionalMouzaOrMoholla;
    _additionalVillageOrRoad = additionalVillageOrRoad;
    _homeOrHoldingNo = homeOrHoldingNo;
    _region = region;
}

  PresentAddress.fromJson(dynamic json) {
    _division = json['division'];
    _district = json['district'];
    _rmo = json['rmo'];
    _upozila = json['upozila'];
    _cityCorporationOrMunicipality = json['cityCorporationOrMunicipality'];
    _unionOrWard = json['unionOrWard'];
    _postOffice = json['postOffice'];
    _postalCode = json['postalCode'];
    _wardForUnionPorishod = json['wardForUnionPorishod'];
    _additionalMouzaOrMoholla = json['additionalMouzaOrMoholla'];
    _additionalVillageOrRoad = json['additionalVillageOrRoad'];
    _homeOrHoldingNo = json['homeOrHoldingNo'];
    _region = json['region'];
  }
  String? _division;
  String? _district;
  String? _rmo;
  String? _upozila;
  String? _cityCorporationOrMunicipality;
  String? _unionOrWard;
  String? _postOffice;
  String? _postalCode;
  int? _wardForUnionPorishod;
  String? _additionalMouzaOrMoholla;
  String? _additionalVillageOrRoad;
  String? _homeOrHoldingNo;
  String? _region;

  String? get division => _division;
  String? get district => _district;
  String? get rmo => _rmo;
  String? get upozila => _upozila;
  String? get cityCorporationOrMunicipality => _cityCorporationOrMunicipality;
  String? get unionOrWard => _unionOrWard;
  String? get postOffice => _postOffice;
  String? get postalCode => _postalCode;
  int? get wardForUnionPorishod => _wardForUnionPorishod;
  String? get additionalMouzaOrMoholla => _additionalMouzaOrMoholla;
  String? get additionalVillageOrRoad => _additionalVillageOrRoad;
  String? get homeOrHoldingNo => _homeOrHoldingNo;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['division'] = _division;
    map['district'] = _district;
    map['rmo'] = _rmo;
    map['upozila'] = _upozila;
    map['cityCorporationOrMunicipality'] = _cityCorporationOrMunicipality;
    map['unionOrWard'] = _unionOrWard;
    map['postOffice'] = _postOffice;
    map['postalCode'] = _postalCode;
    map['wardForUnionPorishod'] = _wardForUnionPorishod;
    map['additionalMouzaOrMoholla'] = _additionalMouzaOrMoholla;
    map['additionalVillageOrRoad'] = _additionalVillageOrRoad;
    map['homeOrHoldingNo'] = _homeOrHoldingNo;
    map['region'] = _region;
    return map;
  }

}

/// division : "ঢাকা"
/// district : "কিশোরগঞ্জ"
/// rmo : "1"
/// upozila : "কটিয়াদী"
/// unionOrWard : null
/// postOffice : "মুচুয়া"
/// postalCode : ""
/// additionalMouzaOrMoholla : ""
/// additionalVillageOrRoad : "ফুলদি"
/// homeOrHoldingNo : ""
/// region : "ময়মনসিংহ"

class PermanentAddress {
  PermanentAddress({
      String? division, 
      String? district, 
      String? rmo, 
      String? upozila, 
      dynamic unionOrWard, 
      String? postOffice, 
      String? postalCode, 
      String? additionalMouzaOrMoholla, 
      String? additionalVillageOrRoad, 
      String? homeOrHoldingNo, 
      String? region,}){
    _division = division;
    _district = district;
    _rmo = rmo;
    _upozila = upozila;
    _unionOrWard = unionOrWard;
    _postOffice = postOffice;
    _postalCode = postalCode;
    _additionalMouzaOrMoholla = additionalMouzaOrMoholla;
    _additionalVillageOrRoad = additionalVillageOrRoad;
    _homeOrHoldingNo = homeOrHoldingNo;
    _region = region;
}

  PermanentAddress.fromJson(dynamic json) {
    _division = json['division'];
    _district = json['district'];
    _rmo = json['rmo'];
    _upozila = json['upozila'];
    _unionOrWard = json['unionOrWard'];
    _postOffice = json['postOffice'];
    _postalCode = json['postalCode'];
    _additionalMouzaOrMoholla = json['additionalMouzaOrMoholla'];
    _additionalVillageOrRoad = json['additionalVillageOrRoad'];
    _homeOrHoldingNo = json['homeOrHoldingNo'];
    _region = json['region'];
  }
  String? _division;
  String? _district;
  String? _rmo;
  String? _upozila;
  dynamic _unionOrWard;
  String? _postOffice;
  String? _postalCode;
  String? _additionalMouzaOrMoholla;
  String? _additionalVillageOrRoad;
  String? _homeOrHoldingNo;
  String? _region;

  String? get division => _division;
  String? get district => _district;
  String? get rmo => _rmo;
  String? get upozila => _upozila;
  dynamic get unionOrWard => _unionOrWard;
  String? get postOffice => _postOffice;
  String? get postalCode => _postalCode;
  String? get additionalMouzaOrMoholla => _additionalMouzaOrMoholla;
  String? get additionalVillageOrRoad => _additionalVillageOrRoad;
  String? get homeOrHoldingNo => _homeOrHoldingNo;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['division'] = _division;
    map['district'] = _district;
    map['rmo'] = _rmo;
    map['upozila'] = _upozila;
    map['unionOrWard'] = _unionOrWard;
    map['postOffice'] = _postOffice;
    map['postalCode'] = _postalCode;
    map['additionalMouzaOrMoholla'] = _additionalMouzaOrMoholla;
    map['additionalVillageOrRoad'] = _additionalVillageOrRoad;
    map['homeOrHoldingNo'] = _homeOrHoldingNo;
    map['region'] = _region;
    return map;
  }

}