import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';

class color_item extends StatelessWidget {
  const color_item({super.key, required this.ischoosen, required this.color});
  final bool ischoosen;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ischoosen
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 36,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 36,
          );
  }
}

class color_list_view extends StatefulWidget {
  const color_list_view({super.key});

  @override
  State<color_list_view> createState() => _color_list_viewState();
}

class _color_list_viewState extends State<color_list_view> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
              },
              child: color_item(
                color: colors[index],
                ischoosen: currentindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
