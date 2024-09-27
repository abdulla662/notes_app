import 'package:flutter/material.dart';

class color_item extends StatelessWidget {
  const color_item({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 38,
    );
  }
}

class color_list_view extends StatelessWidget {
  const color_list_view({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return color_item();
        },
      ),
    );
  }
}
