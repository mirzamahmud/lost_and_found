import 'package:flutter/material.dart';

Widget customDrawerBodyItem(
    {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}