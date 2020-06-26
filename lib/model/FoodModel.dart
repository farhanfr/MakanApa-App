// To parse this JSON data, do
//
//     final foodModel = foodModelFromJson(jsonString);

import 'dart:convert';

List<FoodModel> foodModelFromJson(String str) => List<FoodModel>.from(json.decode(str).map((x) => FoodModel.fromJson(x)));

String foodModelToJson(List<FoodModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FoodModel {
    FoodModel({
        this.id,
        this.foodCategoryId,
        this.restaurantId,
        this.menuId,
        this.name,
        this.price,
        this.photo,
        this.createdAt,
        this.updatedAt,
        this.menu,
    });

    int id;
    int foodCategoryId;
    int restaurantId;
    int menuId;
    String name;
    int price;
    dynamic photo;
    dynamic createdAt;
    dynamic updatedAt;
    Menu menu;

    factory FoodModel.fromJson(Map<String, dynamic> json) => FoodModel(
        id: json["id"],
        foodCategoryId: json["food_category_id"],
        restaurantId: json["restaurant_id"],
        menuId: json["menu_id"],
        name: json["name"],
        price: json["price"],
        photo: json["photo"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        menu: Menu.fromJson(json["menu"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "food_category_id": foodCategoryId,
        "restaurant_id": restaurantId,
        "menu_id": menuId,
        "name": name,
        "price": price,
        "photo": photo,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "menu": menu.toJson(),
    };
}

class Menu {
    Menu({
        this.id,
        this.foodCategoryId,
        this.restaurantId,
        this.name,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    int foodCategoryId;
    int restaurantId;
    String name;
    dynamic createdAt;
    dynamic updatedAt;

    factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        id: json["id"],
        foodCategoryId: json["food_category_id"],
        restaurantId: json["restaurant_id"],
        name: json["name"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "food_category_id": foodCategoryId,
        "restaurant_id": restaurantId,
        "name": name,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
