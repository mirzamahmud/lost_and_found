import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_gd/controller/search_controller/vehicle_search_controller.dart';
import 'package:online_gd/model/vehicle_search_result_model.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/double_text.dart';
import 'package:online_gd/service/remote_services.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../widgets/custom_floating_button.dart';

class VehicleResultScreen extends StatelessWidget {
  VehicleResultScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  final vehicleController = Get.find<VehicleSearchController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title),
      body: Center(
        child: Obx(() => vehicleController.isLoading.value
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: vehicleController.vehicleSearchResultList.length,
                itemBuilder: (BuildContext context, int index) {
                  final info = vehicleController
                      .vehicleSearchResultList[index].gDInformation;

                  return Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                    width: double.infinity,
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      '${RemoteServices.baseUrl}${info?.applicationUser?.imagePath}'),
                                  backgroundColor: Colors.blue,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  info?.applicationUser?.fullName ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  style: GTheme.title,
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Column(
                              children: [
                                SizedBox(
                                  height: 200.0,
                                  width: double.infinity,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        '${RemoteServices.baseUrl}${vehicleController.vehicleSearchResultList[index].indentifyInfo?.attachmentPath}',
                                    placeholder: (context, url) => const Center(
                                        child: CircularProgressIndicator()),
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                            'assets/images/img-notavailable.png'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            DoubleText(
                              title: 'eng_no'.tr,
                              data: vehicleController
                                  .vehicleSearchResultList[index].engineNo,
                            ),
                            const SizedBox(height: 6),
                            DoubleText(
                              title: 'veh_reg'.tr,
                              data: vehicleController
                                  .vehicleSearchResultList[index].vehicleRegNo,
                            ),
                            const SizedBox(height: 6),
                            DoubleText(
                              title: 'veh_type'.tr,
                              data: vehicleController
                                  .vehicleSearchResultList[index]
                                  .vehicleType
                                  ?.vehicleTypeName,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })),
      ),
      floatingActionButton: const CustomFloatingButton(),
    );
  }
}
