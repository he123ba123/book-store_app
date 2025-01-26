import 'package:bookstore_app/features/model/card_model..dart';
import 'package:dio/dio.dart';

class DataBook {
  final Dio dio = Dio();
  Future<List<BookCardModel>> getBookData() async {
    Response response = await dio.get(
      "https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest%20&q=computer%20science",
    );
    Map<String, dynamic> jsonData = response.data;
    try {
      if (response.statusCode == 200) {
        List bookItem = jsonData["items"];
        List<BookCardModel> mappingItems =
            bookItem.map((e) => BookCardModel.fromJson(e)).toList();

        return mappingItems;
      } else {
        throw Exception("faluier");
      }
    } on DioException catch (error) {
      if (error.response != null) {
        return error.response!.data;
      } else {
      throw Exception("faluier");
    }
    }
  }
}
