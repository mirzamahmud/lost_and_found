import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../model/district_model.dart';
import '../model/nid_model.dart';
import '../model/security_question_model.dart';
import '../model/thana_model.dart';
import '../model/union_model.dart';
import '../model/village_model.dart';
import '../service/my_prefs.dart';
import '../service/remote_services.dart';

class RegistrationController extends GetxController {
  // NID
  final nidNumber = ''.obs;
  final nidDate = ''.obs;
  final nidInfo = PresentAddress().obs;
  final securityQuestionList1 = <SecurityQuestions>[].obs;
  final securityQuestionList2 = <SecurityQuestions2>[].obs;
  var token = '';

  final infoController = Get.put(InfoEntryController());

  final isNidClicked = false.obs;
  final isNidPresent = false.obs;
  final showPassword = false.obs;
  final isNidLoading = false.obs;
  final isLoading = false.obs;
  final isTimerFinished = false.obs;
  final prefs = Get.find<MyPrefs>();

  // Registration data save
  final registrationData = {
    'FullName': '',
    'Citizenship': 'Bangladeshi',
    'NationalIdentityType': 1,
    'NationalIdentityNo': '',
    'dob': '',
    'PhoneNumber': '',
    'UserName': '',
    'email': '',
    'AddressType': '',
    'Password': '',
    'ConfirmPassword': '',
    'secuirityQuestionId': 0,
    'secuirityQuestionId2': 0,
    'secuirityQuestionAns': '',
    'secuirityQuestionAns2': '',
    'otp': '',
  }.obs;

  final captureImagePath = ''.obs;
  final username = ''.obs;
  final signaturePath = ''.obs;
  final submittedOTP = ''.obs;
  final regSuccess = false.obs;
  final error = ''.obs;

  @override
  void onInit() {
    getSecurityQuestions();
    super.onInit();
  }

  void nidCheckApi() async {
    try {
      await RemoteServices.nidCheck(nidNumber.value).then((value) {
        if (value['error'] == null) {
          isNidPresent.value = true;
          Get.defaultDialog(
              title: 'This NID is already exist!',
              titleStyle: const TextStyle(color: errorColor),
              middleText: 'Please try to login.',
              textConfirm: 'Ok',
              confirmTextColor: blackColor,
              onConfirm: () {
                Get.back();
              });
        } else {
          // prefs.fullnameBn.val = value['nameBangla'];
          isNidPresent.value = false;
          getNidInformation();
        }
      });
    } catch (error) {
      print('Catch error: $error');
    }
  }

  void getNidInformation() async {
    try {
      isNidLoading.value = true;
      await RemoteServices.nidApiCall(nidNumber.value, nidDate.value)
          .catchError((error) {
        Get.defaultDialog(
            title: 'nid_error_title'.tr,
            middleText: error != 'error'
                ? 'nid_error_text'.tr
                : 'Couldn\'t connect with server.',
            textConfirm: 'Ok',
            onConfirm: () {
              Get.back();
            });
      }).then((value) {
        nidInfo.value = value.presentAddress!;
        registrationData['FullName'] = value.nameEn ?? '';
        isNidClicked.value = true;
        compareDropdown();
      });
    } finally {
      isNidLoading.value = false;
    }
  }

  void compareDropdown() async {
    try {
      isLoading.value = true;
      for (var item in infoController.districtList) {
        if (item.districtNameBn == nidInfo.value.district) {
          await RemoteServices.thanaListApi(item.id!).then((value) async {
            infoController.thanaList.value = value;
            for (var item in value) {
              if (item.thanaNameBn == nidInfo.value.upozila) {
                await RemoteServices.unionListApi(item.id!).then((value) {
                  infoController.unionList.value = value;
                  for (var item in value) {
                    if (item.unionNameBn == nidInfo.value.unionOrWard) {
                      infoController.unionId.value = item.id!;
                      infoController.getAllVillage();
                    }
                  }
                });
              }
            }
          });
        }
      }
    } finally {
      isLoading.value = false;
    }
  }

  void getSecurityQuestions() async {
    try {
      isLoading.value = true;
      await RemoteServices.securityQuestionCall().then((value) {
        securityQuestionList1.value = value.securityQuestions!;
        securityQuestionList2.value = value.securityQuestions2!;
      });
    } finally {
      isLoading.value = false;
    }
  }

  void registrationApi() async {
    try {
      isLoading.value = true;
      await RemoteServices.registration(registrationData).then((value) {
        if (value['message'] == 'userExists') {
          error.value = 'user_exist'.tr;
        } else if (value['message'] == 'success') {
          registrationData['otp'] = value['otpCode'];
          regSuccess.value = true;
        } else {
          Get.defaultDialog(
              title: 'Server Error',
              middleText:
                  'Couldn\'t connect to server, please try again later!');
        }
      });
    } finally {
      isLoading.value = false;
    }
  }
}
