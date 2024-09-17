import 'format_model.dart';

class AccessInfoModel {
  String country;
  String viewability;
  bool embeddable;
  bool publicDomain;
  String textToSpeechPermission;
  FormatModel epub;
  FormatModel pdf;
  String webReaderLink;
  String accessViewStatus;
  bool quoteSharingAllowed;

  AccessInfoModel({
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

  factory AccessInfoModel.fromJson(Map<String, dynamic> json) {
    return AccessInfoModel(
      country: json['country'],
      viewability: json['viewability'],
      embeddable: json['embeddable'],
      publicDomain: json['publicDomain'],
      textToSpeechPermission: json['textToSpeechPermission'],
      epub: FormatModel.fromJson(json['epub']),
      pdf: FormatModel.fromJson(json['pdf']),
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
      'epub': epub.toJson(),
      'pdf': pdf.toJson(),
      'webReaderLink': webReaderLink,
      'accessViewStatus': accessViewStatus,
      'quoteSharingAllowed': quoteSharingAllowed,
    };
  }
}
