// To parse this JSON data, do
//
//     final recipeModel = recipeModelFromJson(jsonString);

import 'dart:convert';

List<RecipeModel> recipeModelFromJson(String str) =>
    List<RecipeModel>.from(json.decode(str).map((x) => RecipeModel.fromJson(x)));

String recipeModelToJson(List<RecipeModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RecipeModel {
  RecipeModel({
    required this.id,
    required this.title,
    required this.maker,
    required this.calories,
    required this.time,
    required this.category,
    required this.jobLevel,
    required this.v,
    required this.image,
  });

  String id;
  String title;
  String maker;
  String calories;
  String time;
  String category;
  String jobLevel;
  int v;
  String image;

  factory RecipeModel.fromJson(Map<String, dynamic> json) => RecipeModel(
        id: json["_id"],
        title: json["title"],
        maker: json["maker"],
        calories: json["calories"],
        time: json["time"],
        category: json["category"],
        jobLevel: json["jobLevel"],
        v: json["__v"],
        image: json["image"] == null ? null : json["image"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "maker": maker,
        "calories": calories,
        "time": time,
        "category": category,
        "jobLevel": jobLevel,
        "__v": v,
        "image": image == null ? null : image,
      };
}
