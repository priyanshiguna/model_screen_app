// To parse this JSON data, do
//
//     final usersData = usersDataFromMap(jsonString);

import 'dart:convert';

UsersData usersDataFromMap(String str) => UsersData.fromMap(json.decode(str));

String usersDataToMap(UsersData data) => json.encode(data.toMap());

class UsersData {
  List<FirstModel>? firstModel;
  List<FourthModelElement>? secondModel;
  List<FifthModelElement>? thirdModel;
  List<FourthModelElement>? fourthModel;
  List<FifthModelElement>? fifthModel;
  List<FifthModelElement>? sixthModel;
  List<FifthModelElement>? seventhModel;

  UsersData({
    this.firstModel,
    this.secondModel,
    this.thirdModel,
    this.fourthModel,
    this.fifthModel,
    this.sixthModel,
    this.seventhModel,
  });

  factory UsersData.fromMap(Map<String, dynamic> json) => UsersData(
        firstModel: json["firstModel"] == null
            ? []
            : List<FirstModel>.from(
                json["firstModel"]!.map((x) => FirstModel.fromMap(x))),
        secondModel: json["secondModel"] == null
            ? []
            : List<FourthModelElement>.from(
                json["secondModel"]!.map((x) => FourthModelElement.fromMap(x))),
        thirdModel: json["thirdModel"] == null
            ? []
            : List<FifthModelElement>.from(
                json["thirdModel"]!.map((x) => FifthModelElement.fromMap(x))),
        fourthModel: json["fourthModel"] == null
            ? []
            : List<FourthModelElement>.from(
                json["fourthModel"]!.map((x) => FourthModelElement.fromMap(x))),
        fifthModel: json["fifthModel"] == null
            ? []
            : List<FifthModelElement>.from(
                json["fifthModel"]!.map((x) => FifthModelElement.fromMap(x))),
        sixthModel: json["sixthModel"] == null
            ? []
            : List<FifthModelElement>.from(
                json["sixthModel"]!.map((x) => FifthModelElement.fromMap(x))),
        seventhModel: json["seventhModel"] == null
            ? []
            : List<FifthModelElement>.from(
                json["seventhModel"]!.map((x) => FifthModelElement.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "firstModel": firstModel == null
            ? []
            : List<dynamic>.from(firstModel!.map((x) => x.toMap())),
        "secondModel": secondModel == null
            ? []
            : List<dynamic>.from(secondModel!.map((x) => x.toMap())),
        "thirdModel": thirdModel == null
            ? []
            : List<dynamic>.from(thirdModel!.map((x) => x.toMap())),
        "fourthModel": fourthModel == null
            ? []
            : List<dynamic>.from(fourthModel!.map((x) => x.toMap())),
        "fifthModel": fifthModel == null
            ? []
            : List<dynamic>.from(fifthModel!.map((x) => x.toMap())),
        "sixthModel": sixthModel == null
            ? []
            : List<dynamic>.from(sixthModel!.map((x) => x.toMap())),
        "seventhModel": seventhModel == null
            ? []
            : List<dynamic>.from(seventhModel!.map((x) => x.toMap())),
      };
}

class FifthModelElement {
  String? image;
  String? name;
  String? song;

  FifthModelElement({
    this.image,
    this.name,
    this.song,
  });

  factory FifthModelElement.fromMap(Map<String, dynamic> json) =>
      FifthModelElement(
        image: json["image"],
        name: json["name"],
        song: json["song"],
      );

  Map<String, dynamic> toMap() => {
        "image": image,
        "name": name,
        "song": song,
      };
}

class FirstModel {
  String? image;
  String? name;

  FirstModel({
    this.image,
    this.name,
  });

  factory FirstModel.fromMap(Map<String, dynamic> json) => FirstModel(
        image: json["image"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "image": image,
        "name": name,
      };
}

class FourthModelElement {
  String? image;
  String? name;
  String? description;

  FourthModelElement({
    this.image,
    this.name,
    this.description,
  });

  factory FourthModelElement.fromMap(Map<String, dynamic> json) =>
      FourthModelElement(
        image: json["image"],
        name: json["name"],
        description: json["description"],
      );

  Map<String, dynamic> toMap() => {
        "image": image,
        "name": name,
        "description": description,
      };
}
