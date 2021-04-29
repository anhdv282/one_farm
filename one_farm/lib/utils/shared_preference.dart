import 'package:one_farm/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  Future<User> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = prefs.getString("name");
    return User(
        name: name
    );
  }

  Future<bool> saveUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", user.name);
    prefs.setString("phone", user.phone);
    prefs.setString("type", user.type);
    prefs.setString("token", user.token);
    return prefs.commit();
  }
}