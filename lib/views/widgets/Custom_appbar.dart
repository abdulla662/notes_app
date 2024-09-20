import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_searchicon.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({required this.titletext, required this.icon});
  String titletext;
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titletext,
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        Spacer(),
        icon,
      ],
    );
  }
}
