import 'package:flutter/material.dart';
import 'package:one_farm/providers/auth_reposity.dart';
import 'package:one_farm/utils/palette.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthRepository>(context);
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          color: Palette.greenLand,
          padding: EdgeInsets.fromLTRB(15, 75, 15, 35),
          child: Container (
            decoration: new BoxDecoration(
              color: Palette.white,
              borderRadius: new BorderRadius.all(
                const Radius.circular(40.0),
              )
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: Image.asset('assets/ic_under_veggies_bg.png'),
        ),
        Container(
          alignment: Alignment.bottomRight,
          child: AspectRatio(
            aspectRatio: 566/431,
            child: Image.asset('assets/ic_veggies_bg.png'),
          ),
        )
      ],),
      // body: Container(
      //   color: Palette.greenLand,
      //   padding: EdgeInsets.fromLTRB(15, 75, 15, 35),
      //   child: Stack(children: <Widget>[
      //     Container(
      //       decoration: new BoxDecoration(
      //           color: Palette.white,
      //           borderRadius: new BorderRadius.all(
      //             const Radius.circular(40.0),
      //           )
      //       ),
      //     ),
      //     Container(
      //       alignment: Alignment.bottomCenter,
      //       child: Image.asset('assets/ic_under_veggies_bg.png'),
      //     )
      //   ]),
      // ),
    );
  }
}