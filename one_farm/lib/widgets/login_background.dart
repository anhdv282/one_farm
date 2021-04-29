import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_farm/utils/palette.dart';

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
            child: widgetContent,
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