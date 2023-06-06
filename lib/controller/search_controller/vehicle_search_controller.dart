import 'package:get/get.dart';
import 'package:online_gd/model/vehicle_search_result_model.dart';
import 'package:online_gd/service/remote_services.dart';

class VehicleSearchController extends GetxController {
  final vehicleSearchResultList = <VehicleSearchResultModel>[].obs;
  final vehicleId = 0.obs;
  final isLoading = false.obs;

  void getVehicleSearchResult() async {
    try {
      isLoading.value = true;

      await RemoteServices.vehicleSearchResultGet(vehicleId.value)
          .then((value) => vehicleSearchResultList.value = value);
    } finally {
      isLoading.value = false;
    }
  }
}
