import 'package:flutter/material.dart';
import 'package:online_gd/model/gd_details.dart';
import 'package:online_gd/screen/widgets/double_text.dart';
import 'package:online_gd/theme/g_theme.dart';
import 'package:online_gd/util/constants.dart';

class ReportCard extends StatelessWidget {
  ReportCard({Key? key, required this.detailsData}) : super(key: key);
  GdDetails detailsData = GdDetails();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    child: Card(
      color: lightGreyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DoubleText(
            title: 'Tracking No',
            data: detailsData.trackingNo ?? '',
          ),
          DoubleText(
            title: 'GD Type',
            data: detailsData.gdType?.gdTypeName ?? '',
          ),
          DoubleText(
            title: 'GD Date',
            data: Constants.formattedDate(detailsData.date ?? ''),
          ),
          const SizedBox(height: 10),
        ],
      ),
    ),
    );
  }
}
