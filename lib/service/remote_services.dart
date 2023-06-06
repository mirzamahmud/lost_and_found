import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:online_gd/model/district_model.dart';
import 'package:online_gd/model/gd_details.dart';
import 'package:online_gd/model/person_model/person_post_model.dart';
import 'package:online_gd/model/thana_model.dart';
import 'package:online_gd/model/vehicle_search_result_model.dart';
import 'package:online_gd/util/http_exception.dart';
import '../model/color_model.dart';
import '../model/person_model/man_search_model.dart';
import '../model/nid_model.dart';
import '../model/others_model/brand_by_doc_model.dart';
import '../model/others_model/comp_accessories_model.dart';
import '../model/others_model/document_brand_by_doc_id.dart';
import '../model/others_model/os_model.dart';
import '../model/others_model/others_item_name_model.dart';
import '../model/person_model/dress_model.dart';
import '../model/person_model/person_physical_model.dart';
import '../model/person_model/personal_information_model.dart';
import '../model/others_model/type_by_doc_id_model.dart';
import '../model/security_question_model.dart';
import '../model/union_model.dart';
import '../model/vehicle_model.dart';
import '../model/village_model.dart';
import 'my_prefs.dart';

class RemoteServices {
  static var client = http.Client();

  // Training Server
  // static String? baseUrl = 'http://10.201.30.25:21422/';

    // live urls

  static String? baseUrl = 'http://gdtraining.police.gov.bd/';
  // static String? baseUrl = 'http://gd.police.gov.bd/';


  static final prefs = Get.find<MyPrefs>();

