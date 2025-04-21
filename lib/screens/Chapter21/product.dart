class Product {
  final int id;
  final String title;
  final String description;

  Product({required this.id, required this.title, required this.description});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'description': description};
  }
}
