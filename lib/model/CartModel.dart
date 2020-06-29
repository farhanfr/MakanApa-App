import 'dart:convert';

List<CartModel> cartModelFromJson(String str) => List<CartModel>.from(json.decode(str).map((x) => CartModel.fromJson(x)));

String cartModelToJson(List<CartModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartModel {
    CartModel({
        this.id,
        this.userId,
        this.foodId,
        this.qty,
        this.price,
        this.createdAt,
        this.updatedAt,
        this.food,
    });

    int id;
    int userId;
    int foodId;
    int qty;
    int price;
    dynamic createdAt;
    dynamic updatedAt;
    Food food;

    factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json["id"],
        userId: json["user_id"],
        foodId: json["food_id"],
        qty: json["qty"],
        price: json["price"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        food: Food.fromJson(json["food"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "food_id": foodId,
        "qty": qty,
        "price": price,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "food": food.toJson(),
    };
}

class Food {
    Food({
        this.id,
        this.foodCategoryId,
        this.restaurantId,
        this.menuId,
        this.name,
        this.price,
        this.photo,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    int foodCategoryId;
    int restaurantId;
    int menuId;
    String name;
    int price;
    String photo;
    dynamic createdAt;
    dynamic updatedAt;

    factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        foodCategoryId: json["food_category_id"],
        restaurantId: json["restaurant_id"],
        menuId: json["menu_id"],
        name: json["name"],
        price: json["price"],
        photo: json["photo"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
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
    };
}
