import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/search_controller/person_search_controller.dart';
import 'package:online_gd/model/person_model/person_post_model.dart';
import 'package:online_gd/screen/ui/person_expansion/entry/dna_profile_expansion.dart';
import 'package:online_gd/screen/ui/person_expansion/entry/dress_description_expansion.dart';
import 'package:online_gd/screen/ui/person_expansion/entry/lost_place_expansion.dart';
import 'package:online_gd/screen/ui/person_expansion/entry/person_address_expansion.dart';
import 'package:online_gd/screen/ui/person_expansion/entry/person_full_details_expansion.dart';
import 'package:online_gd/screen/ui/person_expansion/entry/person_identity_expansion.dart';
import 'package:online_gd/screen/ui/person_expansion/entry/person_primary_expansion.dart';
import 'package:online_gd/screen/ui/person_expansion/entry/photo_expansion.dart';
import 'package:online_gd/screen/ui/person_expansion/entry/physical_details_expansion.dart';
import 'package:online_gd/screen/ui/reused_expansion/entry_for_others.dart';
import 'package:online_gd/screen/ui/reused_expansion/place_time_details.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../widgets/custom_floating_button.dart';

class PersonEntryMainScreen extends StatelessWidget {
  PersonEntryMainScreen({Key? key}) : super(key: key);

  final controller = Get.put(InfoEntryController());
  final personController = Get.put(PersonSearchController());
  bool _checkBoxValue = false;

  Future<bool> _onWillPop() async {
    controller.nextTileNumber.value = 1;
    controller.showPersonIdentity.value = false;
    controller.showAddress.value = false;
    controller.showPhysical.value = false;
    controller.showDress.value = false;
    controller.showPhoto.value = false;
    controller.showLostPlace.value = false;
    controller.showCheckBox.value = false;
    controller.showDNAProfile.value = false;
    controller.showDNAButton.value = false;
    controller.showFullDetails.value = false;
    controller.showForOthers.value = false;
    controller.showDNAProfile.value = false;
    // set null to post map entry
    controller.personPostModel = PersonPostModel();

    for (var preview in personController.personPreviewMap.entries) {
      personController.personPreviewMap[preview.key] = '';
    }
    controller.clearImageList();
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
        child: Scaffold(
          appBar: customAppbar('person_info'.tr),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () => controller.isLoading.value
                    ? const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Center(child: CircularProgressIndicator()),
                )
                    : Column(
                  children: [
                    PersonPrimaryExpansion(),
                    const SizedBox(height: 8),
                    controller.showPersonIdentity.value
                        ? const PersonIdentityExpansion()
                        : const SizedBox(),
                    const SizedBox(height: 8),
                    controller.showAddress.value
                        ? PersonAddressExpansion()
                        : const SizedBox(),
                    const SizedBox(height: 8),
                    controller.showPhysical.value
                        ? PhysicalDetailsExpansion()
                        : const SizedBox(),
                    const SizedBox(height: 8),
                    controller.showDress.value
                        ? DressDescriptionExpansion()
                        : const SizedBox(),
                    const SizedBox(height: 8),
                    controller.showPhoto.value
                        ? PhotoExpansion()
                        : const SizedBox(),
                    const SizedBox(height: 8),
                    controller.showLostPlace.value
                        ? LostPlaceExpansion()
                        : const SizedBox(),
                    const SizedBox(height: 8),
                    controller.showFullDetails.value
                        ? ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            child: ExpansionTile(
                              key: GlobalKey(),
                              initiallyExpanded:
                                  controller.nextTileNumber.value == 8,
                              collapsedBackgroundColor: deactivatedColor,
                              title:
                                  Text('full_details'.tr, style: GTheme.title),
                              children: [PersonFullDetailsExpansion()],
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
                                  controller.nextTileNumber.value == 9,
                              collapsedBackgroundColor: deactivatedColor,
                              title:
                                  Text('entry_others'.tr, style: GTheme.title),
                              children: [EntryForOthers()],
                            ),
                          )
                        : const SizedBox(),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: const CustomFloatingButton(),
        ),
      ),
    );
  }
}
