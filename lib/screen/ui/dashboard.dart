import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';
import 'package:online_gd/controller/dashboard_controller.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/search_controller/other_search_controller.dart';
import 'package:online_gd/screen/ui/info_entry_section/info_entry_main_screen.dart';
import 'package:online_gd/screen/ui/info_search_section/person_section/person_search_screen.dart';
import 'package:online_gd/screen/ui/info_search_section/vehicle_section/vehicle_search_screen.dart';
import 'package:online_gd/screen/ui/navigation_drawer/main_drawer.dart';
import 'package:online_gd/screen/ui/report_screen/gd_report_screen.dart';
import 'package:online_gd/screen/widgets/custom_card.dart';
import 'package:online_gd/screen/widgets/custom_data_card.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';
import 'package:online_gd/util/constants.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  final dashController = Get.put(DashboardController());
  final controller = Get.put(InfoEntryController());
  final compController = Get.put(OthersEntryController());
  final otherSearchController = Get.put(OtherSearchController());
  final prefs = Get.find<MyPrefs>();

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 80,
        title: Text(
          prefs.fullnameBn.val.isEmpty ? prefs.fullname.val : prefs.fullnameBn.val,
          style: const TextStyle(overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold, fontSize: 23.0),
        ),
        actions: [
          Builder(
            builder: (context) => InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  'assets/images/icon.png',
                  height: 80,
                  width: 80,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * .04,
                child: Marquee(
                  text: 'welcome'.tr,
                  style: GTheme.subtitle.copyWith(color: primaryColor, fontStyle: FontStyle.italic),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  blankSpace: 20.0,
                  pauseAfterRound: const Duration(seconds: 2),
                  startPadding: 10.0,
                  accelerationDuration: const Duration(seconds: 1),
                  accelerationCurve: Curves.linear,
                  decelerationDuration: const Duration(milliseconds: 500),
                  decelerationCurve: Curves.easeOut,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      pageController.animateToPage(dashController.pageChange.value - 1,
                          duration: const Duration(milliseconds: 100), curve: Curves.bounceInOut);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      pageController.animateToPage(dashController.pageChange.value + 1,
                          duration: const Duration(milliseconds: 100), curve: Curves.bounceInOut);
                    },
                  )
                ],
              ),
              SizedBox(
                height: 150,
                child: Obx(() => controller.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : PageView(
                        controller: pageController,
                        pageSnapping: true,
                        onPageChanged: (index) {
                          dashController.pageChange.value = index;
                        },
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomDataCard(
                                icon: Icons.add,
                                title: 'all_application'.tr,
                                data: dashController.allApplicationCount.value,
                                onTap: () {
                                  dashController.statusId.value = 1;
                                  dashController.getAllGDStatusDetails();
                                  Get.to(() => GDReportScreen());
                                },
                              ),
                              CustomDataCard(
                                icon: Icons.insert_drive_file,
                                title: 'received_application'.tr,
                                data: dashController.receivedApplicationCount.value,
                                onTap: () {
                                  dashController.statusId.value = 2;
                                  dashController.getAllGDStatusDetails();
                                  Get.to(() => GDReportScreen());
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomDataCard(
                                icon: Icons.close,
                                title: 'rejected_application'.tr,
                                data: dashController.rejectedApplicationCount.value,
                                onTap: () {
                                  dashController.statusId.value = 7;
                                  dashController.getAllGDStatusDetails();
                                  Get.to(() => GDReportScreen());
                                },
                              ),
                              CustomDataCard(
                                icon: Icons.check_circle,
                                title: 'investigation'.tr,
                                data: dashController.investigationCount.value,
                                onTap: () {
                                  dashController.statusId.value = 9;
                                  dashController.getAllGDStatusDetails();
                                  Get.to(() => GDReportScreen());
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomDataCard(
                                icon: Icons.check_circle,
                                title: 'disposal'.tr,
                                data: dashController.disposalCount.value,
                                onTap: () {
                                  dashController.statusId.value = 9;
                                  dashController.getAllGDStatusDetails();
                                  Get.to(() => GDReportScreen());
                                },
                              ),
                            ],
                          ),
                        ],
                      )),
              ),
              // Information entry section
              const SizedBox(height: 20),
              Text('info_entry'.tr, style: GTheme.headline),
              const Divider(thickness: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(
                    image: 'assets/vehicles/robbery.png',
                    title: 'theft'.tr,
                    onTap: () {
                      controller.isShowPerson.value = false;
                      // set gd type for api
                      controller.gdTypeId = Constants.theft;
                      Get.to(() => InfoEntryMainScreen());
                    },
                  ),
                  CustomCard(
                    icon: Icons.person_remove,
                    size: 60.0,
                    title: 'lose'.tr,
                    onTap: () {
                      controller.isShowPerson.value = true;
                      // set gd type for api
                      controller.gdTypeId = Constants.lost;
                      Get.to(() => InfoEntryMainScreen());
                    },
                  ),
                  CustomCard(
                    icon: Icons.sentiment_satisfied_alt,
                    size: 60.0,
                    title: 'found'.tr,
                    onTap: () {
                      controller.isShowPerson.value = false;
                      // set gd type for api
                      controller.gdTypeId = Constants.found;
                      Get.to(() => InfoEntryMainScreen());
                    },
                  )
                ],
              ),
              // Information search section
              const SizedBox(height: 20),
              Text('info_search'.tr, style: GTheme.headline),
              const Divider(thickness: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(
                    icon: Icons.person_search,
                    size: 60.0,
                    title: 'person'.tr,
                    onTap: () {
                      controller.getPersonPhysicalData();
                      controller.getPersonDressData();
                      Get.to(() => PersonSearchScreen());
                    },
                  ),
                  CustomCard(
                    icon: Icons.airport_shuttle,
                    size: 60.0,
                    title: 'vehicle'.tr,
                    onTap: () => Get.to(() => VehicleSearchScreen()),
                  ),
                  CustomCard(
                    icon: Icons.add_task,
                    size: 60.0,
                    title: 'others'.tr,
                    onTap: () {
                      Get.snackbar('warning'.tr, 'alert'.tr,
                          colorText: blackColor, snackPosition: SnackPosition.BOTTOM);

                      /*Get.to(() => OtherSearchMainScreen(
                            title: 'others'.tr,
                          ));*/
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
