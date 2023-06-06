import 'package:get/get.dart';

import '../screen/ui/forget_password/forget_password_otp.dart';
import '../service/remote_services.dart';

class ForgetPasswordController extends GetxController {
  var forgetPasswordMap = {
    "UserName": " ",
    "secuirityQuestionId": " ",
    "secuirityQuestionAns": " ",
    "secuirityQuestionId2": " ",
    "secuirityQuestionAns2": " ",
  };

  void forgetPasswordSecurityCheckApi() async {
    try {
      await RemoteServices.forgetPasswordSecurityCheck(forgetPasswordMap).then((value) {
        if (value == 'matched') {
          Get.to(() => ForgetPasswordOtp());
        } else {
          Get.defaultDialog(
              title: 'Alert!'.tr,
              radius: 5.0,
              middleText: 'Something went wrong.\n  Please try again',
              textConfirm: 'Ok',
              onConfirm: () {
                Get.back();
              });
        }
      });
    } catch (error) {
      print('Catch error: $error');
    }
  }
}