  // Send contact number
  static Future<void> sendContact(List contactList) async {
    final url = baseUrl! + 'api/Account/SaveUserDeviceContactNumber';

    try {
      var response = await client.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode({'userName': prefs.username.val, 'contactNumbers': contactList}));

      if (response.statusCode == 200) {
      } else {
        throw HttpException('Registration error code: ${response.statusCode}');
      }
    } catch (error) {
      throw error.toString();
    }
  }

  //user authentication
  static Future<dynamic> authenticate(String username, String password) async {
    final url = baseUrl! + 'api/AccountInfo/LogIn';
    var data;

    var response = await client.post(Uri.parse(url),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'Name': username, 'Password': password}));

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);

      prefs.token.val = responseBody['jwt'];
      prefs.userImage.val = responseBody['userInfo']['ImagePath'];
      prefs.username.val = responseBody['userInfo']['UserName'];
      prefs.fullname.val = responseBody['userInfo']['FullName'] ?? responseBody['userInfo']['UserName'];
      prefs.email.val = responseBody['userInfo']['Email'];
      prefs.phone.val = responseBody['userInfo']['PhoneNumber'];
      prefs.country.val = responseBody['userInfo']['Citizenship'];
      prefs.nid.val = responseBody['userInfo']['NationalIdentityNo'];

      data = responseBody;
    } else if (response.statusCode == 502) {
      throw HttpException('error');
    } else if (response.statusCode == 400) {
      final responseBody = json.decode(response.body);
      if (responseBody['login_failure'] != null) {
        throw HttpException(responseBody['login_failure'][0]);
      } else {
        throw HttpException('Something went wrong!');
      }
    }
    return data;
  }

  // File upload
  static upload(String username, String imagePath) async {
    var request = http.MultipartRequest('POST', Uri.parse(baseUrl! + 'api/AccountInfo/UploadUserImage'));
    request.fields.addAll({'userName': username});
    request.files.add(await http.MultipartFile.fromPath('formFile', imagePath));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  // Multiple file upload
  static multipleUpload(String id, List types, List<String?> images) async {
    var request = http.MultipartRequest('POST', Uri.parse(baseUrl! + 'api/LostFound/UploadMultipleImageV2'));

    request.fields['id'] = '29539';
    for (var type in types) {
      request.fields['types'] = type;
    }
    for (var file in images) {
      request.files.add(await http.MultipartFile.fromPath('formFiles', file!));
    }

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print('Multiple Image Upload: Successful');
      print(await response.stream.bytesToString());
    } else {
      print('Else error: ${response.statusCode}');
    }
  }

  // Registration api for otp and registration
  static Future<Map<String, dynamic>> registration(registrationData) async {
    final url = baseUrl! + 'api/AccountInfo/Register';

    try {
      var response = await client.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(registrationData));

      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        prefs.token.val = responseBody['jwt'];
        prefs.userImage.val = responseBody['userInfo']['ImagePath'];
        prefs.username.val = responseBody['userInfo']['UserName'];
        prefs.fullname.val = responseBody['userInfo']['FullName'] ?? responseBody['userInfo']['UserName'];
        prefs.email.val = responseBody['userInfo']['Email'];
        prefs.phone.val = responseBody['userInfo']['PhoneNumber'];
        prefs.country.val = responseBody['userInfo']['Citizenship'];
        prefs.nid.val = responseBody['userInfo']['NationalIdentityNo'];

        return responseBody;
      } else {
        throw HttpException('Registration error code: ${response.statusCode}');
      }
    } catch (error) {
      throw error.toString();
    }
  }

  // NID Check api
  static Future<Map<String, dynamic>> nidCheck(String nidNumber) async {
    final url = baseUrl! + 'LostFound/Search/GDOwnerByNID/$nidNumber';

    var response = await client.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      if (responseBody == null) {
        return {'error': 'error'};
      } else {
        return responseBody;
      }
    } else {
      throw HttpException('error');
    }
  }

  // NID api call
  static Future<NidModel> nidApiCall(String nidNumber, String nidDate) async {
    final url = 'http://gd.police.gov.bd/api/NationalIdentityInfo/GetNationalIdentityInfo/$nidNumber/$nidDate';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      return NidModel.fromJson(responseBody);
    } else {
      throw HttpException('error');
    }
  }

  // Vehicle Master data
  static Future<VehicleModel> vehicleMasterData() async {
    final url = baseUrl! + 'api/DocumentMaster/GetVehicleMasterData';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      return VehicleModel.fromJson(responseBody);
    } else {
      throw HttpException('error');
    }
  }

  // Other item name api
  static Future<List<OthersItemNameModel>> otherItemNameApi() async {
    final url = baseUrl! + 'api/DocumentMaster/GetAllDocumentType';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<OthersItemNameModel> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(OthersItemNameModel.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Something went wrong, please try again later!');
    }
  }

  // Computer accessories brand data
  static Future<List<CompAccessoriesModel>> compAccessoriesData() async {
    final url = baseUrl! + 'api/DocumentMaster/GetAllComputerAccessoriesBrand';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<CompAccessoriesModel> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(CompAccessoriesModel.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Something went wrong, please try again later!');
    }
  }

  // Color api
  static Future<List<ColorModel>> colorListApi() async {
    final url = baseUrl! + 'api/DocumentMaster/GetColors';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<ColorModel> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(ColorModel.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Something went wrong, please try again later!');
    }
  }

  // Security Question call
  static Future<SecurityQuestionModel> securityQuestionCall() async {
    final url = baseUrl! + 'api/Auth/Account/GetSequirityQuestion';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      return SecurityQuestionModel.fromJson(responseBody);
    } else {
      throw HttpException('error');
    }
  }

  // District List
  static Future<List<DistrictModel>> districtListApi() async {
    final url = baseUrl! + 'api/AddressMaster/GetAllDistrict';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<DistrictModel> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(DistrictModel.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Something went wrong, please try again later!');
    }
  }

  // Thana List
  static Future<List<ThanaModel>> thanaListApi(int districtId) async {
    final url = baseUrl! + 'api/AddressMaster/GetThanaByDistrictId/$districtId';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<ThanaModel> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(ThanaModel.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Something went wrong, please try again later!');
    }
  }

  // Union List
  static Future<List<UnionModel>> unionListApi(int thanaId) async {
    final url = baseUrl! + 'api/AddressMaster/GetUnionWardsByThanaId/$thanaId';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<UnionModel> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(UnionModel.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Something went wrong, please try again later!');
    }
  }

  // Village List
  static Future<List<VillageModel>> villageListApi(int unionId) async {
    final url = baseUrl! + 'api/AddressMaster/GetAllVillageByUnionId/$unionId';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<VillageModel> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(VillageModel.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Something went wrong, please try again later!');
    }
  }

  // Personal information master data
  static Future<PersonalInformationModel> personalInfoMasterData() async {
    final url = baseUrl! + 'api/ExtendMaster/GetPersonalInformationMasterData';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);

      return PersonalInformationModel.fromJson(responseBody);
    } else {
      throw HttpException('Something went wrong, please try again later!');
    }
  }

  // Personal physical information master data
  static Future<PersonPhysicalModel> personPhysicalInfoMasterData() async {
    final url = baseUrl! + 'api/ExtendMaster/GetPhysicalInformationMasterData';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);

      return PersonPhysicalModel.fromJson(responseBody);
    } else {
      throw HttpException('Something went wrong, please try again later!');
    }
  }

  // Person Dress information master data
  static Future<DressModel> personDressMasterData() async {
    final url = baseUrl! + 'api/ExtendMaster/GetDressInformationMasterData';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);

      return DressModel.fromJson(responseBody);
    } else {
      throw HttpException('Something went wrong, please try again later!');
    }
  }

  // Top header List
  static Future<Map<String, dynamic>> allGDCount() async {
    try {
      final url = baseUrl! + 'api/LostFound/GeneralUserCount?Username=${prefs.username.val}';

      var response = await client.get(Uri.parse(url),
          headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        return responseBody;
      } else {
        throw HttpException('Something went wrong, please try again later!');
      }
    } catch (error) {
      throw HttpException(error.toString());
    }
    /*final url = baseUrl! +
        'api/LostFound/GeneralUserCount?Username=${prefs.username.val}';

    var response = await client.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${prefs.token.val}'
    });*/
  }

  static Future<List<GdDetails>> allGDStatus(int statusID) async {
    final url = baseUrl! + 'api/LostFound/GeneralUser?username=${prefs.username.val}&status=$statusID';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<GdDetails> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(GdDetails.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Something went wrong, please try again later!');
    }
  }

  // Vehicle entry post api
  static Future<Map<String, dynamic>> uploadVehicleEntry(vehicleData) async {
    final url = baseUrl! + 'api/LostFound/SaveGDInformation';

    try {
      var response = await client.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer ${prefs.token.val}'
          },
          body: jsonEncode(vehicleData));

      if (response.statusCode == 302) {
        throw HttpException('Please check your input');
      }

      final responseBody = json.decode(response.body);
      return responseBody;
    } catch (error) {
      throw error.toString();
    }
  }

  // Operating system api
  static Future<List<OsModel>> allOSType() async {
    final url = baseUrl! + 'api/DocumentMaster/GetAllOperatingSystemType';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<OsModel> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(OsModel.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Error from OS api call');
    }
  }

  // Brand by doc api
  static Future<List<BrandByDocModel>> brandListById(int docId) async {
    final url = baseUrl! + 'api/DocumentMaster/GetDocumentCategoryBrandByDocumentTypeId/$docId';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<BrandByDocModel> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(BrandByDocModel.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Error from OS api call');
    }
  }

  // Type by doc id api
  static Future<List<TypeByDocIdModel>> typeListByDocId(int docId) async {
    final url = baseUrl! + 'api/DocumentMaster/GetDocumentCategoryByTypeId/$docId';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<TypeByDocIdModel> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(TypeByDocIdModel.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Error from Type api call');
    }
  }

  // Brand by doc id api
  static Future<List<DocumentBrandByDocId>> documentBrandByDocId(int docId) async {
    final url = baseUrl! + 'api/DocumentMaster/GetDocumentCategoryBrandByDocumentTypeId/$docId';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<DocumentBrandByDocId> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(DocumentBrandByDocId.fromJson(element));
      }
      return loadedItem;
    } else {
      throw HttpException('Error from Type api call');
    }
  }

  // Others entry post api
  static Future<Map<String, dynamic>> uploadOthersEntry(othersData) async {
    final url = baseUrl! + 'api/LostFound/SaveOthersDocument';

    try {
      var response = await client.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer ${prefs.token.val}'
          },
          body: jsonEncode(othersData));

      final responseBody = json.decode(response.body);
      return responseBody;
    } catch (error) {
      print('Pet Error: $error');
      throw error.toString();
    }
  }

  // Document post api
  static Future<Map<String, dynamic>> documentPostEntry(docData) async {
    final url = baseUrl! + 'api/LostFound/SaveDocument';

    try {
      var response = await client.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer ${prefs.token.val}'
          },
          body: jsonEncode(docData));

      final responseBody = json.decode(response.body);
      return responseBody;
    } catch (error) {
      throw error.toString();
    }
  }

  // Person post api
  static Future<Map<String, dynamic>> personPostEntry(PersonPostModel? personModel) async {
    final url = baseUrl! + 'api/LostFound/SaveGDManInformation';

    try {
      var response = await client.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer ${prefs.token.val}'
          },
          body: jsonEncode(personModel?.toJson()));

      if (response.statusCode == 302) {
        throw HttpException('Please check your input');
      }

      final responseBody = json.decode(response.body);
      return responseBody;
    } catch (error) {
      throw error.toString();
    }
  }

  // Person search result api
  static Future<List<ManSearchModel>> personAllResult(PersonPostModel personModel) async {
    final url = baseUrl! + 'api/LostFound/GetMenGDInformationBySearchingAll';

    try {
      var response = await client.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer ${prefs.token.val}'
          },
          body: jsonEncode(personModel.toJson()));

      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        List<ManSearchModel> loadedItem = [];
        for (var element in responseBody) {
          loadedItem.add(ManSearchModel.fromJson(element));
        }
        return loadedItem;
      } else if (response.statusCode == 302) {
        throw HttpException('Please check your input');
      } else {
        throw HttpException('Error from Man Search');
      }
    } catch (error) {
      throw error.toString();
    }
  }

// Vehicles result get
  static Future<List<VehicleSearchResultModel>> vehicleSearchResultGet(int vehicleId) async {
    final url = baseUrl! +
        'api/LostFound/GetVehicleInformationBySearching/$vehicleId/0/NA/NA/NA/NA/NA/0/${prefs.username.val}/NA';

    var response = await client.get(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${prefs.token.val}'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<VehicleSearchResultModel> loadedItem = [];
      for (var element in responseBody) {
        loadedItem.add(VehicleSearchResultModel.fromJson(element));
      }

      return loadedItem;
    } else {
      throw HttpException('Error from OS api call');
    }
  }

  // Forget password sequrity check post api
  static Future<dynamic> forgetPasswordSecurityCheck(Map<String, dynamic> securityData) async {
    final url = baseUrl! + 'api/AccountInfo/SecurityQuestionCheck';

    try {
      var response = await client.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer ${prefs.token.val}'
          },
          body: jsonEncode(securityData));

      if (response.statusCode == 302) {
        throw HttpException('Please check your input');
      }

      return response.body.toString();
    } catch (error) {
      throw error;
    }
  }
}
