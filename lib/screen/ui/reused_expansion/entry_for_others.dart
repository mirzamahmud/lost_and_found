import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/document_preview_screen.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/person_preview_screen.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/pet_preview_screen.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/vehicle_preview_screen.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../util/constants.dart';
import '../../widgets/textform_with_title.dart';
import '../gd_preview_screen/bag_preview_screen.dart';
import '../gd_preview_screen/card_preview_screen.dart';
import '../gd_preview_screen/computer_preview_screen.dart';
import '../gd_preview_screen/cosmetics_preview_screen.dart';
import '../gd_preview_screen/electronics_preview_screen.dart';
import '../gd_preview_screen/garments_preview_screen.dart';
import '../gd_preview_screen/glass_preview_screen.dart';
import '../gd_preview_screen/jewelery_preview_screen.dart';
import '../gd_preview_screen/key_preview_screen.dart';
import '../gd_preview_screen/mobile_preview_screen.dart';
import '../gd_preview_screen/money_preview_screen.dart';
import '../gd_preview_screen/shoe_preview_screen.dart';
import '../gd_preview_screen/umbrella_preview_screen.dart';
import '../gd_preview_screen/watch_preview_screen.dart';

class EntryForOthers extends StatefulWidget {
  EntryForOthers({Key? key}) : super(key: key);

  @override
  State<EntryForOthers> createState() => _EntryForOthersState();
}

