class IndustryIdentifierModel {
  String type;
  String identifier;

  IndustryIdentifierModel({
    required this.type,
    required this.identifier,
  });

  factory IndustryIdentifierModel.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifierModel(
      type: json['type'],
      identifier: json['identifier'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'identifier': identifier,
    };
  }
}
