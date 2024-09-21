import 'package:hive/hive.dart';
part 'note_view.g.dart';

@HiveType(typeId: 0)
class NoteView extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteView(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
