import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/controller/search_controller/person_search_controller.dart';
import 'package:online_gd/screen/ui/info_entry_section/vehicle_section/vehicle_entry_main_screen.dart';
import 'package:online_gd/screen/ui/navigation_drawer/main_drawer.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_card.dart';
import 'package:online_gd/screen/widgets/custom_floating_button.dart';
import 'package:online_gd/theme/g_theme.dart';
import 'package:online_gd/util/constants.dart';

import '../../../service/my_prefs.dart';
import 'other_section/other_entry_main_screen.dart';
import 'person_section/person_entry_main_screen.dart';

class InfoEntryMainScreen extends StatelessWidget {
  InfoEntryMainScreen({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final otherController = Get.find<OthersEntryController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: customAppbar('info_entry'.tr),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('choice'.tr, style: GTheme.title),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(
                      icon: Icons.airport_shuttle,
                      size: 60.0,
                      title: 'vehicle'.tr,
                      onTap: () {
                        // set null to post map entry
                        controller.apiPostData.clear();
                        controller.vehiclePreviewName.clear();
                        // image list clear
                        controller.clearImageList();
                        // Setting predefined values
                        controller.apiPostData['gDTypeId'] = controller.gdTypeId;
                        controller.apiPostData['gdDate'] = Constants.apiFormatDate(DateTime.now());
                        controller.apiPostData['userName'] = Get.find<MyPrefs>().username.val;

                        controller.getVehicleData();
                        // for api product type id
                        controller.apiPostData['productTypeId'] = Constants.vehicle;
                        // setting value for product type
                        controller.productType.value = 'vehicle';
                        Get.to(() => VehicleEntryMainScreen());
                      }),
                  controller.isShowPerson.value
                      ? CustomCard(
                          icon: Icons.person,
                          size: 60.0,
                          title: 'person'.tr,
                          onTap: () {
                            controller.clearImageList();
                            // setting value for product type
                            controller.productType.value = 'man';
                            controller.getPersonalData();
                            controller.getPersonPhysicalData();
                            controller.getPersonDressData();
                            Get.to(() => PersonEntryMainScreen());
                          })
                      : const SizedBox(),
                  CustomCard(
                      icon: Icons.add_task,
                      size: 60.0,
                      title: 'others'.tr,
                      onTap: () {
                        // Get.snackbar('warning'.tr, 'alert'.tr, colorText: blackColor, snackPosition: SnackPosition.BOTTOM);

                        // set null to post map entry
                        controller.apiPostData.clear();
                        controller.vehiclePreviewName.clear();
                        otherController.othersPreviewName.clear();
                        // Setting predefined values
                        controller.apiPostData['gDTypeId'] = controller.gdTypeId;
                        controller.apiPostData['gdFor'] = Constants.own;
                        controller.apiPostData['gdDate'] = Constants.apiFormatDate(DateTime.now());
                        controller.apiPostData['userName'] = Get.find<MyPrefs>().username.val;

                        // setting value for product type
                        controller.productType.value = 'other';
                        Get.to(() => OtherEntryMainScreen());
                      })
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const CustomFloatingButton(),
    );
  }
}