class _EntryForOthersState extends State<EntryForOthers> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final controller = Get.find<InfoEntryController>();

  final compController = Get.put(OthersEntryController());

  final othersController = Get.find<OthersEntryController>();

  int? dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: hColumnHorizontal),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: ListTile(
                  title: Text('yes'.tr),
                  leading: Radio(
                    value: 1,
                    groupValue: controller.entryValue,
                    activeColor: primaryColor,
                    onChanged: (value) {
                      setState(() {
                        controller.entryValue = 1;
                        if (controller.productType.value == 'man') {
                          controller.personPostModel.gdFor = Constants.others;
                        } else {
                          controller.apiPostData['gdFor'] = Constants.others;
                        }
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ListTile(
                  title: Text('no'.tr),
                  leading: Radio(
                    value: 2,
                    groupValue: controller.entryValue,
                    activeColor: primaryColor,
                    onChanged: (value) {
                      setState(() {
                        controller.entryValue = 2;
                        if (controller.productType.value == 'man') {
                          controller.personPostModel.gdFor = Constants.own;
                        } else {
                          controller.apiPostData['gdFor'] = Constants.own;
                        }
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          controller.entryValue == 1
              ? Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text('doc_type'.tr, style: GTheme.subtitle),
                          ),
                          Expanded(
                            flex: 3,
                            child: DropdownButtonFormField(
                              value: dropDownValue,
                              onChanged: (val) {
                                setState(() {
                                  dropDownValue = int.parse(val.toString());
                                  controller.apiPostData[
                                          'nationalIdentityTypeId'] =
                                      int.parse(val.toString()) + 1;
                                });
                              },
                              validator: (val) {
                                if (val == null) {
                                  return 'required'.tr;
                                }
                                return null;
                              },
                              hint: Text('select'.tr),
                              items: [
                                DropdownMenuItem(
                                  value: 0,
                                  child: Text('nid'.tr),
                                ),
                                /* DropdownMenuItem(
                                  value: 1,
                                  child: Text('passport'.tr),
                                ),
                                DropdownMenuItem(
                                  value: 2,
                                  child: Text('birth_cert'.tr),
                                ),*/
                              ],
                            ),
                          )
                        ],
                      ),
                      TextFormWithTitle(
                          title: 'doc_no'.tr,
                          hintText: 'doc_no'.tr,
                          keyboard: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'required'.tr;
                            } else if (controller.nidExists == false) {
                              return 'nid_error_title'.tr;
                            }
                            return null;
                          },
                          onChanged: (val) {
                            setState(() {
                              controller.entryForOtherNumber = val;
                              controller.apiPostData['identityNo'] = val;
                              controller.entryForOtherNidCheck();
                            });
                          }),
                      TextFormWithTitle(
                        title: 'mobile_number'.tr,
                        hintText: 'mobile_number'.tr,
                        keyboard: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                        onChanged: (val) {
                          controller.apiPostData['mobileNo'] = val;
                        },
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
          const SizedBox(height: 20),
          customButton(context, 'next'.tr, () {
            setState(() {
              if (controller.entryValue == 2 ||
                  controller.entryValue == 1 &&
                      _formKey.currentState!.validate() &&
                      controller.nidExists == true) {
                if (controller.productType.value == 'vehicle') {
                  Get.to(() => VehiclePreviewScreen());
                } else if (controller.productType.value == 'man') {
                  Get.to(() => PersonPreviewScreen());
                  if (controller.entryValue == 2) {
                    controller.personPostModel.gdFor = Constants.own;
                  }
                  controller.personPostModel.gDTypeId = 1;
                  controller.personPostModel.productTypeId = 4;
                  controller.personPostModel.gdDate =
                      Constants.apiFormatDate(DateTime.now());
                  controller.personPostModel.userName =
                      Get.find<MyPrefs>().username.val;
                } else {
                  switch (othersController.documentId.value) {
                    case 1:
                      Get.to(() => ComputerPreviewScreen());
                      break;
                    case 2:
                      Get.to(() => WatchPreviewScreen());
                      break;
                    // electronics
                    case 3:
                      Get.to(() => ElectronicsPreviewScreen());
                      break;
                    case 4:
                      Get.to(() => MobilePreviewScreen());
                      break;
                    case 5:
                      Get.to(() => KeyPreviewScreen());
                      break;
                    case 6:
                      Get.to(() => CardPreviewScreen());
                      break;
                    case 7:
                      Get.to(() => DocumentPreviewScreen());
                      break;
                    case 8:
                      Get.to(() => BagPreviewScreen());
                      break;
                    case 9:
                      Get.to(() => MoneyPreviewScreen());
                      break;
                    case 10:
                      Get.to(() => JeweleryPreviewScreen());
                      break;
                    case 11:
                      Get.to(() => GlassPreviewScreen());
                      break;
                    case 12:
                      Get.to(() => GarmentsPreviewScreen());
                      break;
                    case 13:
                      Get.to(() => ShoePreviewScreen());
                      break;
                    case 14:
                      Get.to(() => CosmeticsPreviewScreen());
                      break;
                    case 15:
                      Get.to(() => PetPreviewScreen());
                      break;
                    case 16:
                      Get.to(() => UmbrellaPreviewScreen());
                      break;
                    default:
                      Get.snackbar('warning'.tr, 'alert'.tr,
                          snackPosition: SnackPosition.BOTTOM,
                          colorText: blackColor);
                  }
                }
              }
            });

            /*controller.showCheckBox.value = true;
                    controller.showDNAButton.value = true;
                    controller.nextTileNumber.value = 0;
                    // api call
                    if (controller.productType.value == 'vehicle') {
                      controller.postVehicleEntryData();
                    } else if (controller.productType.value == 'man') {
                      controller.personPostModel.gdtypeId = 1;
                      controller.personPostModel.gDTypeId = 1;
                      controller.personPostModel.gdFor = 'OWN';
                      controller.personPostModel.productTypeId = 4;
                      controller.personPostModel.gdDate = Constants.apiFormatDate(DateTime.now());
                      controller.personPostModel.userName = Get.find<MyPrefs>().username.val;
                      log('Person Data: ${jsonEncode(controller.personPostModel)}');

                    } else {
                      if (compController.documentId.value == 7) {
                        compController.postDocumentEntryData();
                      } else {
                        compController.postOthersEntryData();
                      }
                    }*/
          }),
        ],
      ),
    );
  }
}
