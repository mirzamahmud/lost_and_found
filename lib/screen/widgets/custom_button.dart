import 'package:flutter/material.dart';
import 'package:online_gd/theme/g_theme.dart';

Widget customButton(BuildContext context, String text, void Function() function) {
  return InkWell(
    onTap: function,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 40.0),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF1C1C1C).withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 4,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 10.0),
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ),
    ),
  );
}
