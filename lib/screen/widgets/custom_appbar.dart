import 'package:flutter/material.dart';
import 'package:online_gd/theme/g_theme.dart';

PreferredSizeWidget? customAppbar(String title) => AppBar(
      backgroundColor: primaryColor,
      toolbarHeight: 80,
      title: Text(
        title,
        style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.bold,
            fontSize: 23.0),
      ),
      /*leading: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ClipOval(
          child: CachedNetworkImage(
            imageUrl:
                RemoteServices.baseImageUrl + Get.find<MyPrefs>().userImage.val,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => Image.asset(
              'assets/images/image-holder.png',

            ),
            fit: BoxFit.cover,
            height: 80,
            width: 80,
          ),
        ),
      ),
      actions: [
        Builder(
          builder: (context) => InkWell(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                'assets/images/icon.png',
                height: 80,
                width: 80,
              ),
            ),
          ),
        )
      ],*/
    );
