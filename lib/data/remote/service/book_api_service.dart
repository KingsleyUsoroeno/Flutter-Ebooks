import 'package:dio/dio.dart';
import 'package:flutter_ebooks/data/remote/model/book_response.dart';
import 'package:retrofit/http.dart';

part 'book_api_service.g.dart';

@RestApi(baseUrl: "https://www.googleapis.com/")
abstract class BookApiService {
  factory BookApiService(Dio dio, {String baseUrl}) = _BookApiService;

  @GET('books/v1/volumes')
  Future<BookResponse> getBooksByCategory(@Query('q') String bookQuery);
}
