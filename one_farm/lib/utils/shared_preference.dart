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
}