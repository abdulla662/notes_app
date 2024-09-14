import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Custom_Note_Item.dart';

class Note_Item_builder extends StatelessWidget {
  const Note_Item_builder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: const Note_Item());
      },
    );
  }
}
