import 'package:get/get.dart';
import 'package:online_gd/controller/registration_controller.dart';
import 'package:online_gd/model/user_model.dart';
import 'package:online_gd/screen/ui/dashboard.dart';
import 'package:online_gd/service/remote_services.dart';
import 'package:online_gd/theme/g_theme.dart';
import 'package:online_gd/util/http_exception.dart';

class LoginController extends GetxController {
  final userData = UserModel().obs;
  final username = ''.obs;
  final password = ''.obs;
  final isEditClicked = false.obs;
  final isLoading = false.obs;

  final regController = Get.put(RegistrationController());

  void fetchAuthData() async {
    try {
      isLoading.value = true;
      await RemoteServices.authenticate(username.value, password.value).then((value) {
        /*regController.nidNumber.value = value['userInfo']['NationalIdentityNo'];
        regController.nidCheckApi();*/
        userData.value = UserModel.fromJson(value);
        Get.off(() => Dashboard());
      });
    } on HttpException catch (error) {
      if(error.toString().contains('error'))  {
        Get.defaultDialog(
            title: 'Server Error',
            middleText: 'Couldn\'t connect to server, please try again later',
            textConfirm: 'Ok',
            confirmTextColor: blackColor,
            onConfirm: () {
              Get.back();
            }
        );
      } else {
        Get.defaultDialog(title:  'Login Error', middleText: error.toString());
      }
    } finally {
      isLoading.value = false;
    }
  }

}