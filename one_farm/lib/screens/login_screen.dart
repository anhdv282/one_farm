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
      body: LoginBackground(_testText()),
    );
  }
}

class LoginBackground extends StatelessWidget {
  Widget widgetContent;
  LoginBackground(this.widgetContent);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
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
          child: Center(
            child: Container(color: Colors.red, width: 10, height: 10,),
          ),
        ),
      ),
      Positioned(child: DropdownButton(),right: 10,top: 10,width: 100,height: 30,),
      new Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: Image.asset('assets/ic_veggies_bg.png')
      )
    ],);
  }
}

Text _testText() {
  return Text('jhagdashjdghj');
}