


class BookModel {
  final String kind;
  final String id;
  final String etag;
  final String selfLink;
  final VolumeInfoModel volumeInfo;
  final SaleInfoModel saleInfo;
  final AccessInfoModel accessInfo;
  final SearchInfoModel searchInfo;

  BookModel({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'],
      id: json['id'],
      etag: json['etag'] ?? '0251815',
      selfLink: json['selfLink'],
      volumeInfo: VolumeInfoModel.fromJson(json['volumeInfo']),
      saleInfo: SaleInfoModel.fromJson(json['saleInfo']),
      accessInfo: AccessInfoModel.fromJson(json['accessInfo']),
      searchInfo: SearchInfoModel.fromJson(json['searchInfo']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'id': id,
      'etag': etag,
      'selfLink': selfLink,
      'volumeInfo': volumeInfo.toJson(),
      'saleInfo': saleInfo.toJson(),
      'accessInfo': accessInfo.toJson(),
      'searchInfo': searchInfo.toJson(),
    };
  }
}

class VolumeInfoModel {
  final String title;
  final List<String> authors;
  final String publishedDate;
  final String description;
  final int pageCount;
  final String printType;
  final List<String> categories;
  final String maturityRating;
  final bool allowAnonLogging;
  final String contentVersion;
  final ImageLinksModel imageLinks;
  final String language;
  final String previewLink;
  final String infoLink;
  final String canonicalVolumeLink;

