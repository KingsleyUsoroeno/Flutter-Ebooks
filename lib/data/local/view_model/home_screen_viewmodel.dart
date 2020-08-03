import 'package:flutter/foundation.dart';
import 'package:flutter_ebooks/data/local/dao/book_dao.dart';
import 'package:flutter_ebooks/data/local/db/book_db.dart';
import 'package:flutter_ebooks/data/remote/model/book_info.dart';
import 'package:flutter_ebooks/data/remote/repo/book_repository.dart';
import 'package:uuid/uuid.dart';

class HomeScreenViewModel extends ChangeNotifier {
  final BookRepository bookRepository;
  final BookDao bookDao;
  List<BookInfo> _books;
  List<BookInfo> _romanticBooks;

  List<BookInfo> get trendingBooks => _books;

  List<BookInfo> get romanticBooks => _romanticBooks;

  HomeScreenViewModel({this.bookRepository, this.bookDao});

  /// Managing My [HomeScreenViewModel] UI State
  /// When App is first loaded [_books] == null show a loading indicator
  /// When its given a value [_books] success response show the data
  /// when the network request fails [_books] is given an empty list show an error state
  void fetchBook({String bookName}) async {
    final book = await bookRepository.getBook(bookName);
    if (book != null) {
      _books = book.books;
      _insertNewBook(bookCategory: bookName, books: _books);
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
      _insertNewBook(bookCategory: "Romance", books: book.books);
      notifyListeners();
    } else {
      _romanticBooks = [];
      notifyListeners();
    }
  }

  void _insertNewBook({String bookCategory, List<BookInfo> books}) async {
    //await bookDao.deleteAllBooks();
    print("inserting new book called");
    for (BookInfo bookInfo in books) {
      final bookDTO = BookDatabaseModelData(
          id: Uuid().v4().toString(),
          title: bookInfo.book.title,
          bookCategory: bookCategory,
          publisher: bookInfo.book.publisher,
          publishedDate: bookInfo.book.publishedDate,
          categories: bookInfo.book.categories.toString(),
          ratingsCount: bookInfo.book.ratingsCount ?? 8,
          description: bookInfo.book.description,
          language: bookInfo.book.language,
          previewLink: bookInfo.book.previewLink,
          infoLink: bookInfo.book.infoLink,
          canonicalVolumeLink: bookInfo.book.canonicalVolumeLink,
          subtitle: bookInfo.book.subtitle,
          maturityRating: bookInfo.book.maturityRating,
          smallThumbnail: bookInfo.book.imageLinks.smallThumbnail,
          thumbnail: bookInfo.book.imageLinks.thumbnail);
      bookDao.insertBook(bookDTO);
    }
  }
}
