class SearchInfoModel {
  String textSnippet;

  SearchInfoModel({
    required this.textSnippet,
  });

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
