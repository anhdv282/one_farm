import 'dart:core';

import 'package:flutter/cupertino.dart';

class User {
  String address;
  String email;
  int id;
  String name;
  int parentId;
  String phoneNumber;
  List<String> roleApps;
  int status;
  int type;
  User({@required this.name});
}

class AuthResponse {

  String token;

  bool success;

  AuthResponse({ this.token, this.success });

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
        token: json["data"] as String,
        success: json["success"] as bool
    );
  }
}