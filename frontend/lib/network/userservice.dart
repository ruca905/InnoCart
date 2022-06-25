

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../homescreen.dart';

// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User(
    this.id,
    this.name,
    this.phoneNumber,
    this.email,
    this.age,
    this.deliveryRate,
    this.createdOrdersHistoryIds,
    this.deliveredOrdersHistoryIds,
  );

  int id;
  String name;
  String phoneNumber;
  String email;
  int age;
  double deliveryRate;
  List<int> createdOrdersHistoryIds;
  List<int> deliveredOrdersHistoryIds;

  factory User.fromJson(Map<String, dynamic> json) => User(
    json["id"],
    json["name"],
    json["phoneNumber"],
   json["email"],
    json["age"],
    double.parse(json["deliveryRate"]),
    <int>[],
    <int>[],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "phoneNumber": phoneNumber,
    "email": email,
    "age": age,
    "deliveryRate": deliveryRate,
    "createdOrdersHistoryIds": List<dynamic>.from(createdOrdersHistoryIds.map((x) => x)),
    "deliveredOrdersHistoryIds": List<dynamic>.from(deliveredOrdersHistoryIds.map((x) => x)),
  };
}

class UserService{
  Future<User?> getUser(Function f,int id) async {
    var client = http.Client();

    var uri = Uri.parse('http://5.53.125.241:8000/users/' + id.toString() + '?token=' + HomeScreenState.token);
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = userFromJson(response.body);
      return json;
    }
  }
}
