import 'package:flutter/material.dart';
import 'package:online_gd/theme/g_theme.dart';

class CustomCard extends StatelessWidget {
  final icon;
  final image;
  final size;
  final title;
  final onTap;

  const CustomCard(
      {Key? key, this.icon, this.image, this.size, this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: SizedBox(
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) Icon(icon, size: size),
                    if (image != null)
                      Image.asset(image,
                          height: 60, width: 60, color: primaryColor),
                    Center(
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              )),
          elevation: 4,
          shadowColor: primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
