import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/multi_textform_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';
import 'package:online_gd/util/constants.dart';

import '../../../../model/person_model/person_post_model.dart';

class DNAProfileExpansion extends StatelessWidget {
  DNAProfileExpansion({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: ExpansionTile(
        key: GlobalKey(),
        initiallyExpanded: controller.nextTileNumber.value == 10,
        collapsedBackgroundColor: deactivatedColor,
        title: Text('dna_profile'.tr, style: GTheme.title),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                flex: 2,
                child: Text('Locous', style: GTheme.title),
              ),
              SizedBox(width: 8),
              Expanded(
                flex: 2,
                child: Text('Genotype', style: GTheme.title),
              ),
            ],
          ),
          MultiTextFormTitle(
            title: 'D3S1358',
            onChanged: (val) {
            },
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'vWA',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'D16S539',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          TextFormWithTitle(
            title: 'CSF1PO',
            
            onChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'TPOX',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          TextFormWithTitle(
            title: 'Y indel',
            
            onChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'Amelogenin',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'D8S1179',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'D21S11',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'D18S51',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          TextFormWithTitle(
              title: 'DYS391',
              
              onChanged: (val) {}),
          MultiTextFormTitle(
            title: 'D2S441',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'D19S433',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'TH01',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'FGA',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'D22S1045',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'D5S818',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'D13S317',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          MultiTextFormTitle(
            title: 'D7S820',
            onChanged: (val) {},
            secondOnChanged: (val) {},
          ),
          const SizedBox(height: 20),
          customButton(context, 'next'.tr, () {

          }),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}