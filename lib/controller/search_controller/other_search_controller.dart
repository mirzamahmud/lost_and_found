import 'package:get/get.dart';
import 'package:online_gd/model/others_model/others_item_name_model.dart';
import 'package:online_gd/service/remote_services.dart';

class OtherSearchController extends GetxController {
  final othersItemNameList = <OthersItemNameModel>[].obs;

  final isLoading = false.obs;

  @override
  void onInit() {
    getOtherItemNameList();
    super.onInit();
  }

  // Other item name list
  void getOtherItemNameList() async {
    try {
      isLoading.value = true;
      await RemoteServices.otherItemNameApi().then((value) {
        othersItemNameList.value = value;
      });
    } catch (error) {
      throw error.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
