import 'dart:io';

import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/model/others_model/comp_accessories_model.dart';
import 'package:online_gd/service/remote_services.dart';

import '../../model/others_model/brand_by_doc_model.dart';
import '../../model/others_model/document_brand_by_doc_id.dart';
import '../../model/others_model/os_model.dart';
import '../../model/others_model/type_by_doc_id_model.dart';
import '../../screen/ui/reused_expansion/confirmation_screen.dart';
import '../../service/my_prefs.dart';
import '../../util/constants.dart';

class OthersEntryController extends GetxController {
  final isLoading = false.obs;

  final accessoriesBrand = <CompAccessoriesModel>[].obs;
  final osTypeList = <OsModel>[].obs;
  final brandByDocList = <BrandByDocModel>[].obs;
  final typeListByDoc = <TypeByDocIdModel>[].obs;
  final docBrandListByDocId = <DocumentBrandByDocId>[].obs;

  // Images
  final otherIdentityImage = <File?>[].obs;
  final otherImageAndDocList = <String?>[];

  final documentId = 0.obs;
  final gdId = ''.obs;
  final gdNumber = ''.obs;
  var fileType = [];

  @override
  void onInit() {
    getAccessoriesBrandList();
    super.onInit();
  }

  // Computer entry map
  // final apiPostData = {
  //   'gdFor': Constants.own,
  //   'storyFullDescription': '',
  //   'gdDate': Constants.apiFormatDate(DateTime.now()),
  //   'gdNumber': 'null',
  //   'productTypeId': null,
  //   'gDTypeId': null,
  //   'documentTypeId': 1,
  //   'documentDescription': 'null',
  //   'nationalIdentityTypeId': null,
  //   'entryFor': null,
  //   'identityNo': 'null',
  //   'mobileNo': null,
  //   'userName': Get.find<MyPrefs>().username.val,
  //   'brandTypeId': null,
  //   'model': 'null',
  //   'serialNo': '',
  //   'emcProductId': '',
  //   'serviceCode': '',
  //   'colorId': null,
  //   'price': null,
  //   'currency': 'null',
  //   'identificationMark': '',
  //   'postOfficeId': null,
  //   'unionWard': '',
  //   'thanaId': null,
  //   'thana': '',
  //   'districtsId': null,
  //   'districts': '',
  //   'villegeId': null,
  //   'villageName': '',
  //   'villageNameBn': 'null',
  //   'addressDetails': '',
  //   'lafDate': '',
  //   'lafTime': '',
  //   'quantity': null,
  //   'rOMSize': 'null',
  //   'rOM': '',
  //   'rAMSize': '',
  //   'rAM': '',
  //   'battery': '',
  //   'serial': '',
  //   'iME': '',
  //   'macAddress': '',
  //   'mobileModel': '',
  //   'operatingSystem': null,
  //   'brands': null,
  //   'accessories': '',
  //   'dropDownIDType': null,
  // }.obs;

  // Document entry map
  // final apiPostData = {
  //   "addressDetails": "",
  //   "amount": "",
  //   "bank": "",
  //   "bankBranch": "",
  //   "board": "Board",
  //   "chequebook": "",
  //   "chequebookPage": "",
  //   "chesisNumber": "",
  //   "company": "",
  //   "designation": "",
  //   "details": "",
  //   "districtId": 0,
  //   "documentCategoryId": "",
  //   "documentDescription": null,
  //   "documentNumber": "",
  //   "documentTypeId": 0,
  //   "enginNumber": "",
  //   "entryFor": 1,
  //   "expireDate": "",
  //   "gDTypeId": 0, // Declared in Dashboard
  //   "gdDate": Constants.apiFormatDate(DateTime.now()),
  //   "gdFor": Constants.own,
  //   "gdNumber": null,
  //   "identifySign": "",
  //   "identityNo": null,
  //   "institute": "",
  //   "issueDate": "",
  //   "lafDate": "",
  //   "lafTime": "",
  //   "mobileNo": null,
  //   "nationalIdentityTypeId": 1,
  //   "productTypeId": null,
  //   "result": "",
  //   "school": "",
  //   "session": "",
  //   "storyfullDescription": "",
  //   "student": "",
  //   "thanaId": 0,
  //   "unionWard": "",
  //   "unionWardId": 0,
  //   "userName": Get.find<MyPrefs>().username.val,
  //   "village": "",
  //   "villageName": "",
  //   "villegeId": 0
  // }.obs;

