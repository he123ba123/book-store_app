import 'package:bookstore_app/features/model/image_model.dart';

class ModelBook {
  final String title;
  final List authors;
  final num pageCount;
  final List categories;
  final String previewLink;
  final ModelImage imageModel;

  ModelBook(
      {required this.title,
      required this.authors,
      required this.pageCount,
      required this.categories,
      required this.imageModel,
      required this.previewLink});

  factory ModelBook.fromJson(Map<String, dynamic> json) {
    return ModelBook(
        title: json['title'],
        authors: json['authors'],
        pageCount: json['pageCount'],
        categories: json['categories'],
        imageModel: ModelImage.fromJson(json['imageLinks']),
        previewLink: json['previewLink']);

  }
}