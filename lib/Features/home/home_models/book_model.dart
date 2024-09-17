// class Book {
//   String kind;
//   int totalItems;
//   List<Item> items;
//
//   Book({
//     required this.kind,
//     required this.totalItems,
//     required this.items,
//   });
//
//   factory Book.fromJson(Map<String, dynamic> json) {
//     return Book(
//       kind: json['kind'],
//       totalItems: json['totalItems'],
//       items: List<Item>.from(json['items'].map((item) => Item.fromJson(item))),
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'kind': kind,
//       'totalItems': totalItems,
//       'items': items.map((item) => item.toJson()).toList(),
//     };
//   }
// }
//
// class Item {
//   String kind;
//   String id;
//   String etag;
//   String selfLink;
//   VolumeInfo volumeInfo;
//   SaleInfo saleInfo;
//   AccessInfo accessInfo;
//   SearchInfo searchInfo;
//
//   Item({
//     required this.kind,
//     required this.id,
//     required this.etag,
//     required this.selfLink,
//     required this.volumeInfo,
//     required this.saleInfo,
//     required this.accessInfo,
//     required this.searchInfo,
//   });
//
//   factory Item.fromJson(Map<String, dynamic> json) {
//     return Item(
//       kind: json['kind'],
//       id: json['id'],
//       etag: json['etag'],
//       selfLink: json['selfLink'],
//       volumeInfo: VolumeInfo.fromJson(json['volumeInfo']),
//       saleInfo: SaleInfo.fromJson(json['saleInfo']),
//       accessInfo: AccessInfo.fromJson(json['accessInfo']),
//       searchInfo: SearchInfo.fromJson(json['searchInfo']),
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'kind': kind,
//       'id': id,
//       'etag': etag,
//       'selfLink': selfLink,
//       'volumeInfo': volumeInfo.toJson(),
//       'saleInfo': saleInfo.toJson(),
//       'accessInfo': accessInfo.toJson(),
//       'searchInfo': searchInfo.toJson(),
//     };
//   }
// }
//
// class VolumeInfo {
//   String title;
//   String? subtitle;
//   List<String> authors;
//   String publisher;
//   String publishedDate;
//   String description;
//   List<IndustryIdentifier> industryIdentifiers;
//   ReadingModes readingModes;
//   int pageCount;
//   String printType;
//   List<String> categories;
//   double? averageRating;
//   int ratingsCount;
//   String maturityRating;
//   bool allowAnonLogging;
//   String contentVersion;
//   PanelizationSummary panelizationSummary;
//   ImageLinks imageLinks;
//   String language;
//   String previewLink;
//   String infoLink;
//   String canonicalVolumeLink;
//
//   VolumeInfo({
//     required this.title,
//     this.subtitle,
//     required this.authors,
//     required this.publisher,
//     required this.publishedDate,
//     required this.description,
//     required this.industryIdentifiers,
//     required this.readingModes,
//     required this.pageCount,
//     required this.printType,
//     required this.categories,
//     this.averageRating,
//     required this.ratingsCount,
//     required this.maturityRating,
//     required this.allowAnonLogging,
//     required this.contentVersion,
//     required this.panelizationSummary,
//     required this.imageLinks,
//     required this.language,
//     required this.previewLink,
//     required this.infoLink,
//     required this.canonicalVolumeLink,
//   });
//
//   factory VolumeInfo.fromJson(Map<String, dynamic> json) {
//     return VolumeInfo(
//       title: json['title'],
//       subtitle: json['subtitle'],
//       authors: List<String>.from(json['authors']),
//       publisher: json['publisher'],
//       publishedDate: json['publishedDate'],
//       description: json['description'],
//       industryIdentifiers: List<IndustryIdentifier>.from(json['industryIdentifiers']
//           .map((identifier) => IndustryIdentifier.fromJson(identifier))),
//       readingModes: ReadingModes.fromJson(json['readingModes']),
//       pageCount: json['pageCount'],
//       printType: json['printType'],
//       categories: List<String>.from(json['categories']),
//       averageRating: json['averageRating']?.toDouble(),
//       ratingsCount: json['ratingsCount'],
//       maturityRating: json['maturityRating'],
//       allowAnonLogging: json['allowAnonLogging'],
//       contentVersion: json['contentVersion'],
//       panelizationSummary:
//       PanelizationSummary.fromJson(json['panelizationSummary']),
//       imageLinks: ImageLinks.fromJson(json['imageLinks']),
//       language: json['language'],
//       previewLink: json['previewLink'],
//       infoLink: json['infoLink'],
//       canonicalVolumeLink: json['canonicalVolumeLink'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'title': title,
//       'subtitle': subtitle,
//       'authors': authors,
//       'publisher': publisher,
//       'publishedDate': publishedDate,
//       'description': description,
//       'industryIdentifiers': industryIdentifiers.map((identifier) => identifier.toJson()).toList(),
//       'readingModes': readingModes.toJson(),
//       'pageCount': pageCount,
//       'printType': printType,
//       'categories': categories,
//       'averageRating': averageRating,
//       'ratingsCount': ratingsCount,
//       'maturityRating': maturityRating,
//       'allowAnonLogging': allowAnonLogging,
//       'contentVersion': contentVersion,
//       'panelizationSummary': panelizationSummary.toJson(),
//       'imageLinks': imageLinks.toJson(),
//       'language': language,
//       'previewLink': previewLink,
//       'infoLink': infoLink,
//       'canonicalVolumeLink': canonicalVolumeLink,
//     };
//   }
// }
//
// class IndustryIdentifier {
//   String type;
//   String identifier;
//
//   IndustryIdentifier({
//     required this.type,
//     required this.identifier,
//   });
//
//   factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
//     return IndustryIdentifier(
//       type: json['type'],
//       identifier: json['identifier'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'type': type,
//       'identifier': identifier,
//     };
//   }
// }
//
// class ReadingModes {
//   bool text;
//   bool image;
//
//   ReadingModes({
//     required this.text,
//     required this.image,
//   });
//
//   factory ReadingModes.fromJson(Map<String, dynamic> json) {
//     return ReadingModes(
//       text: json['text'],
//       image: json['image'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'text': text,
//       'image': image,
//     };
//   }
// }
//
// class PanelizationSummary {
//   bool containsEpubBubbles;
//   bool containsImageBubbles;
//
//   PanelizationSummary({
//     required this.containsEpubBubbles,
//     required this.containsImageBubbles,
//   });
//
//   factory PanelizationSummary.fromJson(Map<String, dynamic> json) {
//     return PanelizationSummary(
//       containsEpubBubbles: json['containsEpubBubbles'],
//       containsImageBubbles: json['containsImageBubbles'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'containsEpubBubbles': containsEpubBubbles,
//       'containsImageBubbles': containsImageBubbles,
//     };
//   }
// }
//
// class ImageLinks {
//   String smallThumbnail;
//   String thumbnail;
//
//   ImageLinks({
//     required this.smallThumbnail,
//     required this.thumbnail,
//   });
//
//   factory ImageLinks.fromJson(Map<String, dynamic> json) {
//     return ImageLinks(
//       smallThumbnail: json['smallThumbnail'],
//       thumbnail: json['thumbnail'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'smallThumbnail': smallThumbnail,
//       'thumbnail': thumbnail,
//     };
//   }
// }
//
// class SaleInfo {
//   String country;
//   String saleability;
//   bool isEbook;
//   Price listPrice;
//   Price retailPrice;
//   String buyLink;
//   List<Offer> offers;
//
//   SaleInfo({
//     required this.country,
//     required this.saleability,
//     required this.isEbook,
//     required this.listPrice,
//     required this.retailPrice,
//     required this.buyLink,
//     required this.offers,
//   });
//
//   factory SaleInfo.fromJson(Map<String, dynamic> json) {
//     return SaleInfo(
//       country: json['country'],
//       saleability: json['saleability'],
//       isEbook: json['isEbook'],
//       listPrice: Price.fromJson(json['listPrice']),
//       retailPrice: Price.fromJson(json['retailPrice']),
//       buyLink: json['buyLink'],
//       offers: List<Offer>.from(json['offers'].map((offer) => Offer.fromJson(offer))),
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'country': country,
//       'saleability': saleability,
//       'isEbook': isEbook,
//       'listPrice': listPrice.toJson(),
//       'retailPrice': retailPrice.toJson(),
//       'buyLink': buyLink,
//       'offers': offers.map((offer) => offer.toJson()).toList(),
//     };
//   }
// }
//
// class Price {
//   double amount;
//   String currencyCode;
//
//   Price({
//     required this.amount,
//     required this.currencyCode,
//   });
//
//   factory Price.fromJson(Map<String, dynamic> json) {
//     return Price(
//       amount: json['amount'].toDouble(),
//       currencyCode: json['currencyCode'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'amount': amount,
//       'currencyCode': currencyCode,
//     };
//   }
// }
//
// class Offer {
//   int finskyOfferType;
//   Price listPrice;
//   Price retailPrice;
//
//   Offer({
//     required this.finskyOfferType,
//     required this.listPrice,
//     required this.retailPrice,
//   });
//
//   factory Offer.fromJson(Map<String, dynamic> json) {
//     return Offer(
//       finskyOfferType: json['finskyOfferType'],
//       listPrice: Price.fromJson(json['listPrice']),
//       retailPrice: Price.fromJson(json['retailPrice']),
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'finskyOfferType': finskyOfferType,
//       'listPrice': listPrice.toJson(),
//       'retailPrice': retailPrice.toJson(),
//     };
//   }
// }
//
// class AccessInfo {
//   String country;
//   String viewability;
//   bool embeddable;
//   bool publicDomain;
//   String textToSpeechPermission;
//   Format epub;
//   Format pdf;
//   String webReaderLink;
//   String accessViewStatus;
//   bool quoteSharingAllowed;
//
//   AccessInfo({
//     required this.country,
//     required this.viewability,
//     required this.embeddable,
//     required this.publicDomain,
//     required this.textToSpeechPermission,
//     required this.epub,
//     required this.pdf,
//     required this.webReaderLink,
//     required this.accessViewStatus,
//     required this.quoteSharingAllowed,
//   });
//
//   factory AccessInfo.fromJson(Map<String, dynamic> json) {
//     return AccessInfo(
//       country: json['country'],
//       viewability: json['viewability'],
//       embeddable: json['embeddable'],
//       publicDomain: json['publicDomain'],
//       textToSpeechPermission: json['textToSpeechPermission'],
//       epub: Format.fromJson(json['epub']),
//       pdf: Format.fromJson(json['pdf']),
//       webReaderLink: json['webReaderLink'],
//       accessViewStatus: json['accessViewStatus'],
//       quoteSharingAllowed: json['quoteSharingAllowed'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'country': country,
//       'viewability': viewability,
//       'embeddable': embeddable,
//       'publicDomain': publicDomain,
//       'textToSpeechPermission': textToSpeechPermission,
//       'epub': epub.toJson(),
//       'pdf': pdf.toJson(),
//       'webReaderLink': webReaderLink,
//       'accessViewStatus': accessViewStatus,
//       'quoteSharingAllowed': quoteSharingAllowed,
//     };
//   }
// }
//
// class Format {
//   bool isAvailable;
//   String? acsTokenLink;
//
//   Format({
//     required this.isAvailable,
//     this.acsTokenLink,
//   });
//
//   factory Format.fromJson(Map<String, dynamic> json) {
//     return Format(
//       isAvailable: json['isAvailable'],
//       acsTokenLink: json['acsTokenLink'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'isAvailable': isAvailable,
//       'acsTokenLink': acsTokenLink,
//     };
//   }
// }
//
// class SearchInfo {
//   String textSnippet;
//
//   SearchInfo({
//     required this.textSnippet,
//   });
//
//   factory SearchInfo.fromJson(Map<String, dynamic> json) {
//     return SearchInfo(
//       textSnippet: json['textSnippet'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'textSnippet': textSnippet,
//     };
//   }
// }

import 'item_model.dart';

class BookModel {
  String kind;
  int totalItems;
  List<ItemModel> items;

  BookModel({
    required this.kind,
    required this.totalItems,
    required this.items,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'],
      totalItems: json['totalItems'],
      items: List<ItemModel>.from(json['items'].map((item) => ItemModel.fromJson(item))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'totalItems': totalItems,
      'items': items.map((item) => item.toJson()).toList(),
    };
  }
}
