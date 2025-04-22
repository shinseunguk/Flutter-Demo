class AlbumTwo {
  int? userId;
  int? id;
  String? title;

  AlbumTwo({this.userId, this.id, this.title});

  factory AlbumTwo.fromJson(Map<String, dynamic> json) {
    return AlbumTwo(
      userId: json['userId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
    );
  }
}
