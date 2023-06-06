import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/details_others_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/person_address_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/person_basic%20info_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/person_dress_description_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/person_identity_info_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/person_physical_details_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/place_time_preview.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';

import '../../../controller/search_controller/person_search_controller.dart';
import '../../../theme/g_theme.dart';
import '../../../util/constants.dart';
import 'components/person_photo_preview.dart';

class PersonPreviewScreen extends StatelessWidget {
   PersonPreviewScreen({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final personController = Get.find<PersonSearchController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('lost_person'.tr),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            PersonBasicInfoPreview(),
            const SizedBox(height: 20),
            PersonIdentityInfoPreview(),
            const SizedBox(height: 20),
            PersonAddressPreview(),
            const SizedBox(height: 20),
            PersonPhysicalDetailsPreview(),
            const SizedBox(height: 20),
            PersonDressDescriptionPreview(),
            const SizedBox(height: 20),
            PersonPhotoPreview(),
            PlaceTimePreview(
              distValue: personController.personPreviewMap['lost_dist'] ,
              thanaValue: personController.personPreviewMap['lost_thana'],
              unionValue: personController.personPreviewMap['lost_post_office'],
              villValue: personController.personPreviewMap['lost_union'],
              placeInfoValue: controller.personPostModel.placeDetails ?? '',
              dateValue: controller.personPostModel.lafDate == null ? '' : Constants.formattedPreviewDate(
                  controller.personPostModel.lafDate.toString()),
              timeValue: controller.personPostModel.lafTime == null ? '' : Constants.formatTime(
                  controller.personPostModel.lafTime.toString()),
            ),
            const SizedBox(height: 20),

            DetailsOthersPreview(
              fullDetailsValue:
              controller.personPostModel.storyfullDescription ?? '',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('back'.tr, style: GTheme.title),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextButton(
                        onPressed: () {
                          controller.postPersonEntryData();
                        },
                        child: Text('submit'.tr, style: GTheme.title),
                      ),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
