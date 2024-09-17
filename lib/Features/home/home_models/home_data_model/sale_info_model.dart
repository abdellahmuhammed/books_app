
import 'offer_model.dart';
import 'price_model.dart';

class SaleInfoModel {
  String country;
  String saleability;
  bool isEbook;
  PriceModel listPrice;
  PriceModel retailPrice;
  List<OfferModel> offers;

  SaleInfoModel({
    required this.country,
    required this.saleability,
    required this.isEbook,
    required this.listPrice,
    required this.retailPrice,
    required this.offers,
  });

  factory SaleInfoModel.fromJson(Map<String, dynamic> json) {
    return SaleInfoModel(
      country: json['country'],
      saleability: json['saleability'],
      isEbook: json['isEbook'],
      listPrice: PriceModel.fromJson(json['listPrice']),
      retailPrice: PriceModel.fromJson(json['retailPrice']),
      offers: List<OfferModel>.from(json['offers'].map((offer) => OfferModel.fromJson(offer))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'saleability': saleability,
      'isEbook': isEbook,
      'listPrice': listPrice.toJson(),
      'retailPrice': retailPrice.toJson(),
      'offers': offers.map((offer) => offer.toJson()).toList(),
    };
  }
}