  VolumeInfoModel({
    required this.title,
    required this.authors,
    required this.publishedDate,
    required this.description,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfoModel.fromJson(Map<String, dynamic> json) {
    return VolumeInfoModel(
      title: json['title'],
      authors: List<String>.from(json['authors']),
      publishedDate: json['publishedDate'],
      description: json['description'],
      pageCount: json['pageCount'],
      printType: json['printType'],
      categories: List<String>.from(json['categories']),
      maturityRating: json['maturityRating'],
      allowAnonLogging: json['allowAnonLogging'],
      contentVersion: json['contentVersion'],
      imageLinks: ImageLinksModel.fromJson(json['imageLinks']),
      language: json['language'],
      previewLink: json['previewLink'],
      infoLink: json['infoLink'],
      canonicalVolumeLink: json['canonicalVolumeLink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'authors': authors,
      'publishedDate': publishedDate,
      'description': description,
      'pageCount': pageCount,
      'printType': printType,
      'categories': categories,
      'maturityRating': maturityRating,
      'allowAnonLogging': allowAnonLogging,
      'contentVersion': contentVersion,
      'imageLinks': imageLinks.toJson(),
      'language': language,
      'previewLink': previewLink,
      'infoLink': infoLink,
      'canonicalVolumeLink': canonicalVolumeLink,
    };
  }
}

class SaleInfoModel {
  final String country;
  final String saleability;
  final bool isEbook;

  SaleInfoModel({
    required this.country,
    required this.saleability,
    required this.isEbook,
  });

  factory SaleInfoModel.fromJson(Map<String, dynamic> json) {
    return SaleInfoModel(
      country: json['country'],
      saleability: json['saleability'],
      isEbook: json['isEbook'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'saleability': saleability,
      'isEbook': isEbook,
    };
  }
}

class AccessInfoModel {
  final String country;
  final String viewability;
  final bool embeddable;
  final bool publicDomain;
  final String textToSpeechPermission;
  final PdfModel pdf;
  final String webReaderLink;
  final String accessViewStatus;
  final bool quoteSharingAllowed;

  AccessInfoModel({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  factory AccessInfoModel.fromJson(Map<String, dynamic> json) {
    return AccessInfoModel(
      country: json['country'],
      viewability: json['viewability'],
      embeddable: json['embeddable'],
      publicDomain: json['publicDomain'],
      textToSpeechPermission: json['textToSpeechPermission'],
      pdf: PdfModel.fromJson(json['pdf']),
      webReaderLink: json['webReaderLink'],
      accessViewStatus: json['accessViewStatus'],
      quoteSharingAllowed: json['quoteSharingAllowed'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'viewability': viewability,
      'embeddable': embeddable,
      'publicDomain': publicDomain,
      'textToSpeechPermission': textToSpeechPermission,
      'pdf': pdf.toJson(),
      'webReaderLink': webReaderLink,
      'accessViewStatus': accessViewStatus,
      'quoteSharingAllowed': quoteSharingAllowed,
    };
  }
}

class SearchInfoModel {
  final String textSnippet;

  SearchInfoModel({required this.textSnippet});

  factory SearchInfoModel.fromJson(Map<String, dynamic> json) {
    return SearchInfoModel(
      textSnippet: json['textSnippet'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'textSnippet': textSnippet,
    };
  }
}

class ImageLinksModel {
  final String smallThumbnail;
  final String thumbnail;

  ImageLinksModel({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinksModel.fromJson(Map<String, dynamic> json) {
    return ImageLinksModel(
      smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'smallThumbnail': smallThumbnail,
      'thumbnail': thumbnail,
    };
  }
}

class PdfModel {
  final bool isAvailable;

  PdfModel({required this.isAvailable});

  factory PdfModel.fromJson(Map<String, dynamic> json) {
    return PdfModel(
      isAvailable: json['isAvailable'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isAvailable': isAvailable,
    };
  }
}





// class BookModel {
//   String kind;
//   String id;
//   String etag;
//   String selfLink;
//   VolumeInfoModel volumeInfo;
//   SaleInfoModel saleInfo;
//   AccessInfoModel accessInfo;
//   SearchInfoModel searchInfo;
//
//   BookModel({
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
//   factory BookModel.fromJson(Map<String, dynamic> json) {
//     return BookModel(
//       kind: json['kind'],
//       id: json['id'],
//       etag: json['etag'],
//       selfLink: json['selfLink'],
//       volumeInfo: VolumeInfoModel.fromJson(json['volumeInfo']),
//       saleInfo: SaleInfoModel.fromJson(json['saleInfo']),
//       accessInfo: AccessInfoModel.fromJson(json['accessInfo']),
//       searchInfo: SearchInfoModel.fromJson(json['searchInfo']),
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
// class VolumeInfoModel {
//   String title;
//   List<String> authors;
//   String publishedDate;
//   String description;
//   int pageCount;
//   String printType;
//   List<String> categories;
//   String maturityRating;
//   bool allowAnonLogging;
//   String contentVersion;
//   ImageLinksModel imageLinks;
//   String language;
//   String previewLink;
//   String infoLink;
//   String canonicalVolumeLink;
//
//   VolumeInfoModel({
//     required this.title,
//     required this.authors,
//     required this.publishedDate,
//     required this.description,
//     required this.pageCount,
//     required this.printType,
//     required this.categories,
//     required this.maturityRating,
//     required this.allowAnonLogging,
//     required this.contentVersion,
//     required this.imageLinks,
//     required this.language,
//     required this.previewLink,
//     required this.infoLink,
//     required this.canonicalVolumeLink,
//   });
//
//   factory VolumeInfoModel.fromJson(Map<String, dynamic> json) {
//     return VolumeInfoModel(
//       title: json['title'],
//       authors: List<String>.from(json['authors']),
//       publishedDate: json['publishedDate'],
//       description: json['description'],
//       pageCount: json['pageCount'],
//       printType: json['printType'],
//       categories: List<String>.from(json['categories']),
//       maturityRating: json['maturityRating'],
//       allowAnonLogging: json['allowAnonLogging'],
//       contentVersion: json['contentVersion'],
//       imageLinks: ImageLinksModel.fromJson(json['imageLinks']),
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
//       'authors': authors,
//       'publishedDate': publishedDate,
//       'description': description,
//       'pageCount': pageCount,
//       'printType': printType,
//       'categories': categories,
//       'maturityRating': maturityRating,
//       'allowAnonLogging': allowAnonLogging,
//       'contentVersion': contentVersion,
//       'imageLinks': imageLinks.toJson(),
//       'language': language,
//       'previewLink': previewLink,
//       'infoLink': infoLink,
//       'canonicalVolumeLink': canonicalVolumeLink,
//     };
//   }
// }
//
// class SaleInfoModel {
//   String country;
//   String saleability;
//   bool isEbook;
//
//   SaleInfoModel({
//     required this.country,
//     required this.saleability,
//     required this.isEbook,
//   });
//
//   factory SaleInfoModel.fromJson(Map<String, dynamic> json) {
//     return SaleInfoModel(
//       country: json['country'],
//       saleability: json['saleability'],
//       isEbook: json['isEbook'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'country': country,
//       'saleability': saleability,
//       'isEbook': isEbook,
//     };
//   }
// }
//
// class AccessInfoModel {
//   String country;
//   String viewability;
//   bool embeddable;
//   bool publicDomain;
//   String textToSpeechPermission;
//   PdfModel pdf;
//   String webReaderLink;
//   String accessViewStatus;
//   bool quoteSharingAllowed;
//
//   AccessInfoModel({
//     required this.country,
//     required this.viewability,
//     required this.embeddable,
//     required this.publicDomain,
//     required this.textToSpeechPermission,
//     required this.pdf,
//     required this.webReaderLink,
//     required this.accessViewStatus,
//     required this.quoteSharingAllowed,
//   });
//
//   factory AccessInfoModel.fromJson(Map<String, dynamic> json) {
//     return AccessInfoModel(
//       country: json['country'],
//       viewability: json['viewability'],
//       embeddable: json['embeddable'],
//       publicDomain: json['publicDomain'],
//       textToSpeechPermission: json['textToSpeechPermission'],
//       pdf: PdfModel.fromJson(json['pdf']),
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
//       'pdf': pdf.toJson(),
//       'webReaderLink': webReaderLink,
//       'accessViewStatus': accessViewStatus,
//       'quoteSharingAllowed': quoteSharingAllowed,
//     };
//   }
// }
//
// class SearchInfoModel {
//   String textSnippet;
//
//   SearchInfoModel({required this.textSnippet});
//
//   factory SearchInfoModel.fromJson(Map<String, dynamic> json) {
//     return SearchInfoModel(
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
//
// class ImageLinksModel {
//   String smallThumbnail;
//   String thumbnail;
//
//   ImageLinksModel({
//     required this.smallThumbnail,
//     required this.thumbnail,
//   });
//
//   factory ImageLinksModel.fromJson(Map<String, dynamic> json) {
//     return ImageLinksModel(
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
// class PdfModel {
//   bool isAvailable;
//
//   PdfModel({required this.isAvailable});
//
//   factory PdfModel.fromJson(Map<String, dynamic> json) {
//     return PdfModel(
//       isAvailable: json['isAvailable'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'isAvailable': isAvailable,
//     };
//   }
// }
