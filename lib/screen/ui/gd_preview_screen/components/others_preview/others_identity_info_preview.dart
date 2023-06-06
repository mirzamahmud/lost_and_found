import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';

import '../../../../../theme/g_theme.dart';

class OthersIdentityInfoPreview extends StatelessWidget {
  OthersIdentityInfoPreview({Key? key, this.identityInfoValue})
      : super(key: key);
  final identityInfoValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: deactivatedColor,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  'identity_info'.tr,
                  style: GTheme.headline,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(title: 'identity_info'.tr, data: identityInfoValue),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Text('photo'.tr, style: GTheme.title),
                  ),
                  const SizedBox(width: 8),
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'on processing',
                      style: GTheme.subtitle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
