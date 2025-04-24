class Cat {
  String? id;
  String? url;
  int? width;
  int? height;

  Cat({this.id, this.url, this.width, this.height});

  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(
      id: json['id'] as String?,
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );
  }
}
