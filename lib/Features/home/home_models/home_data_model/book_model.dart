
import 'item_model.dart';

class BookModel {
  String kind;
  int totalItems;
  List<ItemModel> items;

  BookModel({
    required this.kind,
    required this.totalItems,
    required this.items,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'],
      totalItems: json['totalItems'],
      items: List<ItemModel>.from(json['items'].map((item) => ItemModel.fromJson(item))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'totalItems': totalItems,
      'items': items.map((item) => item.toJson()).toList(),
    };
  }
}
