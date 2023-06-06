import 'package:flutter/material.dart';

class ButtonWithTitle extends StatelessWidget {
  const ButtonWithTitle({Key? key, this.title, this.buttonTitle, required this.onTap}) : super(key: key);
  final title;
  final buttonTitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Text(title)),
        const SizedBox(width: 8),
        Expanded(
          flex: 3,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    )
                )
            ),
            onPressed: onTap,
            child: Text(buttonTitle),
          ),
        )
      ],
    );
  }
}