  final othersPreviewName = {
    'othersIdentity': '',
    'colorName': '',
    'othersFullDetails': '',
    //bag
    'bagType': '',
    'shap': '',
    'price': '',
    'amount': '',
    'model': '',
    'serialNo': '',
    'quantity': '',
    //card
    'cardType': '',
    'cardBrandType': '',
    'bankName': '',
    'cardNo': '',
    'orgName': '',
    'personName': '',
    //cosmetics
    'cosmeticShap': '',
    'cosmeticType': '',
    'cosmeticBrand': '',
    'cosmeticprice': '',
    'cosmeticsModel': '',
    'cosmeticsAmount': '',
    //documnents
    'docNo': '',
    'docType': '',
    'docAmmount': '',
    'docDetails': '',
    'docBoard': '',

    //electronics
    'electModel': '',
    'electType': '',
    'electBrandType': '',
    'electBrand': '',
    'electSerialNo': '',
    'electPrice': '',
    //garmemts
    'garmentsShap': '',
    'garmentsType': '',
    'garmentsBrand': '',
    'garmentsPrice': '',
    'garmentsModel': '',
    //glass
    'glassShap': '',
    'glassType': '',
    'glassBrand': '',
    'glassModel': '',
    'glassSerial': '',
    'glassAmount': '',
    //jewelery
    'jeweleryPrice': '',
    'jeweleryType': '',
    'jeweleryBrand': '',
    'jeweleryModel': '',
    'jeweleryWeight': '',
    'jeweleryKarat': '',
    //key
    'keyDetails': '',
    'keyType': '',
    'keyShap': '',
    'keyAmmount': '',
    //mobile
    'mobileModel': '',
    'mobileType': '',
    'mobileBrandName': '',
    'mobileOperatinSystem': '',
    'macAddress': '',
    'mobileSerial': '',
    'mobileAmmount': '',
    'mobileIME': '',
    'screenShap': '',
    'mobileBattery': '',
    'mobilePrice': '',
    'mobileIdentitryInfo': '',
    'mobileRam': '',
    'mobileRom': '',
    //money
    'moneyAmmount': '',
    'moneyCardType': '',
    'specificDetails': '',
    'pennyAmount': '',
    'pennyType': '',
    //pet
    'petSize': '',
    'petType': '',
    'petAmmount': '',
    //shoe
    'shoeModel': '',
    'shoeType': '',
    'shoeBrandType': '',
    'shoeBrand': '',
    'shoePrice': '',
    //umbrella
    'umbrellaModel': '',
    'umbrellaInformation': '',
    'umbrellaBrand': '',
    'umbrellaShap': '',
    'umbrellaSpecification': '',
    'umbrellaPrice': '',
    'umbrellaAmmount': '',
    //watch
    'watchPrice': '',
    'watchAmmount': '',
    'watchType': '',
    'watchBrand': '',
    'watchBeltType': '',
    'watchBeltShapType': '',
    'watchShap': '',
    'watchColor': '',

    //product
    'productModel': '',
    'productBrand': '',
    'serviceTag': '',
    'emcID': '',
    'productNo': '',
    'produtPrice': '',
  }.obs;

  // Brand list
  void getAccessoriesBrandList() async {
    try {
      isLoading.value = true;
      await RemoteServices.compAccessoriesData().then((value) {
        accessoriesBrand.value = value;
      });
    } catch (error) {
      print('Accessories Brand error: $error');
    } finally {
      isLoading.value = false;
    }
  }

  // OS list
  void getOSList() async {
    try {
      isLoading.value = true;
      await RemoteServices.allOSType().then((value) {
        osTypeList.value = value;
      });
    } catch (error) {
      print('OS error: $error');
    } finally {
      isLoading.value = false;
    }
  }

  // All brand by document id
  void getBrandList() async {
    try {
      isLoading.value = true;
      await RemoteServices.brandListById(documentId.value).then((value) {
        brandByDocList.value = value;
      });
    } catch (error) {
      print('Brand by doc error: $error');
    } finally {
      isLoading.value = false;
    }
  }

  // All type by document id
  void getTypeListByDocId() async {
    try {
      isLoading.value = true;
      await RemoteServices.typeListByDocId(documentId.value).then((value) {
        typeListByDoc.value = value;
      });
    } catch (error) {
      print('Type by doc error: $error');
    } finally {
      isLoading.value = false;
    }
  }

  // Document brand by document id
  void getDocBrandListByDocId() async {
    try {
      isLoading.value = true;
      await RemoteServices.documentBrandByDocId(documentId.value).then((value) {
        docBrandListByDocId.value = value;
      });
    } catch (error) {
      print('Type by doc error: $error');
    } finally {
      isLoading.value = false;
    }
  }

  // post method to send data
  void postOthersEntryData(apiPostData) async {
    try {
      isLoading.value = true;

      await RemoteServices.uploadOthersEntry(apiPostData).then((value) {
        gdId.value = value['gdId'];
        gdNumber.value = value['gdNumber'];
        if (gdId.isNotEmpty) {
          Get.to(() => ConfirmationScreen(gdNumber: gdNumber.value));
          // uploadMultipleImage();
        }
      });
    } finally {
      isLoading.value = false;
    }
  }

  // Document post method
  void postDocumentEntryData(apiPostData) async {
    try {
      isLoading.value = true;

      await RemoteServices.documentPostEntry(apiPostData).then((value) {
        gdId.value = value['gdId'];
        gdNumber.value = value['gdNumber'];
        if (gdId.isNotEmpty) {
          Get.to(() => ConfirmationScreen(gdNumber: gdNumber.value));
          // uploadMultipleImage();
        }
      });
    } finally {
      isLoading.value = false;
    }
  }
}
