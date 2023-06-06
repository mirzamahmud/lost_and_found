import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/ui/person_expansion/search/person_search_result_card.dart';
import 'package:online_gd/service/remote_services.dart';

import '../../model/person_model/man_search_model.dart';

class PersonSearchController extends GetxController {
  final allPersonSearchList = <ManSearchModel>[].obs;
  final infoController = Get.find<InfoEntryController>();

  final isResultShown = false.obs;
  final isLoading = false.obs;

// Person entry name for preview
  final personPreviewMap = {
    'ageYear': '',
    'relation': '',
    'age': '',
    'gender': '',
    'mental_handicap': '',
    'doc_type': '',
    'doc_no': '',
    'number_type': '',
    'des_circumcision': '',
    'religion': '',
    'occupation': '',
    'marital_status': '',
    'habit': '',
    'regionalism': '',
    'accent': '',
    'dist': '',
    'thana': '',
    'vill': '',
    'union': '',
    'eye': '',
    'nose': '',
    'hair': '',
    'forehead': '',
    'beard': '',
    'physical_const': '',
    'face_shape': '',
    'chin': '',
    'skin_color': '',
    'ears': '',
    'mustache': '',
    'neck': '',
    'height': '',
    'inches': '',
    'birthmark': '',
    'des_teeth': '',
    'special_physical_des': '',
    'fullDetails': '',
    'head': '',
    'head_cloth_color': '',
    'in_eyes': '',
    'eye_color': '',
    'in_leg': '',
    'leg_cloth_color': '',
    'in_throat': '',
    'throat_cloth_color': '',
    'in_body': '',
    'body_cloth_color': '',
    'in_waist': '',
    'waist_cloth_color': '',
    'lost_dist': '',
    'lost_thana': '',
    'lost_post_office': '',
    'lost_union': '',
  }.obs;

  void getPersonAllSearchResult() async {
    try {
      isLoading.value = true;
      await RemoteServices.personAllResult(infoController.personPostModel)
          .then((value) {
        allPersonSearchList.value = value;
      });
    } finally {
      isLoading.value = false;
    }
  }
}
