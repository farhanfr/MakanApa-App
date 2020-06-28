// To parse this JSON data, do
//
//     final failureModel = failureModelFromJson(jsonString);

import 'dart:convert';

FailureModel failureModelFromJson(String str) => FailureModel.fromJson(json.decode(str));

String failureModelToJson(FailureModel data) => json.encode(data.toJson());

class FailureModel {
    FailureModel({
        this.message,
    });

    List<String> message;

    factory FailureModel.fromJson(Map<String, dynamic> json) => FailureModel(
        message: List<String>.from(json["message"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "message": List<dynamic>.from(message.map((x) => x)),
    };
}
