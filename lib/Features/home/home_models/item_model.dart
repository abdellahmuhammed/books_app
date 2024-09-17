import 'volume_info_model.dart';
import 'sale_info_model.dart';
import 'access_info_model.dart';
import 'search_info_model.dart';

class ItemModel {
  String kind;
  String id;
  String etag;
  String selfLink;
  VolumeInfoModel volumeInfo;
  SaleInfoModel saleInfo;
  AccessInfoModel accessInfo;
  SearchInfoModel searchInfo;

  ItemModel({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      kind: json['kind'],
      id: json['id'],
      etag: json['etag'],
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
