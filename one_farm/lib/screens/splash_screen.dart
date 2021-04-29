import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_farm/providers/auth_reposity.dart';
import 'package:one_farm/utils/palette.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthRepository>(context);
    auth.autoNextToLoginScreen();

    return Material(
      color: Palette.greenLand,
      child: Center(
        child: Image.asset(
          'assets/ic_one_farm.png',
            width: 100,
            height: 100
        ),
      ),
    );
  }
}