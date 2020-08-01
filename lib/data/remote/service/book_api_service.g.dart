// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../service/book_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _BookApiService implements BookApiService {
  _BookApiService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://www.googleapis.com/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getBooksByCategory(bookQuery) async {
    ArgumentError.checkNotNull(bookQuery, 'bookQuery');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{'q': bookQuery};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request('books/v1/volumes',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl),
        data: _data);
    final value = BookResponse.fromJson(_result.data);
    return Future.value(value);
  }
}
