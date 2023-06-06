import 'package:credit_card_validator/credit_card_validator.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/screen/widgets/color_dropdown.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/datefield_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';
import 'package:online_gd/util/custom_input_formatter.dart';

import '../../../model/others_model/document_brand_by_doc_id.dart';
import '../../../model/others_model/type_by_doc_id_model.dart';
import '../../../util/constants.dart';

class CardInfoExpansion extends StatelessWidget {
  CardInfoExpansion({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final controller = Get.find<InfoEntryController>();
  final othersController = Get.find<OthersEntryController>();
  final prefs = Get.find<MyPrefs>();

  final _ccValidator = CreditCardValidator();

  bool validateCreditCardInfo(String cardNumber) {
    var cNumberResult = _ccValidator.validateCCNum(cardNumber);

    if (cNumberResult.isPotentiallyValid) {
      return false;
    }
    return true;
  }

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
          title: Text('card_info'.tr, style: GTheme.title),
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('card_type'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<TypeByDocIdModel>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            othersController.othersPreviewName['cardType'] ??
                                'Select',
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      validator: (value) {
                        if (value == null &&
                            othersController.othersPreviewName['cardType'] ==
                                null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      items: othersController.typeListByDoc,
                      itemAsString: (TypeByDocIdModel? type) =>
                          prefs.language.val
                              ? type!.categoryName.toString()
                              : type!.categoryNameBn.toString(),
                      onChanged: (value) {
                        controller.apiPostData['brandTypeId'] = value!.id;
                        othersController.othersPreviewName['cardType'] =
                            (prefs.language.val
                                ? value.categoryName
                                : value.categoryNameBn)!;
                      }),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('brand'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: DropdownSearch<DocumentBrandByDocId>(
                        mode: Mode.MENU,
                        showSearchBox: true,
                        showClearButton: true,
                        dropdownSearchDecoration: InputDecoration(
                          hintText: othersController
                                  .othersPreviewName['cardBrandType'] ??
                              'Select',
                          hintStyle: const TextStyle(color: blackColor),
                        ),
                        validator: (value) {
                          if (value == null &&
                              othersController
                                      .othersPreviewName['cardBrandType'] ==
                                  null) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                        items: othersController.docBrandListByDocId,
                        itemAsString: (DocumentBrandByDocId? type) =>
                            prefs.language.val
                                ? type!.brandName.toString()
                                : type!.brandNameBn.toString(),
                        onChanged: (value) {
                          controller.apiPostData['dropDownIDType'] = value!.id;
                          othersController.othersPreviewName['cardBrandType'] =
                              (prefs.language.val
                                  ? value.brandName
                                  : value.brandNameBn)!;
                        }),
                  )
                ],
              ),
            ),
            TextFormWithTitle(
                title: 'bank_name'.tr,
                initialValue: othersController.othersPreviewName['bankName'],
                hintText: 'bank_name'.tr,
                validator: (value) {
                  if (value == null || value == '') {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['bankName'] = val;
                }),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('card_number'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      cursorColor: primaryColor,
                      keyboardType: TextInputType.number,
                      style: GTheme.subtitle,
                      initialValue:
                          othersController.othersPreviewName['cardNo'] ??
                              'card_number'.tr,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(19),
                        FilteringTextInputFormatter.digitsOnly,
                        CustomInputFormatter()
                      ],
                      validator: (value) {
                        if (value == null || value == '') {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText:
                              othersController.othersPreviewName['cardNo'] == ''
                                  ? 'card_number'.tr
                                  : othersController
                                      .othersPreviewName['cardNo'],
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 10.0)),
                      onChanged: (val) {
                        othersController.othersPreviewName['cardNo'] = val;
                      },
                    ),
                  ),
                ],
              ),
            ),
            TextFormWithTitle(
                title: 'org_name'.tr,
                initialValue: othersController.othersPreviewName['org_name'],
                hintText: 'org_name'.tr,
                validator: (value) {
                  if (value == null || value == '') {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['org_name'] = val;
                }),
            TextFormWithTitle(
                title: 'person_name'.tr,
                initialValue: othersController.othersPreviewName['personName'],
                hintText: 'person_name'.tr,
                validator: (value) {
                  if (value == null || value == '') {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['personName'] = val;
                }),
            DateFieldWithTitle(
                title: 'expire_date'.tr,
                hintText: controller.apiPostData['expireDate'] == null
                    ? 'expire_date'.tr
                    : Constants.formattedPreviewDate(
                        controller.apiPostData['expireDate'].toString()),
                validator: (value) {
                  if (value == null || value == '' &&
                      controller.apiPostData['expireDate'] == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['expireDate'] = val;
                }),
            ColorDropdown(
                colorHint: othersController.othersPreviewName['colorName'] ??
                    'color'.tr,
                changedFunction: (value) {
                  othersController.othersPreviewName['colorName'] =
                      (prefs.language.val
                          ? value?.colorName
                          : value?.colorNameBn)!;
                }),
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
