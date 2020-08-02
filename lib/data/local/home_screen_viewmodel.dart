import 'package:flutter/foundation.dart';
import 'package:flutter_ebooks/data/remote/model/book_info.dart';
import 'package:flutter_ebooks/data/remote/repo/book_repository.dart';

class HomeScreenViewModel extends ChangeNotifier {
  final BookRepository bookRepository;
  List<BookInfo> _books;
  List<BookInfo> _romanticBooks;

  List<BookInfo> get trendingBooks => _books;

  List<BookInfo> get romanticBooks => _romanticBooks;

  HomeScreenViewModel({this.bookRepository});

  /// Managing My [HomeScreenViewModel] UI State
  /// When App is first loaded [_books] == null show a loading indicator
  /// When its given a value [_books] success response show the data
  /// when the network request fails [_books] is given an empty list show an error state
  void fetchBook({String bookName}) async {
    final book = await bookRepository.getBook(bookName);
    if (book != null) {
      _books = book.books;
      notifyListeners();
    } else {
      _books = [];
      notifyListeners();
    }
  }

  void fetchRomanticBooks() async {
    final book = await bookRepository.getBook("romance");
    if (book != null) {
      _romanticBooks = book.books;
      notifyListeners();
    } else {
      _romanticBooks = [];
      notifyListeners();
    }
  }
}
