import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:one_farm/base/api_provider.dart';
import 'package:one_farm/models/user.dart';
import 'package:one_farm/utils/app_url.dart';
import 'package:one_farm/utils/shared_preference.dart';
import 'package:one_farm/utils/toast_view.dart';

enum Status {
  Uninitialized,
  Unauthenticated,
  Authenticating,
  Authenticated
}

class AuthRepository extends ChangeNotifier {
  ApiProvider apiProvider = ApiProvider();

  Status _loggedInStatus = Status.Uninitialized;

  Status get loggedInStatus => _loggedInStatus;

  Future<bool> validateToken() async {
    User user = await UserPreferences().getUser();
    // if(user.token != null) {
    //   _loggedInStatus = Status.Authenticated;
    //   notifyListeners();
    //   return true;
    // } else {
    //   _loggedInStatus = Status.Uninitialized;
    //   notifyListeners();
    //   return false;
    // }
  }

  Future<void> autoNextToLoginScreen() async {
    var duration = new Duration(seconds: 3);
    Future.delayed(duration, () {
      _loggedInStatus = Status.Unauthenticated;
      notifyListeners();
    });
  }

  Future<Map<String, dynamic>> login(String phone, String password) async {
    log("phone = " + phone);
    log("password = " + password);
    var result;

    final Map<String, dynamic> loginData = {
      'phone': phone,
      'password': password
    };

    _loggedInStatus = Status.Authenticating;
    notifyListeners();

    // final response = await provider.post(AppUrl.login, loginData);
    final response = await apiProvider.post(AppUrl.login, loginData);
    final AuthResponse authResponse = AuthResponse.fromJson(response);
    if(authResponse.success) {
      String token = authResponse.token;
      User authUser = new User(phone: phone, password: password, token: token);
      UserPreferences().saveUser(authUser);
      _loggedInStatus = Status.Authenticated;
      notifyListeners();
      result = {
        'status': true,
        'message': 'Successful',
        'user': authUser
      };
    } else {
      ToastMessage.show('Đăng nhập thất bại', ToastStyle.error);
      _loggedInStatus = Status.Unauthenticated;
      notifyListeners();
      result = {
        'status': false,
        'message': json.decode(response.body)['error']
      };
    }
    return result;
  }
}