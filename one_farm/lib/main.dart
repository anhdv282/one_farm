import 'package:flutter/material.dart';
import 'package:one_farm/providers/auth_reposity.dart';
import 'package:one_farm/screens/login_screen.dart';
import 'package:one_farm/screens/main_screen.dart';
import 'package:one_farm/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthRepository(),
      child: Consumer(
        // ignore: missing_return
        builder: (context, AuthRepository auth, _) {
          switch(auth.loggedInStatus) {
            case Status.Uninitialized:
              return SplashScreen();
            case Status.Unauthenticated:
            case Status.Authenticating:
              return MainScreen();
            // case Status.Authenticated:
              // return MainScreen();
          }
        },
      ),
    );
  }
}
