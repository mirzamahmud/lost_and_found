import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/forget_password_controller.dart';
import 'package:online_gd/controller/registration_controller.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

class PlaceTimePreview extends StatelessWidget {
  const PlaceTimePreview(
      {Key? key,
      this.distValue,
      this.thanaValue,
      this.unionValue,
      this.villValue,
      this.placeInfoValue,
      this.dateValue,
      this.timeValue})
      : super(key: key);
  final distValue;
  final thanaValue;
  final unionValue;
  final villValue;
  final placeInfoValue;
  final dateValue;
  final timeValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: deactivatedColor,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            'lost_place'.tr,
            textAlign: TextAlign.center,
            style: GTheme.headline,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [

              TextWithTitle(title: 'dist'.tr, data: distValue),
              TextWithTitle(title: 'thana'.tr, data: thanaValue),
              TextWithTitle(title: 'union'.tr, data: unionValue),
              TextWithTitle(title: 'vill'.tr, data: villValue),
              TextWithTitle(title: 'place_info'.tr, data: placeInfoValue),
              TextWithTitle(title: 'date'.tr, data: dateValue),
              TextWithTitle(title: 'time'.tr, data: timeValue),
     
            ],
          ),
        ),
      ],
    );
  }
}
