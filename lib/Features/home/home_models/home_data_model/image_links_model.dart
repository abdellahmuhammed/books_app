class ImageLinksModel {
  String smallThumbnail;
  String thumbnail;

  ImageLinksModel({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinksModel.fromJson(Map<String, dynamic> json) {
    return ImageLinksModel(
      smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'smallThumbnail': smallThumbnail,
      'thumbnail': thumbnail,
    };
  }
}
