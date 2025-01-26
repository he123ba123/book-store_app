import 'package:bookstore_app/features/model/card_model..dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.bookCardModel,
  });
  final BookCardModel bookCardModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              launchUrlString(bookCardModel.bookModel.previewLink);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    bookCardModel.bookModel.imageModel.thumbnail,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          bookCardModel.bookModel.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          bookCardModel.bookModel.authors[0],
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(
              "${bookCardModel.bookModel.pageCount.toString()} Pages",
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(
              flex: 1,
            ),
            InkWell(
              onTap: () {
                launchUrlString(bookCardModel.bookModel.previewLink);
              },
              child: const Icon(
                Icons.library_books_outlined,
                color: Colors.deepPurple,
              ),
            )
          ],
        ),
      ],
    );
  }
}
