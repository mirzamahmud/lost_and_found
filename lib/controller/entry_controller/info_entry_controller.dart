import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/model/district_model.dart';
import 'package:online_gd/model/person_model/person_post_model.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/service/remote_services.dart';
import 'package:online_gd/theme/g_theme.dart';
import 'package:online_gd/util/constants.dart';

import '../../model/color_model.dart';
import '../../model/others_model/others_item_name_model.dart';
import '../../model/person_model/dress_model.dart';
import '../../model/person_model/person_physical_model.dart';
import '../../model/person_model/personal_information_model.dart';
import '../../model/thana_model.dart';
import '../../model/union_model.dart';
import '../../model/vehicle_model.dart';
import '../../model/village_model.dart';
import '../../screen/ui/reused_expansion/confirmation_screen.dart';

class InfoEntryController extends GetxController {
  final nextTileNumber = 1.obs;
  final isShowPerson = false.obs;
  final productType = ''.obs;
  final isLoading = false.obs;
  final dropdownLoading = false.obs;
  final colorName = ' '.obs;
  var gdTypeId = 0;

  final othersController = Get.put(OthersEntryController());

  // For showing expansion widget
  final showVehicle = false.obs;
  final showIdentity = false.obs;
  final showAttachment = false.obs;
  final showPlace = false.obs;
  final showFullDetails = false.obs;
  final showForOthers = false.obs;
  final isExpand = false.obs;

  // For person expansion widget
  final showPersonIdentity = false.obs;
  final showAddress = false.obs;
  final showPhysical = false.obs;
  final showDress = false.obs;
  final showPhoto = false.obs;
  final showLostPlace = false.obs;
  final showCheckBox = false.obs;
  final showDNAProfile = false.obs;
  final showDNAButton = false.obs;

  // Address
  final districtList = <DistrictModel>[].obs;
  final thanaList = <ThanaModel>[].obs;
  final unionList = <UnionModel>[].obs;
  final villageList = <VillageModel>[].obs;

  final districtModel = DistrictModel();

  final countryName = 'Bangladesh'.obs;
  final districtId = 0.obs;
  final thanaId = 0.obs;
  final unionId = 0.obs;
  final villageId = 0.obs;
  final selectedDistrict = '';

  // Vehicle section
  final vehicleList = VehicleModel().obs;
  final colorList = <ColorModel>[].obs;
  final colorId = 0.obs;

  // final vehicleTypeId = 0.obs;
  final vehicleBrandId = 0.obs;

  // Human Section
  final relationList = <RelationTypes>[].obs;
  final genderList = <Genders>[].obs;
  final numberTypeList = <NumberTypes>[].obs;
  final religionList = <Religions>[].obs;
  final occupationsList = <Occupations>[].obs;
  final maritalStatusList = <MaritalStatuses>[].obs;
  final habitList = <Habits>[].obs;
  final speechList = <Speeches>[].obs;
  final personPhysicalModel = PersonPhysicalModel().obs;
  final dressModel = DressModel().obs;

  var personPostModel = PersonPostModel();

  // Attachment Section
  final identityImages = <File?>[].obs;
  final blueBookImages = <File?>[].obs;
  final taxTokenImages = <File?>[].obs;
  final fitnessCertImages = <File?>[].obs;
  final insuranceImages = <File?>[].obs;
  final purchaseImages = <File?>[].obs;

//Others expansion mobile identity
  final memoImages = <File?>[].obs;
  final phonBoxImages = <File?>[].obs;
  final phoneImages = <File?>[].obs;

  // On Back pressed data clear
  Future<bool> onWillPop() async {
    nextTileNumber.value = 1;
    showIdentity.value = false;
    showAttachment.value = false;
    showPlace.value = false;
    showFullDetails.value = false;
    showForOthers.value = false;
    // set null to post map entry
    apiPostData.clear();

    othersController.othersPreviewName.clear();
    vehiclePreviewName.clear();

    return Future.value(true);
  }

  int entryValue = 2;

  // Vehicle entry map
  final apiPostData = {}.obs;

  /*final vehicleApiPostData = {
    'gdFor': '',
    'storyfullDescription': '',
    'gdDate': '',
    'gdNumber': '',
    'productTypeId': 0,
    'gDTypeId': 0,
    'documentTypeId': null,
    'documentDescription': '',
    'gDInformationId': null,
    'colorsId': 0,
    'identifySign': '',
    'identifyType': '',
    'nationalIdentityTypeId': null,
    'identityNo': '',
    'mobileNo': '',
    'vehicleId': null,
    'vehicleTypeId': 0,
    'vehicleBrandId': 0,
    'vehicleRegNo': '',
    'regNoFirstPart': '',
    'regNoSecondPart': '',
    'regNoThiredPart': '',
    'madeBy': '',
    'madeIn': 'Japan',
    'modelNo': '',
    'vehicleModelNo': '',
    'mfcDate': '',
    'engineNo': '',
    'chasisNo': '',
    'ccNo': '',
    'divisionId': null,
    'districtId': 0,
    'thanaId': 0,
    'postOfficeId': 0,
    'placeDetails': '',
    'lafDate': '',
    'lafTime': '',
    'userName': '',
    'formFile': null,
    'attachmentInfos': null,
    'villegeId': 0
  }.obs;*/

