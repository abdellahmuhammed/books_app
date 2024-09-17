class PriceModel {
  double amount;
  String currencyCode;

  PriceModel({
    required this.amount,
    required this.currencyCode,
  });

  factory PriceModel.fromJson(Map<String, dynamic> json) {
    return PriceModel(
      amount: json['amount'].toDouble(),
      currencyCode: json['currencyCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currencyCode': currencyCode,
    };
  }
}
