import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/ui/other_expansion/garments_info_expansion.dart';
import 'package:online_gd/screen/ui/other_expansion/identity_expansion.dart';
import 'package:online_gd/screen/ui/reused_expansion/entry_for_others.dart';
import 'package:online_gd/screen/ui/reused_expansion/full_details_screen.dart';
import 'package:online_gd/screen/ui/reused_expansion/place_time_details.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_floating_button.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/others_entry_controller.dart';
import '../../../../../service/my_prefs.dart';

class GarmentsEntryScreen extends StatelessWidget {
  GarmentsEntryScreen({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final othersController = Get.find<OthersEntryController>();
  final prefs = Get.find<MyPrefs>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Scaffold(
        appBar: customAppbar('garments'.tr),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => othersController.isLoading.value
                ? const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Center(child: CircularProgressIndicator()),
            )
                : Column(
              children: [
                GarmentsInfoExpansion(),
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
                    title: Text('identity_info'.tr, style: GTheme.title),
                    children: const [IdentityExpansion()],
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
                    controller.nextTileNumber.value == 3,
                    collapsedBackgroundColor: deactivatedColor,
                    title: Text('place_time'.tr, style: GTheme.title),
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
                    title: Text('full_details'.tr, style: GTheme.title),
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
                    title: Text('entry_others'.tr, style: GTheme.title),
                    children: [EntryForOthers()],
                  ),
                )
                    : const SizedBox(),
              ],
            )),
          ),
        ),
        floatingActionButton: const CustomFloatingButton(),
      ),
    );
  }
}
