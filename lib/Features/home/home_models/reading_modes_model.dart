class ReadingModesModel {
  bool text;
  bool image;

  ReadingModesModel({
    required this.text,
    required this.image,
  });

  factory ReadingModesModel.fromJson(Map<String, dynamic> json) {
    return ReadingModesModel(
      text: json['text'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'image': image,
    };
  }
}
