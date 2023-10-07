class User {
  final String id;
  final String author;
  final double width;
  final double height;
  final String downloadUrl;

  User({
    required this.id,
    required this.author,
    required this.width,
    required this.height,
    required this.downloadUrl,
  });
  factory User.fromjson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      author: json['author'],
      width: json['width'],
      height: json['height'],
      downloadUrl: json['download_url'],
    );
  }
}
