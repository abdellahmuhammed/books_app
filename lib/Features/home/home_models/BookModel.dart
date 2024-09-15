class BookModel {
  String kind;
  int totalItems;
  List<Item> items;

  BookModel({
    required this.kind,
    required this.totalItems,
    required this.items,
  });
}

class Item {
  Kind kind;
  String id;
  String etag;
  String selfLink;
  VolumeInfo volumeInfo;
  SaleInfo saleInfo;
  AccessInfo accessInfo;
  SearchInfo searchInfo;

  Item({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });
}

class AccessInfo {
  Country country;
  Viewability viewability;
  bool embeddable;
  bool publicDomain;
  TextToSpeechPermission textToSpeechPermission;
  Epub epub;
  Pdf pdf;
  String webReaderLink;
  AccessViewStatus accessViewStatus;
  bool quoteSharingAllowed;

  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });
}

enum AccessViewStatus { NONE, SAMPLE }

enum Country { EG }

class Epub {
  bool isAvailable;

  Epub({
    required this.isAvailable,
  });
}

class Pdf {
  bool isAvailable;
  String? acsTokenLink;

  Pdf({
    required this.isAvailable,
    this.acsTokenLink,
  });
}

enum TextToSpeechPermission { ALLOWED, ALLOWED_FOR_ACCESSIBILITY }

enum Viewability { NO_PAGES, PARTIAL }

enum Kind { BOOKS_VOLUME }

class SaleInfo {
  Country country;
  Saleability saleability;
  bool isEbook;
  SaleInfoListPrice? listPrice;
  SaleInfoListPrice? retailPrice;
  String? buyLink;
  List<Offer>? offers;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });
}

class SaleInfoListPrice {
  double amount;
  String currencyCode;

  SaleInfoListPrice({
    required this.amount,
    required this.currencyCode,
  });
}

class Offer {
  int finskyOfferType;
  OfferListPrice listPrice;
  OfferListPrice retailPrice;

  Offer({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
  });
}

class OfferListPrice {
  int amountInMicros;
  String currencyCode;

  OfferListPrice({
    required this.amountInMicros,
    required this.currencyCode,
  });
}

enum Saleability { FOR_SALE, NOT_FOR_SALE }

class SearchInfo {
  String textSnippet;

  SearchInfo({
    required this.textSnippet,
  });
}

class VolumeInfo {
  String title;
  List<String> authors;
  String publishedDate;
  String description;
  List<IndustryIdentifier>? industryIdentifiers;
  ReadingModes readingModes;
  int pageCount;
  PrintType printType;
  List<Category> categories;
  MaturityRating maturityRating;
  bool allowAnonLogging;
  String contentVersion;
  PanelizationSummary panelizationSummary;
  ImageLinks imageLinks;
  Language language;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;
  String? publisher;
  String? subtitle;
  double? averageRating;
  int? ratingsCount;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publishedDate,
    required this.description,
    this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
    this.publisher,
    this.subtitle,
    this.averageRating,
    this.ratingsCount,
  });
}

enum Category { ARCHITECTURE, COMPUTERS }

class ImageLinks {
  String smallThumbnail;
  String thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });
}

class IndustryIdentifier {
  Type type;
  String identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });
}

enum Type { ISBN_10, ISBN_13, OTHER }

enum Language { EN }

enum MaturityRating { NOT_MATURE }

class PanelizationSummary {
  bool containsEpubBubbles;
  bool containsImageBubbles;

  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });
}

enum PrintType { BOOK }

class ReadingModes {
  bool text;
  bool image;

  ReadingModes({
    required this.text,
    required this.image,
  });
}
