import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';
import 'package:notes_app/views/widgets/custom_searchicon.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar(
      {super.key, required this.titletext, required this.icon, this.onPressed});
  String titletext;
  final IconData icon;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titletext,
          style: const TextStyle(color: Colors.white, fontSize: 28),
        ),
        Spacer(),
        CustomIcon(onPressed: onPressed, icon: icon)
      ],
    );
  }
}
