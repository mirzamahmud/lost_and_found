import 'package:flutter/material.dart';
import 'package:online_gd/theme/g_theme.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkText,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/no-internet.png',
                color: primaryColor,
                height: 60,
                width: 60,
              ),
              const SizedBox(width: 10),
              const Text(
                'Network Error',
                style: GTheme.headline1,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            'Are you connected with internet?',
            style: GTheme.headline.copyWith(color: primaryColor),
          ),
        ],
      ),
    );
  }
}
