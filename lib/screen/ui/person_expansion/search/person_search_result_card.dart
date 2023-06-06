import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/search_controller/person_search_controller.dart';
import 'package:online_gd/screen/widgets/double_text.dart';
import 'package:online_gd/util/constants.dart';

import '../../../../model/person_model/man_search_model.dart';
import '../../../../theme/g_theme.dart';

class PersonSearchResultCard extends StatelessWidget {
  PersonSearchResultCard({Key? key, required this.result}) : super(key: key);
  final controller = Get.find<PersonSearchController>();
  ManInformation? result = ManInformation();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              result?.name == null
                  ? const SizedBox()
                  : Text(
                      result?.name,
                      style: GTheme.headline,
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Date: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 4),
                      Text(Constants.formattedDate(
                          result?.gDInformation?.gdDate ?? '2000-00-00'))
                    ],
                  ),
                  const SizedBox(width: 8),
                  Text(result?.gDInformation?.gdNumber ?? ''),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Divider(),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: '${'father_name'.tr}: ', style: GTheme.body1),
                    TextSpan(
                        text: result?.fatherName ?? '', style: GTheme.body2),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: '${'mother_name'.tr}: ', style: GTheme.body1),
                    TextSpan(
                        text: result?.motherName ?? '', style: GTheme.body2),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: '${'spouse_name'.tr}: ', style: GTheme.body1),
                    TextSpan(
                        text: result?.spouseName ?? '', style: GTheme.body2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
