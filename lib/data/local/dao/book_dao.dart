import 'package:flutter_ebooks/data/local/db/book_db.dart';
import 'package:flutter_ebooks/data/local/model/book_database_model.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'book_dao.g.dart';

@UseDao(tables: [BookDatabaseModel])
class BookDao extends DatabaseAccessor<BookDatabase> with _$BookDaoMixin {
  final BookDatabase bookDatabase;

  BookDao(this.bookDatabase) : super(bookDatabase);

  Future<List<BookDatabaseModelData>> getAllBooks() => select(bookDatabaseModel).get();

  Stream<List<BookDatabaseModelData>> watchAllBooks() => select(bookDatabaseModel).watch();

  Future insertBook(BookDatabaseModelData book) => into(bookDatabaseModel).insert(book);

  Future updateBook(BookDatabaseModelData book) => update(bookDatabaseModel).replace(book);

  Future deleteBook(BookDatabaseModelData book) => delete(bookDatabaseModel).delete(book);

  Future deleteAllBooks() => delete(bookDatabaseModel).go();
}
