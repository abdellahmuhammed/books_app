import 'price_model.dart';

class OfferModel {
  int finskyOfferType;
  PriceModel listPrice;
  PriceModel retailPrice;

  OfferModel({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
  });

  factory OfferModel.fromJson(Map<String, dynamic> json) {
    return OfferModel(
      finskyOfferType: json['finskyOfferType'],
      listPrice: PriceModel.fromJson(json['listPrice']),
      retailPrice: PriceModel.fromJson(json['retailPrice']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'finskyOfferType': finskyOfferType,
      'listPrice': listPrice.toJson(),
      'retailPrice': retailPrice.toJson(),
    };
  }
}
