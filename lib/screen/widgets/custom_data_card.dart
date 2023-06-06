import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/theme/g_theme.dart';

class CustomDataCard extends StatelessWidget {
  final icon;
  final title;
  final data;
  Function()? onTap;

  CustomDataCard({Key? key, this.icon, this.title, this.data, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
        child: Card(
          child: SizedBox(
              width: 140,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Icon(icon, size: 60),
                    Center(
                      child: Text(
                        '$title ($data)',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              )
          ),
          elevation: 4,
          shadowColor: primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}