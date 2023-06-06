import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/dropdown_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../model/others_model/type_by_doc_id_model.dart';

class MoneyInfoExpansion extends StatefulWidget {
  const MoneyInfoExpansion({Key? key}) : super(key: key);

  @override
  State<MoneyInfoExpansion> createState() => _MoneyInfoExpansionState();
}

class _MoneyInfoExpansionState extends State<MoneyInfoExpansion> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final controller = Get.find<InfoEntryController>();
  final othersController = Get.find<OthersEntryController>();

  final prefs = Get.find<MyPrefs>();

  bool isPennySelected = false;
  int val = 2;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Form(
        key: _formKey,
        child: ExpansionTile(
          key: GlobalKey(),
          initiallyExpanded: controller.nextTileNumber.value == 1,
          collapsedBackgroundColor: deactivatedColor,
          title: Text('money_info'.tr, style: GTheme.title),
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('money_type'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<TypeByDocIdModel>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: othersController
                                .othersPreviewName['moneyCardType'] ??
                            'Select',
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: othersController.typeListByDoc,
                      itemAsString: (TypeByDocIdModel? type) =>
                          prefs.language.val
                              ? type!.categoryName.toString()
                              : type!.categoryNameBn.toString(),
                      validator: (value) {
                        if (value == null &&
                            othersController
                                    .othersPreviewName['moneyCardType'] ==
                                null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      onChanged: (value) {
                        controller.apiPostData['dropDownIDType'] = value!.id;
                        othersController.othersPreviewName['moneyCardType'] =
                            (prefs.language.val
                                ? value.categoryName
                                : value.categoryNameBn)!;
                      }),
                )
              ],
            ),
            TextFormWithTitle(
                title: 'quantity'.tr,
                initialValue:
                    othersController.othersPreviewName['moneyAmmount'],
                hintText: 'quantity'.tr,
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['moneyAmmount'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['moneyAmmount'] = val;
                }),
            TextFormWithTitle(
                title: 'spec_description'.tr,
                initialValue:
                    othersController.othersPreviewName['specificDetails'],
                hintText: 'spec_description'.tr,
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['specificDetails'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['specificDetails'] = val;
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text('penny_included'.tr, style: GTheme.subtitle),
                ),
                Expanded(
                  flex: 2,
                  child: ListTile(
                    title: Text('yes'.tr),
                    leading: Radio<int>(
                      value: 1,
                      groupValue: val,
                      activeColor: primaryColor,
                      onChanged: (value) {
                        othersController.othersPreviewName['pennyIncluded'] =
                            'Yes';
                        setState(() {
                          val = value!;
                          isPennySelected = true;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ListTile(
                    title: Text('no'.tr),
                    leading: Radio<int>(
                      value: 2,
                      groupValue: val,
                      activeColor: primaryColor,
                      onChanged: (value) {
                        othersController.othersPreviewName['pennyIncluded'] =
                            'No';
                        setState(() {
                          val = value!;
                          isPennySelected = false;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            isPennySelected
                ? TextFormWithTitle(
                    title: 'penny_amount'.tr,
                    hintText: 'penny_amount'.tr,
                    initialValue:
                        othersController.othersPreviewName['pennyAmount'],
                    onChanged: (val) {
                      othersController.othersPreviewName['pennyAmount'] = val;
                    })
                : const SizedBox(),
            DropdownWithTitle(
              title: 'penny_type'.tr,
              hintText:
                  othersController.othersPreviewName['pennyType'] ?? 'Select',
              dropdownList: const ['Steel Made', 'Bronze Made', 'Hybrid Type'],
              validator: (value) {
                if (value == null) {
                  return 'required'.tr;
                }
                return null;
              },
              saveValue: (value) {
                othersController.othersPreviewName['pennyType'] = value!;
              },
            ),
            const SizedBox(height: 20),
            customButton(context, 'next'.tr, () {
              if (_formKey.currentState!.validate()) {
                controller.nextTileNumber.value = 2;
                controller.showIdentity.value = true;
              }
            })
          ],
        ),
      ),
    );
  }
}
