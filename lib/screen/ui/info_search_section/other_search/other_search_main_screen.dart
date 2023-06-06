import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/details_others_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/person_preview_screen.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/identity_info_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/watch_info_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/garments_info_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/person_address_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/person_basic%20info_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/person_dress_description_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/person_identity_info_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/pets_info_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/keys_information_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/person_physical_details_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/product_info_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/others_preview/shoe_info_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/vehicle_info_preview.dart';
import 'package:online_gd/service/remote_services.dart';

import '../../../../controller/search_controller/other_search_controller.dart';
import '../../../../theme/g_theme.dart';
import '../../../widgets/custom_appbar.dart';
import '../../gd_preview_screen/components/others_preview/jewelry_info_preview.dart';
import '../../gd_preview_screen/components/others_preview/umbrella_info_preview.dart';
import '../../gd_preview_screen/computer_preview_screen.dart';

class OtherSearchMainScreen extends StatelessWidget {
  OtherSearchMainScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  final otherSearchController = Get.find<OtherSearchController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: SizedBox(
                height: 120.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: otherSearchController.othersItemNameList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        // Get.to(() => PersonPreviewScreen());
                        Get.snackbar('Alert!', 'alert'.tr,
                            snackPosition: SnackPosition.BOTTOM);
                      },
                      child: Card(
                        child: SizedBox(
                          width: 120,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40.0,
                                  width: double.infinity,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        '${RemoteServices.baseUrl}${otherSearchController.othersItemNameList[index].imagePath}',
                                    placeholder: (context, url) => const Center(
                                        child: CircularProgressIndicator()),
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                            'assets/images/img-notavailable.png'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Center(
                                  child: Text(
                                    '${otherSearchController.othersItemNameList[index].documentTypeNameBn}',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        elevation: 4,
                        shadowColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
