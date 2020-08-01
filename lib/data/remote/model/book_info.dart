import 'package:flutter_ebooks/data/remote/model/books.dart';

class BookInfo {
  Book book;

  BookInfo({this.book});

  BookInfo.fromJson(Map<String, dynamic> json) {
    book = json['volumeInfo'] != null ? Book.fromJson(json['volumeInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.book != null) {
      data['volumeInfo'] = this.book.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'BookInfo{book: $book}';
  }
}
