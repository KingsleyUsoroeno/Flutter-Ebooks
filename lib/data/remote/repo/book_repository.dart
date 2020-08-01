import 'package:flutter_ebooks/data/remote/model/book_response.dart';

import 'file:///C:/Users/user/AndroidStudioProjects/flutter_ebooks/lib/data/remote/service/book_api_service.dart';

class BookRepository {
  final BookApiService bookApi;

  BookRepository({this.bookApi});

  Future<BookResponse> getBook(String bookCat) async {
    final bookResponse = await bookApi.getBooksByCategory(bookCat);
    print("book response from server is $bookResponse");
    return bookResponse;
  }
}
