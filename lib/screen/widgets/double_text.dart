import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_gd/theme/g_theme.dart';

class DoubleText extends StatelessWidget {
  const DoubleText({Key? key, this.title, this.data}) : super(key: key);
  final title;
  final data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 8.0),
      child: RichText(
        maxLines: 1,
          text: TextSpan(children: [
            TextSpan(
                text: '$title: ',
                style: GTheme.title),
            TextSpan(
                text: data,
                style: GTheme.subtitle.copyWith(overflow: TextOverflow.ellipsis,)),
          ])),
    );
  }
}