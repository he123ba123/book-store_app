
import 'package:bookstore_app/features/model/card_model..dart';

sealed class BookState {}

final class BookInitial extends BookState {}
final class BookSuccess extends BookState {
  List<BookCardModel> bookCardModel;
  BookSuccess({required this.bookCardModel});
}

final class BookLoading extends BookState {}