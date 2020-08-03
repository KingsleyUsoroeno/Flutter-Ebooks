// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class BookDatabaseModelData extends DataClass implements Insertable<BookDatabaseModelData> {
  final String id;
  final String title;
  final String bookCategory;
  final String publisher;
  final String publishedDate;
  final String categories;
  final int ratingsCount;
  final String description;
  final String language;
  final String previewLink;
  final String infoLink;
  final String canonicalVolumeLink;
  final String subtitle;
  final String maturityRating;
  final String smallThumbnail;
  final String thumbnail;

  BookDatabaseModelData(
      {@required this.id,
      this.title,
      this.bookCategory,
      this.publisher,
      this.publishedDate,
      this.categories,
      this.ratingsCount,
      this.description,
      this.language,
      this.previewLink,
      this.infoLink,
      this.canonicalVolumeLink,
      this.subtitle,
      this.maturityRating,
      @required this.smallThumbnail,
      this.thumbnail});

  factory BookDatabaseModelData.fromData(Map<String, dynamic> data, GeneratedDatabase db, {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    return BookDatabaseModelData(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title: stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      bookCategory: stringType.mapFromDatabaseResponse(data['${effectivePrefix}book_category']),
      publisher: stringType.mapFromDatabaseResponse(data['${effectivePrefix}publisher']),
      publishedDate: stringType.mapFromDatabaseResponse(data['${effectivePrefix}published_date']),
      categories: stringType.mapFromDatabaseResponse(data['${effectivePrefix}categories']),
      ratingsCount: intType.mapFromDatabaseResponse(data['${effectivePrefix}ratings_count']),
      description: stringType.mapFromDatabaseResponse(data['${effectivePrefix}description']),
      language: stringType.mapFromDatabaseResponse(data['${effectivePrefix}language']),
      previewLink: stringType.mapFromDatabaseResponse(data['${effectivePrefix}preview_link']),
      infoLink: stringType.mapFromDatabaseResponse(data['${effectivePrefix}info_link']),
      canonicalVolumeLink: stringType.mapFromDatabaseResponse(data['${effectivePrefix}canonical_volume_link']),
      subtitle: stringType.mapFromDatabaseResponse(data['${effectivePrefix}subtitle']),
      maturityRating: stringType.mapFromDatabaseResponse(data['${effectivePrefix}maturity_rating']),
      smallThumbnail: stringType.mapFromDatabaseResponse(data['${effectivePrefix}small_thumbnail']),
      thumbnail: stringType.mapFromDatabaseResponse(data['${effectivePrefix}thumbnail']),
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || bookCategory != null) {
      map['book_category'] = Variable<String>(bookCategory);
    }
    if (!nullToAbsent || publisher != null) {
      map['publisher'] = Variable<String>(publisher);
    }
    if (!nullToAbsent || publishedDate != null) {
      map['published_date'] = Variable<String>(publishedDate);
    }
    if (!nullToAbsent || categories != null) {
      map['categories'] = Variable<String>(categories);
    }
    if (!nullToAbsent || ratingsCount != null) {
      map['ratings_count'] = Variable<int>(ratingsCount);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || language != null) {
      map['language'] = Variable<String>(language);
    }
    if (!nullToAbsent || previewLink != null) {
      map['preview_link'] = Variable<String>(previewLink);
    }
    if (!nullToAbsent || infoLink != null) {
      map['info_link'] = Variable<String>(infoLink);
    }
    if (!nullToAbsent || canonicalVolumeLink != null) {
      map['canonical_volume_link'] = Variable<String>(canonicalVolumeLink);
    }
    if (!nullToAbsent || subtitle != null) {
      map['subtitle'] = Variable<String>(subtitle);
    }
    if (!nullToAbsent || maturityRating != null) {
      map['maturity_rating'] = Variable<String>(maturityRating);
    }
    if (!nullToAbsent || smallThumbnail != null) {
      map['small_thumbnail'] = Variable<String>(smallThumbnail);
    }
    if (!nullToAbsent || thumbnail != null) {
      map['thumbnail'] = Variable<String>(thumbnail);
    }
    return map;
  }

  BookDatabaseModelCompanion toCompanion(bool nullToAbsent) {
    return BookDatabaseModelCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title: title == null && nullToAbsent ? const Value.absent() : Value(title),
      bookCategory: bookCategory == null && nullToAbsent ? const Value.absent() : Value(bookCategory),
      publisher: publisher == null && nullToAbsent ? const Value.absent() : Value(publisher),
      publishedDate: publishedDate == null && nullToAbsent ? const Value.absent() : Value(publishedDate),
      categories: categories == null && nullToAbsent ? const Value.absent() : Value(categories),
      ratingsCount: ratingsCount == null && nullToAbsent ? const Value.absent() : Value(ratingsCount),
      description: description == null && nullToAbsent ? const Value.absent() : Value(description),
      language: language == null && nullToAbsent ? const Value.absent() : Value(language),
      previewLink: previewLink == null && nullToAbsent ? const Value.absent() : Value(previewLink),
      infoLink: infoLink == null && nullToAbsent ? const Value.absent() : Value(infoLink),
      canonicalVolumeLink: canonicalVolumeLink == null && nullToAbsent ? const Value.absent() : Value(canonicalVolumeLink),
      subtitle: subtitle == null && nullToAbsent ? const Value.absent() : Value(subtitle),
      maturityRating: maturityRating == null && nullToAbsent ? const Value.absent() : Value(maturityRating),
      smallThumbnail: smallThumbnail == null && nullToAbsent ? const Value.absent() : Value(smallThumbnail),
      thumbnail: thumbnail == null && nullToAbsent ? const Value.absent() : Value(thumbnail),
    );
  }

  factory BookDatabaseModelData.fromJson(Map<String, dynamic> json, {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BookDatabaseModelData(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      bookCategory: serializer.fromJson<String>(json['bookCategory']),
      publisher: serializer.fromJson<String>(json['publisher']),
      publishedDate: serializer.fromJson<String>(json['publishedDate']),
      categories: serializer.fromJson<String>(json['categories']),
      ratingsCount: serializer.fromJson<int>(json['ratingsCount']),
      description: serializer.fromJson<String>(json['description']),
      language: serializer.fromJson<String>(json['language']),
      previewLink: serializer.fromJson<String>(json['previewLink']),
      infoLink: serializer.fromJson<String>(json['infoLink']),
      canonicalVolumeLink: serializer.fromJson<String>(json['canonicalVolumeLink']),
      subtitle: serializer.fromJson<String>(json['subtitle']),
      maturityRating: serializer.fromJson<String>(json['maturityRating']),
      smallThumbnail: serializer.fromJson<String>(json['smallThumbnail']),
      thumbnail: serializer.fromJson<String>(json['thumbnail']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'bookCategory': serializer.toJson<String>(bookCategory),
      'publisher': serializer.toJson<String>(publisher),
      'publishedDate': serializer.toJson<String>(publishedDate),
      'categories': serializer.toJson<String>(categories),
      'ratingsCount': serializer.toJson<int>(ratingsCount),
      'description': serializer.toJson<String>(description),
      'language': serializer.toJson<String>(language),
      'previewLink': serializer.toJson<String>(previewLink),
      'infoLink': serializer.toJson<String>(infoLink),
      'canonicalVolumeLink': serializer.toJson<String>(canonicalVolumeLink),
      'subtitle': serializer.toJson<String>(subtitle),
      'maturityRating': serializer.toJson<String>(maturityRating),
      'smallThumbnail': serializer.toJson<String>(smallThumbnail),
      'thumbnail': serializer.toJson<String>(thumbnail),
    };
  }

  BookDatabaseModelData copyWith(
          {String id,
          String title,
          String bookCategory,
          String publisher,
          String publishedDate,
          String categories,
          int ratingsCount,
          String description,
          String language,
          String previewLink,
          String infoLink,
          String canonicalVolumeLink,
          String subtitle,
          String maturityRating,
          String smallThumbnail,
          String thumbnail}) =>
      BookDatabaseModelData(
        id: id ?? this.id,
        title: title ?? this.title,
        bookCategory: bookCategory ?? this.bookCategory,
        publisher: publisher ?? this.publisher,
        publishedDate: publishedDate ?? this.publishedDate,
        categories: categories ?? this.categories,
        ratingsCount: ratingsCount ?? this.ratingsCount,
        description: description ?? this.description,
        language: language ?? this.language,
        previewLink: previewLink ?? this.previewLink,
        infoLink: infoLink ?? this.infoLink,
        canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
        subtitle: subtitle ?? this.subtitle,
        maturityRating: maturityRating ?? this.maturityRating,
        smallThumbnail: smallThumbnail ?? this.smallThumbnail,
        thumbnail: thumbnail ?? this.thumbnail,
      );

  @override
  String toString() {
    return (StringBuffer('BookDatabaseModelData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('bookCategory: $bookCategory, ')
          ..write('publisher: $publisher, ')
          ..write('publishedDate: $publishedDate, ')
          ..write('categories: $categories, ')
          ..write('ratingsCount: $ratingsCount, ')
          ..write('description: $description, ')
          ..write('language: $language, ')
          ..write('previewLink: $previewLink, ')
          ..write('infoLink: $infoLink, ')
          ..write('canonicalVolumeLink: $canonicalVolumeLink, ')
          ..write('subtitle: $subtitle, ')
          ..write('maturityRating: $maturityRating, ')
          ..write('smallThumbnail: $smallThumbnail, ')
          ..write('thumbnail: $thumbnail')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(
              bookCategory.hashCode,
              $mrjc(
                  publisher.hashCode,
                  $mrjc(
                      publishedDate.hashCode,
                      $mrjc(
                          categories.hashCode,
                          $mrjc(
                              ratingsCount.hashCode,
                              $mrjc(
                                  description.hashCode,
                                  $mrjc(
                                      language.hashCode,
                                      $mrjc(
                                          previewLink.hashCode,
                                          $mrjc(
                                              infoLink.hashCode,
                                              $mrjc(
                                                  canonicalVolumeLink.hashCode,
                                                  $mrjc(
                                                      subtitle.hashCode,
                                                      $mrjc(maturityRating.hashCode,
                                                          $mrjc(smallThumbnail.hashCode, thumbnail.hashCode))))))))))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BookDatabaseModelData &&
          other.id == this.id &&
          other.title == this.title &&
          other.bookCategory == this.bookCategory &&
          other.publisher == this.publisher &&
          other.publishedDate == this.publishedDate &&
          other.categories == this.categories &&
          other.ratingsCount == this.ratingsCount &&
          other.description == this.description &&
          other.language == this.language &&
          other.previewLink == this.previewLink &&
          other.infoLink == this.infoLink &&
          other.canonicalVolumeLink == this.canonicalVolumeLink &&
          other.subtitle == this.subtitle &&
          other.maturityRating == this.maturityRating &&
          other.smallThumbnail == this.smallThumbnail &&
          other.thumbnail == this.thumbnail);
}

class BookDatabaseModelCompanion extends UpdateCompanion<BookDatabaseModelData> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> bookCategory;
  final Value<String> publisher;
  final Value<String> publishedDate;
  final Value<String> categories;
  final Value<int> ratingsCount;
  final Value<String> description;
  final Value<String> language;
  final Value<String> previewLink;
  final Value<String> infoLink;
  final Value<String> canonicalVolumeLink;
  final Value<String> subtitle;
  final Value<String> maturityRating;
  final Value<String> smallThumbnail;
  final Value<String> thumbnail;

  const BookDatabaseModelCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.bookCategory = const Value.absent(),
    this.publisher = const Value.absent(),
    this.publishedDate = const Value.absent(),
    this.categories = const Value.absent(),
    this.ratingsCount = const Value.absent(),
    this.description = const Value.absent(),
    this.language = const Value.absent(),
    this.previewLink = const Value.absent(),
    this.infoLink = const Value.absent(),
    this.canonicalVolumeLink = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.maturityRating = const Value.absent(),
    this.smallThumbnail = const Value.absent(),
    this.thumbnail = const Value.absent(),
  });

  BookDatabaseModelCompanion.insert({
    @required String id,
    this.title = const Value.absent(),
    this.bookCategory = const Value.absent(),
    this.publisher = const Value.absent(),
    this.publishedDate = const Value.absent(),
    this.categories = const Value.absent(),
    this.ratingsCount = const Value.absent(),
    this.description = const Value.absent(),
    this.language = const Value.absent(),
    this.previewLink = const Value.absent(),
    this.infoLink = const Value.absent(),
    this.canonicalVolumeLink = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.maturityRating = const Value.absent(),
    @required String smallThumbnail,
    this.thumbnail = const Value.absent(),
  })  : id = Value(id),
        smallThumbnail = Value(smallThumbnail);

  static Insertable<BookDatabaseModelData> custom({
    Expression<String> id,
    Expression<String> title,
    Expression<String> bookCategory,
    Expression<String> publisher,
    Expression<String> publishedDate,
    Expression<String> categories,
    Expression<int> ratingsCount,
    Expression<String> description,
    Expression<String> language,
    Expression<String> previewLink,
    Expression<String> infoLink,
    Expression<String> canonicalVolumeLink,
    Expression<String> subtitle,
    Expression<String> maturityRating,
    Expression<String> smallThumbnail,
    Expression<String> thumbnail,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (bookCategory != null) 'book_category': bookCategory,
      if (publisher != null) 'publisher': publisher,
      if (publishedDate != null) 'published_date': publishedDate,
      if (categories != null) 'categories': categories,
      if (ratingsCount != null) 'ratings_count': ratingsCount,
      if (description != null) 'description': description,
      if (language != null) 'language': language,
      if (previewLink != null) 'preview_link': previewLink,
      if (infoLink != null) 'info_link': infoLink,
      if (canonicalVolumeLink != null) 'canonical_volume_link': canonicalVolumeLink,
      if (subtitle != null) 'subtitle': subtitle,
      if (maturityRating != null) 'maturity_rating': maturityRating,
      if (smallThumbnail != null) 'small_thumbnail': smallThumbnail,
      if (thumbnail != null) 'thumbnail': thumbnail,
    });
  }

  BookDatabaseModelCompanion copyWith(
      {Value<String> id,
      Value<String> title,
      Value<String> bookCategory,
      Value<String> publisher,
      Value<String> publishedDate,
      Value<String> categories,
      Value<int> ratingsCount,
      Value<String> description,
      Value<String> language,
      Value<String> previewLink,
      Value<String> infoLink,
      Value<String> canonicalVolumeLink,
      Value<String> subtitle,
      Value<String> maturityRating,
      Value<String> smallThumbnail,
      Value<String> thumbnail}) {
    return BookDatabaseModelCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      bookCategory: bookCategory ?? this.bookCategory,
      publisher: publisher ?? this.publisher,
      publishedDate: publishedDate ?? this.publishedDate,
      categories: categories ?? this.categories,
      ratingsCount: ratingsCount ?? this.ratingsCount,
      description: description ?? this.description,
      language: language ?? this.language,
      previewLink: previewLink ?? this.previewLink,
      infoLink: infoLink ?? this.infoLink,
      canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
      subtitle: subtitle ?? this.subtitle,
      maturityRating: maturityRating ?? this.maturityRating,
      smallThumbnail: smallThumbnail ?? this.smallThumbnail,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (bookCategory.present) {
      map['book_category'] = Variable<String>(bookCategory.value);
    }
    if (publisher.present) {
      map['publisher'] = Variable<String>(publisher.value);
    }
    if (publishedDate.present) {
      map['published_date'] = Variable<String>(publishedDate.value);
    }
    if (categories.present) {
      map['categories'] = Variable<String>(categories.value);
    }
    if (ratingsCount.present) {
      map['ratings_count'] = Variable<int>(ratingsCount.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (previewLink.present) {
      map['preview_link'] = Variable<String>(previewLink.value);
    }
    if (infoLink.present) {
      map['info_link'] = Variable<String>(infoLink.value);
    }
    if (canonicalVolumeLink.present) {
      map['canonical_volume_link'] = Variable<String>(canonicalVolumeLink.value);
    }
    if (subtitle.present) {
      map['subtitle'] = Variable<String>(subtitle.value);
    }
    if (maturityRating.present) {
      map['maturity_rating'] = Variable<String>(maturityRating.value);
    }
    if (smallThumbnail.present) {
      map['small_thumbnail'] = Variable<String>(smallThumbnail.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<String>(thumbnail.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookDatabaseModelCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('bookCategory: $bookCategory, ')
          ..write('publisher: $publisher, ')
          ..write('publishedDate: $publishedDate, ')
          ..write('categories: $categories, ')
          ..write('ratingsCount: $ratingsCount, ')
          ..write('description: $description, ')
          ..write('language: $language, ')
          ..write('previewLink: $previewLink, ')
          ..write('infoLink: $infoLink, ')
          ..write('canonicalVolumeLink: $canonicalVolumeLink, ')
          ..write('subtitle: $subtitle, ')
          ..write('maturityRating: $maturityRating, ')
          ..write('smallThumbnail: $smallThumbnail, ')
          ..write('thumbnail: $thumbnail')
          ..write(')'))
        .toString();
  }
}

class $BookDatabaseModelTable extends BookDatabaseModel with TableInfo<$BookDatabaseModelTable, BookDatabaseModelData> {
  final GeneratedDatabase _db;
  final String _alias;

  $BookDatabaseModelTable(this._db, [this._alias]);

  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;

  @override
  GeneratedTextColumn get id => _id ??= _constructId();

  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;

  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();

  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      true,
    );
  }

  final VerificationMeta _bookCategoryMeta = const VerificationMeta('bookCategory');
  GeneratedTextColumn _bookCategory;

  @override
  GeneratedTextColumn get bookCategory => _bookCategory ??= _constructBookCategory();

  GeneratedTextColumn _constructBookCategory() {
    return GeneratedTextColumn(
      'book_category',
      $tableName,
      true,
    );
  }

  final VerificationMeta _publisherMeta = const VerificationMeta('publisher');
  GeneratedTextColumn _publisher;

  @override
  GeneratedTextColumn get publisher => _publisher ??= _constructPublisher();

  GeneratedTextColumn _constructPublisher() {
    return GeneratedTextColumn(
      'publisher',
      $tableName,
      true,
    );
  }

  final VerificationMeta _publishedDateMeta = const VerificationMeta('publishedDate');
  GeneratedTextColumn _publishedDate;

  @override
  GeneratedTextColumn get publishedDate => _publishedDate ??= _constructPublishedDate();

  GeneratedTextColumn _constructPublishedDate() {
    return GeneratedTextColumn(
      'published_date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _categoriesMeta = const VerificationMeta('categories');
  GeneratedTextColumn _categories;

  @override
  GeneratedTextColumn get categories => _categories ??= _constructCategories();

  GeneratedTextColumn _constructCategories() {
    return GeneratedTextColumn(
      'categories',
      $tableName,
      true,
    );
  }

  final VerificationMeta _ratingsCountMeta = const VerificationMeta('ratingsCount');
  GeneratedIntColumn _ratingsCount;

  @override
  GeneratedIntColumn get ratingsCount => _ratingsCount ??= _constructRatingsCount();

  GeneratedIntColumn _constructRatingsCount() {
    return GeneratedIntColumn(
      'ratings_count',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descriptionMeta = const VerificationMeta('description');
  GeneratedTextColumn _description;

  @override
  GeneratedTextColumn get description => _description ??= _constructDescription();

  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _languageMeta = const VerificationMeta('language');
  GeneratedTextColumn _language;

  @override
  GeneratedTextColumn get language => _language ??= _constructLanguage();

  GeneratedTextColumn _constructLanguage() {
    return GeneratedTextColumn(
      'language',
      $tableName,
      true,
    );
  }

  final VerificationMeta _previewLinkMeta = const VerificationMeta('previewLink');
  GeneratedTextColumn _previewLink;

  @override
  GeneratedTextColumn get previewLink => _previewLink ??= _constructPreviewLink();

  GeneratedTextColumn _constructPreviewLink() {
    return GeneratedTextColumn(
      'preview_link',
      $tableName,
      true,
    );
  }

  final VerificationMeta _infoLinkMeta = const VerificationMeta('infoLink');
  GeneratedTextColumn _infoLink;

  @override
  GeneratedTextColumn get infoLink => _infoLink ??= _constructInfoLink();

  GeneratedTextColumn _constructInfoLink() {
    return GeneratedTextColumn(
      'info_link',
      $tableName,
      true,
    );
  }

  final VerificationMeta _canonicalVolumeLinkMeta = const VerificationMeta('canonicalVolumeLink');
  GeneratedTextColumn _canonicalVolumeLink;

  @override
  GeneratedTextColumn get canonicalVolumeLink => _canonicalVolumeLink ??= _constructCanonicalVolumeLink();

  GeneratedTextColumn _constructCanonicalVolumeLink() {
    return GeneratedTextColumn(
      'canonical_volume_link',
      $tableName,
      true,
    );
  }

  final VerificationMeta _subtitleMeta = const VerificationMeta('subtitle');
  GeneratedTextColumn _subtitle;

  @override
  GeneratedTextColumn get subtitle => _subtitle ??= _constructSubtitle();

  GeneratedTextColumn _constructSubtitle() {
    return GeneratedTextColumn(
      'subtitle',
      $tableName,
      true,
    );
  }

  final VerificationMeta _maturityRatingMeta = const VerificationMeta('maturityRating');
  GeneratedTextColumn _maturityRating;

  @override
  GeneratedTextColumn get maturityRating => _maturityRating ??= _constructMaturityRating();

  GeneratedTextColumn _constructMaturityRating() {
    return GeneratedTextColumn(
      'maturity_rating',
      $tableName,
      true,
    );
  }

  final VerificationMeta _smallThumbnailMeta = const VerificationMeta('smallThumbnail');
  GeneratedTextColumn _smallThumbnail;

  @override
  GeneratedTextColumn get smallThumbnail => _smallThumbnail ??= _constructSmallThumbnail();

  GeneratedTextColumn _constructSmallThumbnail() {
    return GeneratedTextColumn(
      'small_thumbnail',
      $tableName,
      false,
    );
  }

  final VerificationMeta _thumbnailMeta = const VerificationMeta('thumbnail');
  GeneratedTextColumn _thumbnail;

  @override
  GeneratedTextColumn get thumbnail => _thumbnail ??= _constructThumbnail();

  GeneratedTextColumn _constructThumbnail() {
    return GeneratedTextColumn(
      'thumbnail',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        bookCategory,
        publisher,
        publishedDate,
        categories,
        ratingsCount,
        description,
        language,
        previewLink,
        infoLink,
        canonicalVolumeLink,
        subtitle,
        maturityRating,
        smallThumbnail,
        thumbnail
      ];

  @override
  $BookDatabaseModelTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'book_database_model';
  @override
  final String actualTableName = 'book_database_model';

  @override
  VerificationContext validateIntegrity(Insertable<BookDatabaseModelData> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(_titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    }
    if (data.containsKey('book_category')) {
      context.handle(_bookCategoryMeta, bookCategory.isAcceptableOrUnknown(data['book_category'], _bookCategoryMeta));
    }
    if (data.containsKey('publisher')) {
      context.handle(_publisherMeta, publisher.isAcceptableOrUnknown(data['publisher'], _publisherMeta));
    }
    if (data.containsKey('published_date')) {
      context.handle(_publishedDateMeta, publishedDate.isAcceptableOrUnknown(data['published_date'], _publishedDateMeta));
    }
    if (data.containsKey('categories')) {
      context.handle(_categoriesMeta, categories.isAcceptableOrUnknown(data['categories'], _categoriesMeta));
    }
    if (data.containsKey('ratings_count')) {
      context.handle(_ratingsCountMeta, ratingsCount.isAcceptableOrUnknown(data['ratings_count'], _ratingsCountMeta));
    }
    if (data.containsKey('description')) {
      context.handle(_descriptionMeta, description.isAcceptableOrUnknown(data['description'], _descriptionMeta));
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta, language.isAcceptableOrUnknown(data['language'], _languageMeta));
    }
    if (data.containsKey('preview_link')) {
      context.handle(_previewLinkMeta, previewLink.isAcceptableOrUnknown(data['preview_link'], _previewLinkMeta));
    }
    if (data.containsKey('info_link')) {
      context.handle(_infoLinkMeta, infoLink.isAcceptableOrUnknown(data['info_link'], _infoLinkMeta));
    }
    if (data.containsKey('canonical_volume_link')) {
      context.handle(
          _canonicalVolumeLinkMeta, canonicalVolumeLink.isAcceptableOrUnknown(data['canonical_volume_link'], _canonicalVolumeLinkMeta));
    }
    if (data.containsKey('subtitle')) {
      context.handle(_subtitleMeta, subtitle.isAcceptableOrUnknown(data['subtitle'], _subtitleMeta));
    }
    if (data.containsKey('maturity_rating')) {
      context.handle(_maturityRatingMeta, maturityRating.isAcceptableOrUnknown(data['maturity_rating'], _maturityRatingMeta));
    }
    if (data.containsKey('small_thumbnail')) {
      context.handle(_smallThumbnailMeta, smallThumbnail.isAcceptableOrUnknown(data['small_thumbnail'], _smallThumbnailMeta));
    } else if (isInserting) {
      context.missing(_smallThumbnailMeta);
    }
    if (data.containsKey('thumbnail')) {
      context.handle(_thumbnailMeta, thumbnail.isAcceptableOrUnknown(data['thumbnail'], _thumbnailMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {smallThumbnail};

  @override
  BookDatabaseModelData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BookDatabaseModelData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $BookDatabaseModelTable createAlias(String alias) {
    return $BookDatabaseModelTable(_db, alias);
  }
}

abstract class _$BookDatabase extends GeneratedDatabase {
  _$BookDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $BookDatabaseModelTable _bookDatabaseModel;

  $BookDatabaseModelTable get bookDatabaseModel => _bookDatabaseModel ??= $BookDatabaseModelTable(this);
  BookDao _bookDao;

  BookDao get bookDao => _bookDao ??= BookDao(this as BookDatabase);

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();

  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [bookDatabaseModel];
}
