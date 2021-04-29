import 'dart:core';

import 'package:flutter/cupertino.dart';

class User {
  String name;
  String phone;
  String password;
  String type;
  String token;

  User({ this.name, @required this.phone, @required this.password, this.type, @required this.token });
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