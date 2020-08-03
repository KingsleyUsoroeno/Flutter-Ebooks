import 'package:flutter_ebooks/data/local/dao/book_dao.dart';
import 'package:flutter_ebooks/data/local/model/book_database_model.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'book_db.g.dart';

@UseMoor(tables: [BookDatabaseModel], daos: [BookDao])
class BookDatabase extends _$BookDatabase {
  BookDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: "db.sqlite", logStatements: true));

  int get schemaVersion => 1;
}
