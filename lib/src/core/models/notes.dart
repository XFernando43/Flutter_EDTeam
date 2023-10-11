import 'package:proyecto_edteam/src/core/models/parameters.dart';

class Note{
  String? title;
  String? date;
  String? description;
  bool private = false;
  List<String>? urls;
  String? image;
  TypeNote type;
  StateNote state;

  Note({
    this.date,
    this.description,
    this.private = false,
    this.title,
    this.urls,
    this.state = StateNote.Visible,
    this.type = TypeNote.Text,
  });
}