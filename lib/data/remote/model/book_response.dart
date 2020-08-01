import 'package:flutter_ebooks/data/remote/model/book_info.dart';

class BookResponse {
  String kind;
  int totalItems;
  List<BookInfo> books;

  BookResponse({this.kind, this.totalItems, this.books});

  BookResponse.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    totalItems = json['totalItems'];
    print("from json ${json['items']}");
    if (json['items'] != null) {
      var list = json['items'] as List;
      this.books = list.map((i) => BookInfo.fromJson(i)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    data['totalItems'] = this.totalItems;
    if (this.books != null) {
      data['items'] = this.books.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'BookResponse{kind: $kind, totalItems: $totalItems, books: $books}';
  }
}
