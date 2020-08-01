class Book {
  String title;
  List<String> authors;
  String publisher;
  String publishedDate;
  String description;
  List<String> categories;
  dynamic averageRating;
  int ratingsCount;
  ImageLinks imageLinks;
  String language;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;
  String subtitle;
  String maturityRating;

  Book(
      {this.title,
      this.authors,
      this.publisher,
      this.publishedDate,
      this.description,
      this.categories,
      this.averageRating,
      this.ratingsCount,
      this.imageLinks,
      this.language,
      this.subtitle,
      this.maturityRating,
      this.canonicalVolumeLink});

  Book.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    authors = json['authors'].cast<String>();
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : null;
    averageRating = json['averageRating'];
    ratingsCount = json['ratingsCount'];
    maturityRating = json['maturityRating'];
    imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
    subtitle = json['subtitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['authors'] = this.authors;
    data['publisher'] = this.publisher;
    data['publishedDate'] = this.publishedDate;
    data['description'] = this.description;
    data['categories'] = this.categories;
    data['averageRating'] = this.averageRating;
    data['ratingsCount'] = this.ratingsCount;
    data['maturityRating'] = this.maturityRating;
    if (this.imageLinks != null) {
      data['imageLinks'] = this.imageLinks.toJson();
    }
    data['language'] = this.language;
    data['previewLink'] = this.previewLink;
    data['infoLink'] = this.infoLink;
    data['canonicalVolumeLink'] = this.canonicalVolumeLink;
    data['subtitle'] = this.subtitle;
    return data;
  }

  @override
  String toString() {
    return 'Book{title: $title, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description, categories: $categories, averageRating: $averageRating, ratingsCount: $ratingsCount, imageLinks: $imageLinks, language: $language, previewLink: $previewLink, infoLink: $infoLink, canonicalVolumeLink: $canonicalVolumeLink, subtitle: $subtitle, maturityRating: $maturityRating}';
  }
}

class ImageLinks {
  String smallThumbnail;
  String thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  ImageLinks.fromJson(Map<String, dynamic> json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['smallThumbnail'] = this.smallThumbnail;
    data['thumbnail'] = this.thumbnail;
    return data;
  }

  @override
  String toString() {
    return 'ImageLinks{smallThumbnail: $smallThumbnail, thumbnail: $thumbnail}';
  }
}
