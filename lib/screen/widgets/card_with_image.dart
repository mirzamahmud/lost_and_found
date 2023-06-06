import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_gd/theme/g_theme.dart';

class CardWithImage extends StatelessWidget {
  final image;
  double? height = 30.0;
  double? width = 30.0;
  final title;
  final onTap;

  CardWithImage({Key? key, this.image, this.height, this.width, this.title, this.onTap}) : super(key: key);

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
                    SvgPicture.asset(
                        'assets/images/$image',
                        color: primaryColor,
                      width: width,
                      height: height,
                    ),
                    Center(
                      child: Text(
                        title,
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