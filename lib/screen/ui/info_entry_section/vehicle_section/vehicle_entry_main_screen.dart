import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/ui/reused_expansion/attachment_screen.dart';
import 'package:online_gd/screen/ui/reused_expansion/entry_for_others.dart';
import 'package:online_gd/screen/ui/reused_expansion/full_details_screen.dart';
import 'package:online_gd/screen/ui/reused_expansion/identity_entry_screen.dart';
import 'package:online_gd/screen/ui/reused_expansion/place_time_details.dart';
import 'package:online_gd/screen/ui/reused_expansion/vehicle_entry_screen.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_floating_button.dart';
import 'package:online_gd/theme/g_theme.dart';

class VehicleEntryMainScreen extends StatelessWidget {
  VehicleEntryMainScreen({Key? key}) : super(key: key);

  final controller = Get.find<InfoEntryController>();

  Future<bool> _onWillPop() async {
    controller.nextTileNumber.value = 1;
    controller.showIdentity.value = false;
    controller.showAttachment.value = false;
    controller.showPlace.value = false;
    controller.showFullDetails.value = false;
    controller.showForOthers.value = false;
    // set null to post map entry
    controller.apiPostData.clear();
    controller.vehiclePreviewName.clear();
    // Image list clear
    controller.clearImageList();


    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(),
      child: Scaffold(
        appBar: customAppbar('vehicle_entry'.tr),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(
              () => controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          child: ExpansionTile(
                            key: GlobalKey(),
                            initiallyExpanded:
                                controller.nextTileNumber.value == 1,
                            collapsedBackgroundColor: deactivatedColor,
                            title: Text('vehicle_entry'.tr, style: GTheme.title),
                            children: [VehicleEntryScreen()],
                          ),
                        ),
                        const SizedBox(height: 8),
                        controller.showIdentity.value
                            ? ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                child: ExpansionTile(
                                  key: GlobalKey(),
                                  initiallyExpanded:
                                      controller.nextTileNumber.value == 2,
                                  collapsedBackgroundColor: deactivatedColor,
                                  title: Text('identity_info'.tr,
                                      style: GTheme.title),
                                  children: const [IdentityEntryScreen()],
                                ),
                              )
                            : const SizedBox(),
                        const SizedBox(height: 8),
                        controller.showAttachment.value
                            ? ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                child: ExpansionTile(
                                  key: GlobalKey(),
                                  initiallyExpanded:
                                      controller.nextTileNumber.value == 3,
                                  collapsedBackgroundColor: deactivatedColor,
                                  title:
                                      Text('attachment'.tr, style: GTheme.title),
                                  children: const [AttachmentScreen()],
                                ),
                              )
                            : const SizedBox(),
                        const SizedBox(height: 8),
                        controller.showPlace.value
                            ? ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                child: ExpansionTile(
                                  key: GlobalKey(),
                                  initiallyExpanded:
                                      controller.nextTileNumber.value == 4,
                                  collapsedBackgroundColor: deactivatedColor,
                                  title:
                                      Text('place_time'.tr, style: GTheme.title),
                                  children: [PlaceTimeDetails()],
                                ),
                              )
                            : const SizedBox(),
                        const SizedBox(height: 8),
                        controller.showFullDetails.value
                            ? ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                child: ExpansionTile(
                                  key: GlobalKey(),
                                  initiallyExpanded:
                                      controller.nextTileNumber.value == 5,
                                  collapsedBackgroundColor: deactivatedColor,
                                  title: Text('full_details'.tr,
                                      style: GTheme.title),
                                  children: [FullDetailsScreen()],
                                ),
                              )
                            : const SizedBox(),
                        const SizedBox(height: 8),
                        controller.showForOthers.value
                            ? ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                child: ExpansionTile(
                                  key: GlobalKey(),
                                  initiallyExpanded:
                                      controller.nextTileNumber.value == 6,
                                  collapsedBackgroundColor: deactivatedColor,
                                  title: Text('entry_others'.tr,
                                      style: GTheme.title),
                                  children: [EntryForOthers()],
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
            ),
          ),
        ),
        floatingActionButton: const CustomFloatingButton(),
      ),
    );
  }
}