  // Vehicle entry name for preview
  final vehiclePreviewName = {
    'vehicleTypeName': '',
    'vehicleBrandName': '',
    'colorName': '',
    'distName': '',
    'thanaName': '',
    'unionName': '',
    'villageName': '',
    'placeDetails': '',
    'fullDetails': '',
  }.obs;

  // Vehicle entry multiple image
  var imageAndDocList = <String?>[];
  final gdId = ''.obs;
  final gdNumber = ''.obs;
  var fileType = [];

  @override
  void onInit() {
    getAllDistrict();
    getColorList();
    super.onInit();
  }

  // clear all image list
  void clearImageList() {
    // Image list clear
    identityImages.clear();
    blueBookImages.clear();
    taxTokenImages.clear();
    fitnessCertImages.clear();
    insuranceImages.clear();
    purchaseImages.clear();
    imageAndDocList.clear();
    fileType.clear();
  }

  void getAllDistrict() async {
    try {
      dropdownLoading.value = true;
      await RemoteServices.districtListApi().then((value) {
        districtList.value = value;
      });
    } finally {
      dropdownLoading.value = false;
    }
  }

  void getAllThana() async {
    try {
      dropdownLoading.value = true;
      await RemoteServices.thanaListApi(districtId.value).then((value) {
        thanaList.value = value;
      });
    } finally {
      dropdownLoading.value = false;
    }
  }

  void getAllUnion() async {
    try {
      dropdownLoading.value = true;
      await RemoteServices.unionListApi(thanaId.value).then((value) {
        unionList.value = value;
      });
    } finally {
      dropdownLoading.value = false;
    }
  }

  void getAllVillage() async {
    try {
      dropdownLoading.value = true;
      await RemoteServices.villageListApi(unionId.value).then((value) {
        villageList.value = value;
      });
    } finally {
      dropdownLoading.value = false;
    }
  }

  void getColorList() async {
    try {
      dropdownLoading.value = true;
      await RemoteServices.colorListApi().then((value) {
        colorList.value = value;
      });
    } finally {
      dropdownLoading.value = false;
    }
  }

  void getVehicleData() async {
    try {
      isLoading.value = true;
      await RemoteServices.vehicleMasterData().then((value) {
        vehicleList.value = value;
      });
    } finally {
      isLoading.value = false;
    }
  }

  // Calling human data from api
  void getPersonalData() async {
    try {
      isLoading.value = true;
      await RemoteServices.personalInfoMasterData().then((value) {
        relationList.value = value.relationTypes!;
        genderList.value = value.genders!;
        numberTypeList.value = value.numberTypes!;
        religionList.value = value.religions!;
        occupationsList.value = value.occupations!;
        maritalStatusList.value = value.maritalStatuses!;
        habitList.value = value.habits!;
        speechList.value = value.speeches!;
      });
    } finally {
      isLoading.value = false;
    }
  }

  // Calling human physical data
  void getPersonPhysicalData() async {
    try {
      isLoading.value = true;
      await RemoteServices.personPhysicalInfoMasterData().then((value) {
        personPhysicalModel.value = value;
      });
    } finally {
      isLoading.value = false;
    }
  }

  // Calling human Dress data
  void getPersonDressData() async {
    try {
      isLoading.value = true;
      await RemoteServices.personDressMasterData().then((value) {
        dressModel.value = value;
      });
    } finally {
      isLoading.value = false;
    }
  }

  // Vehicle post api call
  void postVehicleEntryData() async {
    try {
      isLoading.value = true;
      await RemoteServices.uploadVehicleEntry(apiPostData).then((value) {
        print('vehicle data: $apiPostData');
        gdId.value = value['gdId'];
        gdNumber.value = value['gdNumber'];
        if (gdId.isNotEmpty) {
          Get.to(() => ConfirmationScreen(gdNumber: gdNumber.value));
          uploadMultipleImage();
        }
      }).catchError((error) {
        if (error != null) {
          Get.snackbar('Something went wrong!', error, colorText: blackColor, snackPosition: SnackPosition.BOTTOM);
        }
      });
    } finally {
      isLoading.value = false;
    }
  }

  // Multiple image upload api call
  void uploadMultipleImage() async {
    try {
      isLoading.value = true;
      await RemoteServices.multipleUpload(gdId.value, fileType, imageAndDocList);
    } finally {
      isLoading.value = false;
    }
  }

  // Person post api call
  void postPersonEntryData() async {
    try {
      isLoading.value = true;
      await RemoteServices.personPostEntry(personPostModel).then((value) {
        gdId.value = value['gdId'];
        gdNumber.value = value['gdNumber'];
        if (gdId.isNotEmpty) {
          Get.to(() => ConfirmationScreen(gdNumber: gdNumber.value));
          uploadMultipleImage();
        }
      }).catchError((error) {
        if (error != null) {
          Get.snackbar('Something went wrong!', error, colorText: blackColor, snackPosition: SnackPosition.BOTTOM);
        }
      });
    } finally {
      isLoading.value = false;
    }
  }

  var nidExists = false;
  String? entryForOtherNumber;

  void entryForOtherNidCheck() async {
    try {
      await RemoteServices.nidCheck(entryForOtherNumber!).then((value) {
        if (value.values.toList().first != 'error') {
          nidExists = true;
        } else {
          nidExists = false;
        }
      });
    } catch (error) {
      print('Catch error: $error');
    }
  }
}
