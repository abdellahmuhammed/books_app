class PanelizationSummaryModel {
  bool containsEpubBubbles;
  bool containsImageBubbles;

  PanelizationSummaryModel({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  factory PanelizationSummaryModel.fromJson(Map<String, dynamic> json) {
    return PanelizationSummaryModel(
      containsEpubBubbles: json['containsEpubBubbles'],
      containsImageBubbles: json['containsImageBubbles'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'containsEpubBubbles': containsEpubBubbles,
      'containsImageBubbles': containsImageBubbles,
    };
  }
}
