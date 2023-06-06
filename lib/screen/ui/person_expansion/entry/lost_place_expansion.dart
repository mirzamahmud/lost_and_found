import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/datefield_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/screen/widgets/time_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../controller/search_controller/person_search_controller.dart';
import '../../../../model/district_model.dart';
import '../../../../model/thana_model.dart';
import '../../../../model/union_model.dart';
import '../../../../model/village_model.dart';
import '../../../../util/constants.dart';

class LostPlaceExpansion extends StatelessWidget {
  LostPlaceExpansion({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final controller = Get.find<InfoEntryController>();
  final prefs = Get.find<MyPrefs>();
  final personController = Get.put(PersonSearchController());

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: ExpansionTile(
        key: GlobalKey(),
        initiallyExpanded: controller.nextTileNumber.value == 7,
        collapsedBackgroundColor: deactivatedColor,
        title: Text('lost_place'.tr, style: GTheme.title),
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text('dist'.tr, style: GTheme.subtitle),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 3,
                        child: DropdownSearch<DistrictModel>(
                          mode: Mode.MENU,
                          showSearchBox: true,
                          dropdownSearchDecoration: InputDecoration(
                            hintText: personController
                                        .personPreviewMap['lost_dist'] ==
                                    ''
                                ? 'Select'
                                : personController
                                    .personPreviewMap['lost_dist'],
                            hintStyle: const TextStyle(color: Colors.black),
                          ),
                          validator: (value) {
                            if (value == null &&
                                personController.personPreviewMap['lost_dist']
                                    .toString()
                                    .isEmpty) {
                              return 'required'.tr;
                            } else {
                              return null;
                            }
                          },
                          items: controller.districtList,
                          itemAsString: (DistrictModel? u) => prefs.language.val
                              ? u!.districtName.toString()
                              : u!.districtNameBn.toString(),
                          onChanged: (data) {
                            controller.districtId.value = data?.id ?? 0;
                            controller.getAllThana();

                            // Setting value to api post method
                            controller.personPostModel.districtId = data!.id;
                            // to save preview name
                            personController.personPreviewMap['lost_dist'] =
                                (prefs.language.val
                                    ? data.districtName
                                    : data.districtNameBn)!;
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text('thana'.tr, style: GTheme.subtitle),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 3,
                        child: DropdownSearch<ThanaModel>(
                            mode: Mode.MENU,
                            showSearchBox: true,
                            dropdownSearchDecoration: InputDecoration(
                              hintText: personController
                                          .personPreviewMap['lost_thana'] ==
                                      ''
                                  ? 'Select'
                                  : personController
                                      .personPreviewMap['lost_thana'],
                              hintStyle: const TextStyle(color: Colors.black),
                            ),
                            validator: (value) {
                              if (value == null &&
                                  personController
                                      .personPreviewMap['lost_thana']
                                      .toString()
                                      .isEmpty) {
                                return 'required'.tr;
                              } else {
                                return null;
                              }
                            },
                            items: controller.thanaList,
                            itemAsString: (ThanaModel? u) => prefs.language.val
                                ? u!.thanaName.toString()
                                : u!.thanaNameBn.toString(),
                            onChanged: (data) {
                              controller.thanaId.value = data?.id ?? 0;
                              controller.getAllUnion();
                              controller.personPostModel.thanaId = data!.id;
                              // to save preview name
                              personController.personPreviewMap['lost_thana'] =
                                  (prefs.language.val
                                      ? data.thanaName
                                      : data.thanaNameBn)!;
                            }),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text('union'.tr, style: GTheme.subtitle),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 3,
                        child: DropdownSearch<UnionModel>(
                            mode: Mode.MENU,
                            showSearchBox: true,
                            dropdownSearchDecoration: InputDecoration(
                              hintText: personController.personPreviewMap[
                                          'lost_post_office'] ==
                                      ''
                                  ? 'Select'
                                  : personController
                                      .personPreviewMap['lost_post_office'],
                              hintStyle: const TextStyle(color: Colors.black),
                            ),
                            validator: (value) {
                              if (value == null &&
                                  personController
                                      .personPreviewMap['lost_post_office']
                                      .toString()
                                      .isEmpty) {
                                return 'required'.tr;
                              } else {
                                return null;
                              }
                            },
                            items: controller.unionList,
                            itemAsString: (UnionModel? u) => prefs.language.val
                                ? u!.unionName.toString()
                                : u!.unionNameBn.toString(),
                            onChanged: (data) {
                              controller.unionId.value = data?.id ?? 0;
                              controller.getAllVillage();
                              controller.personPostModel.postOffice =
                                  data!.unionName;
                              controller.personPostModel.postOfficeId = data.id;
                              // to save preview name
                              personController
                                      .personPreviewMap['lost_post_office'] =
                                  (prefs.language.val
                                      ? data.unionName
                                      : data.unionNameBn)!;
                            }),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text('vill'.tr, style: GTheme.subtitle),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 3,
                        child: DropdownSearch<VillageModel>(
                            mode: Mode.MENU,
                            showSearchBox: true,
                            dropdownSearchDecoration: InputDecoration(
                              hintText: personController
                                          .personPreviewMap['lost_union'] ==
                                      ''
                                  ? 'Select'
                                  : personController
                                      .personPreviewMap['lost_union'],
                              hintStyle: const TextStyle(color: Colors.black),
                            ),
                            validator: (value) {
                              if (value == null &&
                                  personController
                                      .personPreviewMap['lost_union']
                                      .toString()
                                      .isEmpty) {
                                return 'required'.tr;
                              } else {
                                return null;
                              }
                            },
                            items: controller.villageList,
                            itemAsString: (VillageModel? u) =>
                                prefs.language.val
                                    ? u!.villageName.toString()
                                    : u!.villageNameBn.toString(),
                            onChanged: (data) {
                              controller.personPostModel.villegeId = data!.id;
                              // to save preview name
                              personController.personPreviewMap['lost_union'] =
                                  prefs.language.val
                                      ? data.villageName.toString()
                                      : data.villageNameBn.toString();
                            }),
                      )
                    ],
                  ),
                ),
                TextFormWithTitle(
                    title: 'place_info'.tr,
                    hintText: 'place_info'.tr,
                    initialValue: controller.personPostModel.placeDetails ?? '',
                    onChanged: (val) {
                      controller.personPostModel.placeDetails = val;
                    }),
                DateFieldWithTitle(
                    title: 'date'.tr,
                    hintText: controller.personPostModel.lafDate == null
                        ? 'date'.tr
                        : Constants.formattedPreviewDate(
                            controller.personPostModel.lafDate.toString()),
                    onChanged: (val) {
                      controller.personPostModel.lafDate = val;
                    }),
                TimeWithTitle(
                    title: 'time'.tr,
                    hintText: controller.personPostModel.lafTime == null
                        ? 'time'.tr
                        : Constants.formatTime(
                            controller.personPostModel.lafTime.toString()),
                    onChanged: (val) {
                      controller.personPostModel.lafTime = val;
                    }),
                const SizedBox(height: 20),
              ],
            ),
          ),
          customButton(context, 'next'.tr, () {
            if(_formKey.currentState!.validate()) {
      controller.nextTileNumber.value = 8;
      controller.showFullDetails.value = true;
    }
           /* controller.nextTileNumber.value = 8;
            controller.showFullDetails.value = true;*/
          })
        ],
      ),
    );
  }
}
