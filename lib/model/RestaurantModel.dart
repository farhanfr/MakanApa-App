// To parse this JSON data, do
//
//     final restaurantModel = restaurantModelFromJson(jsonString);

import 'dart:convert';

List<RestaurantModel> restaurantModelFromJson(String str) => List<RestaurantModel>.from(json.decode(str).map((x) => RestaurantModel.fromJson(x)));

String restaurantModelToJson(List<RestaurantModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RestaurantModel {
    RestaurantModel({
        this.id,
        this.name,
        this.frontPhoto,
        this.backPhoto,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String name;
    String frontPhoto;
    String backPhoto;
    dynamic createdAt;
    dynamic updatedAt;

    factory RestaurantModel.fromJson(Map<String, dynamic> json) => RestaurantModel(
        id: json["id"],
        name: json["name"],
        frontPhoto: json["front_photo"],
        backPhoto: json["back_photo"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "front_photo": frontPhoto,
        "back_photo": backPhoto,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
