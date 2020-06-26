// To parse this JSON data, do
//
//     final menuRestaurantModel = menuRestaurantModelFromJson(jsonString);

import 'dart:convert';

List<MenuRestaurantModel> menuRestaurantModelFromJson(String str) => List<MenuRestaurantModel>.from(json.decode(str).map((x) => MenuRestaurantModel.fromJson(x)));

String menuRestaurantModelToJson(List<MenuRestaurantModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MenuRestaurantModel {
    MenuRestaurantModel({
        this.id,
        this.foodCategoryId,
        this.restaurantId,
        this.name,
        this.createdAt,
        this.updatedAt,
        this.restaurant,
    });

    int id;
    int foodCategoryId;
    int restaurantId;
    String name;
    dynamic createdAt;
    dynamic updatedAt;
    Restaurant restaurant;

    factory MenuRestaurantModel.fromJson(Map<String, dynamic> json) => MenuRestaurantModel(
        id: json["id"],
        foodCategoryId: json["food_category_id"],
        restaurantId: json["restaurant_id"],
        name: json["name"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        restaurant: Restaurant.fromJson(json["restaurant"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "food_category_id": foodCategoryId,
        "restaurant_id": restaurantId,
        "name": name,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "restaurant": restaurant.toJson(),
    };
}

class Restaurant {
    Restaurant({
        this.id,
        this.name,
        this.frontPhoto,
        this.backPhoto,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String name;
    dynamic frontPhoto;
    dynamic backPhoto;
    dynamic createdAt;
    dynamic updatedAt;

    factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
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
