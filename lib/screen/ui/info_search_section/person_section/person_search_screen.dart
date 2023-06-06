import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/ui/person_expansion/entry/physical_details_expansion.dart';
import 'package:online_gd/screen/ui/person_expansion/search/person_search_dress_expansion.dart';
import 'package:online_gd/screen/ui/person_expansion/search/person_search_physical_expansion.dart';
import 'package:online_gd/screen/ui/person_expansion/search/person_search_result_card.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';

import '../../../../controller/search_controller/person_search_controller.dart';
import '../../../widgets/custom_floating_button.dart';
import '../../person_expansion/entry/dress_description_expansion.dart';

class PersonSearchScreen extends StatelessWidget {
  PersonSearchScreen({Key? key}) : super(key: key);

  final controller = Get.put(InfoEntryController());
  final searchController = Get.put(PersonSearchController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppbar('lost_person'.tr),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                PersonSearchPhysicalExpansion(),
                const SizedBox(height: 8),
                PersonSearchDressExpansion(),
                const SizedBox(height: 20),
                customButton(context, 'search'.tr, () {
                  searchController.isResultShown.value = true;
                  searchController.getPersonAllSearchResult();
                }),
                const SizedBox(height: 10),
                Obx(
                  () => Visibility(
                    visible: searchController.isResultShown.value,
                    child: Flexible(
                      fit: FlexFit.loose,
                      child: searchController.isLoading.value
                          ? const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            )
                          : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: searchController.allPersonSearchList.length,
                          itemBuilder: (context, i) => PersonSearchResultCard(
                        result: searchController.allPersonSearchList[i].manInformation,
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const CustomFloatingButton(),
      ),
    );
  }
}
