import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/ui/info_search_section/vehicle_section/vehicle_result_screen.dart';

import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_card.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../controller/search_controller/vehicle_search_controller.dart';
import '../../../widgets/custom_floating_button.dart';

class VehicleSearchScreen extends StatelessWidget {
  VehicleSearchScreen({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final vehicleController = Get.put(VehicleSearchController());

  final List vehicleList = [
    {
      'image': 'assets/vehicles/bike.png',
      'title': 'bike'.tr,
      'id':  '5'
    },
    {'image': 'assets/vehicles/car.png',
      'title': 'car'.tr,
      'id':  '7'
    },
    {
      'image': 'assets/vehicles/microbus.png',
      'title': 'micro_bus'.tr,
      'id':  '12'

    },
    {'image': 'assets/vehicles/cng.png',
      'title': 'cng'.tr,
      'id':  '11'
    },
    {'image': 'assets/vehicles/bus.png',
      'title': 'bus'.tr,
      'id':  '1'
    },
    {
      'image': 'assets/vehicles/coveredvan.png',
      'title': 'covered_van'.tr,
      'id':  '13'
    },
    {
      'image': 'assets/vehicles/leguna.png',
      'title': 'laguna'.tr,
      'id':  '14'
    },
    {
      'image': 'assets/vehicles/pickup.png',
      'title': 'pickup'.tr,
      'id':  '8'
    },
    {
      'image': 'assets/vehicles/truck.png',
      'title': 'truck'.tr,
      'id':  '4'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
          appBar: customAppbar('others'.tr),
          body: AnimationLimiter(
            child: OrientationBuilder(
              builder: (context, orientation) => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: hColumnHorizontal, vertical: hColumnVertical),
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3/2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20
                      ),
                      itemCount: vehicleList.length,
                      itemBuilder: (BuildContext context, index) => CustomCard(
                        image: vehicleList[index]['image'],
                        title: vehicleList[index]['title'],
                        onTap: () {
                          vehicleController.vehicleId.value=int.parse(vehicleList[index]['id']);
                          vehicleController.getVehicleSearchResult();
                          Get.to(() => VehicleResultScreen(title: vehicleList[index]['title']));
                        },
                      ))

              ),
            ),
          ),
      floatingActionButton: const CustomFloatingButton(),
      ),
    );
  }
}

