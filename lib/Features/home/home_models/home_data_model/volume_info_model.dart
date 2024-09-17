import 'package:bookly_app/Features/home/home_models/home_data_model/panelization_summary_model.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/reading_modes_model.dart';

import 'industry_identifier_model.dart';
import 'image_links_model.dart';

class VolumeInfoModel {
  String title;
  String? subtitle;
  List<String> authors;
  String publisher;
  String publishedDate;
  String description;
  List<IndustryIdentifierModel> industryIdentifiers;
  ReadingModesModel readingModes;
  int pageCount ;
  String printType;
  List<String> categories;
  double? averageRating;
  int ratingsCount;
  String maturityRating;
  bool allowAnonLogging;
  String contentVersion;
  PanelizationSummaryModel panelizationSummary;
  ImageLinksModel imageLinks;
  String language;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;

  VolumeInfoModel({
    required this.title,
    this.subtitle,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    this.averageRating,
    required this.ratingsCount,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfoModel.fromJson(Map<String, dynamic> json) {
    return VolumeInfoModel(
      title: json['title'],
      subtitle: json['subtitle'],
      authors: List<String>.from(json['authors']),
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      industryIdentifiers: List<IndustryIdentifierModel>.from(json['industryIdentifiers']
          .map((identifier) => IndustryIdentifierModel.fromJson(identifier))),
      readingModes: ReadingModesModel.fromJson(json['readingModes']),
      pageCount: json['pageCount'],
      printType: json['printType'],
      categories: List<String>.from(json['categories']),
      averageRating: json['averageRating']?.toDouble(),
      ratingsCount: json['ratingsCount'],
      maturityRating: json['maturityRating'],
      allowAnonLogging: json['allowAnonLogging'],
      contentVersion: json['contentVersion'],
      panelizationSummary:
      PanelizationSummaryModel.fromJson(json['panelizationSummary']),
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
      'subtitle': subtitle,
      'authors': authors,
      'publisher': publisher,
      'publishedDate': publishedDate,
      'description': description,
      'industryIdentifiers': industryIdentifiers.map((identifier) => identifier.toJson()).toList(),
      'readingModes': readingModes.toJson(),
      'pageCount': pageCount,
      'printType': printType,
      'categories': categories,
      'averageRating': averageRating,
      'ratingsCount': ratingsCount,
      'maturityRating': maturityRating,
      'allowAnonLogging': allowAnonLogging,
      'contentVersion': contentVersion,
      'panelizationSummary': panelizationSummary.toJson(),
      'imageLinks': imageLinks.toJson(),
      'language': language,
      'previewLink': previewLink,
      'infoLink': infoLink,
      'canonicalVolumeLink': canonicalVolumeLink,
    };
  }
}
