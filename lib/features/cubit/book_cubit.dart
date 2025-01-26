
import 'package:bookstore_app/features/cubit/book_state.dart';
import 'package:bookstore_app/features/data/book_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit() : super(BookInitial());
 final  DataBook bookService = DataBook();

  getDataCubit() async {
    emit(BookLoading());
    var success = await bookService.getBookData();
    emit(BookSuccess(bookCardModel: success));
  }
}

