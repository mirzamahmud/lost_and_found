import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../theme/g_theme.dart';
import '../../../widgets/text_with_title.dart';

class DetailsOthersPreview extends StatelessWidget {
  const DetailsOthersPreview({Key? key, this.fullDetailsValue}) : super(key: key);
  final fullDetailsValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: deactivatedColor,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            'full_details'.tr,
            textAlign: TextAlign.center,
            style: GTheme.headline,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: TextWithTitle(title: 'full_details'.tr, data: fullDetailsValue),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          color: deactivatedColor,
          width: double.infinity,
          padding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            'entry_others'.tr,
            textAlign: TextAlign.center,
            style: GTheme.headline,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: TextWithTitle(title: 'entry_others'.tr, data: 'no'.tr),
        ),
        const SizedBox(height: 30)
      ],
    );
  }
}
