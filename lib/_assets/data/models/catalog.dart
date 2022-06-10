// To parse this JSON data, do
//
//     final tblCatalog = tblCatalogFromJson(jsonString);

import 'dart:convert';

TblCatalog tblCatalogFromJson(String str) =>
    TblCatalog.fromJson(json.decode(str));

String tblCatalogToJson(TblCatalog data) => json.encode(data.toJson());

class TblCatalog {
  TblCatalog({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  int id;
  String name;
  String desc;
  int price;
  String color;
  String image;

  factory TblCatalog.fromJson(Map<String, dynamic> json) => TblCatalog(
        id: json["id"],
        name: json["name"],
        desc: json["desc"],
        price: json["price"],
        color: json["color"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
  static List<TblCatalog> fromJsonList(List list) {
    if (list == null) return List<TblCatalog>.empty();
    return list.map((item) => TblCatalog.fromJson(item)).toList();
  }
}
