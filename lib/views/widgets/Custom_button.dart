import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';

class Custom_Buttom extends StatelessWidget {
  const Custom_Buttom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(16)),
      child: const Center(
        child: Text(
          "Add",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
