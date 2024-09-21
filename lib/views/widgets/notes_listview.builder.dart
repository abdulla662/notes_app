import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Custom_Note_Item.dart';

class Note_Item_builder extends StatelessWidget {
  const Note_Item_builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
              padding: EdgeInsets.symmetric(vertical: 8), child: Note_Item());
        },
      ),
    );
  }
}
