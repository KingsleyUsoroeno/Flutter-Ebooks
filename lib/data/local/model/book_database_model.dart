import 'package:moor_flutter/moor_flutter.dart';

class BookDatabaseModel extends Table {
  TextColumn get id => text()();

  TextColumn get title => text().nullable()();

  TextColumn get bookCategory => text().nullable()();

  TextColumn get publisher => text().nullable()();

  TextColumn get publishedDate => text().nullable()();

  TextColumn get categories => text().nullable()();

  IntColumn get ratingsCount => integer().nullable()();

  TextColumn get description => text().nullable()();

  TextColumn get language => text().nullable()();

  TextColumn get previewLink => text().nullable()();

  TextColumn get infoLink => text().nullable()();

  TextColumn get canonicalVolumeLink => text().nullable()();

  TextColumn get subtitle => text().nullable()();

  TextColumn get maturityRating => text().nullable()();

  TextColumn get smallThumbnail => text()();

  TextColumn get thumbnail => text().nullable()();

  @override
  Set<Column> get primaryKey => {smallThumbnail};
}
