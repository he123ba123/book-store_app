import 'package:bookstore_app/features/model/book_model.dart';

class BookCardModel {
  final ModelBook bookModel;

  BookCardModel({required this.bookModel});

  factory BookCardModel.fromJson(Map<String, dynamic> json) {
    return BookCardModel(
      bookModel: ModelBook.fromJson(
        json["volumeInfo"],
      ),
    );
  }
}