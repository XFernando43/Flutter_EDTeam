class Note{
  String? title;
  String? date;
  String? description;
  bool private = false;
  List<String>? urls;
  String? image;

  Note({
    this.date,
    this.description,
    this.private = false,
    this.title,
    this.urls,
  });

}