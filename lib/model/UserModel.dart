// To parse this JSON data, do
//
//     final loginUserModel = loginUserModelFromJson(jsonString);

import 'dart:convert';

LoginUserModel loginUserModelFromJson(String str) => LoginUserModel.fromJson(json.decode(str));

String loginUserModelToJson(LoginUserModel data) => json.encode(data.toJson());

class LoginUserModel {
    LoginUserModel({
        this.user,
    });

    User user;

    factory LoginUserModel.fromJson(Map<String, dynamic> json) => LoginUserModel(
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
    };
}

class User {
    User({
        this.id,
        this.nameUser,
        this.numberPhone,
        this.address,
        this.token,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    dynamic nameUser;
    String numberPhone;
    dynamic address;
    String token;
    dynamic createdAt;
    dynamic updatedAt;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        nameUser: json["name_user"],
        numberPhone: json["number_phone"],
        address: json["address"],
        token: json["token"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name_user": nameUser,
        "number_phone": numberPhone,
        "address": address,
        "token": token,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
