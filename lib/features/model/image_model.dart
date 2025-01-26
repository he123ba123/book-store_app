class ModelImage {
  final String thumbnail;
  ModelImage({required this.thumbnail});

  factory ModelImage.fromJson(Map<String, dynamic> json) {
    return ModelImage(thumbnail: json["thumbnail"] ?? ""); 
  }
}