import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_farm/providers/auth_reposity.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthRepository>(context);
    auth.autoNextToLoginScreen();

    return Material(
      child: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}