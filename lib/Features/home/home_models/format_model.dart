class FormatModel {
  bool isAvailable;
  String? acsTokenLink;

  FormatModel({
    required this.isAvailable,
    this.acsTokenLink,
  });

  factory FormatModel.fromJson(Map<String, dynamic> json) {
    return FormatModel(
      isAvailable: json['isAvailable'],
      acsTokenLink: json['acsTokenLink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isAvailable': isAvailable,
      'acsTokenLink': acsTokenLink,
    };
  }
}
