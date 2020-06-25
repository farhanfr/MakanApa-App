// To parse this JSON data, do
//
//     final foodCategoryModel = foodCategoryModelFromJson(jsonString);

import 'dart:convert';

List<FoodCategoryModel> foodCategoryModelFromJson(String str) => List<FoodCategoryModel>.from(json.decode(str).map((x) => FoodCategoryModel.fromJson(x)));

String foodCategoryModelToJson(List<FoodCategoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FoodCategoryModel {
    FoodCategoryModel({
        this.id,
        this.name,
        this.icon,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String name;
    dynamic icon;
    dynamic createdAt;
    dynamic updatedAt;

    factory FoodCategoryModel.fromJson(Map<String, dynamic> json) => FoodCategoryModel(
        id: json["id"],
        name: json["name"],
        icon: json["icon"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "icon": icon,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
