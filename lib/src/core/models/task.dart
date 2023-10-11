import 'package:proyecto_edteam/src/core/models/parameters.dart';

class Task{
  String? title;
  String? description;
  String? date;
  List<String>? urls;
  StateTask state;

  Task({
    this.title,
    this.description,
    this.date,
    this.urls,
    this.state = StateTask.Created,
  });
}