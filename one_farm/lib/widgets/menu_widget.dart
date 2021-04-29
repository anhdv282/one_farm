import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:one_farm/utils/font_util.dart';
import 'package:one_farm/utils/palette.dart';
import 'package:one_farm/widgets/text_widget.dart';

class PersonInfoMenuSide extends StatelessWidget {
  const PersonInfoMenuSide({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white, border: Border.all(width: 3, color: Colors.red)),
      // child: Padding(
      //     padding: EdgeInsets.all(10.0),
      //     child: Container(width: 20, height: 20, color: Colors.red,)
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(backgroundColor: Palette.white,),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              text('Jonh Milton', textColor: Palette.white, fontSize: MyFont.normal7.fontSize),
              text('user@vnpt-technology.vn', textColor: Palette.white, fontSize: MyFont.normal4.fontSize)
            ],
          )
        ],
      ),
    );
  }
}

Widget menuItem(context, String name, String iconName, {Function onTap}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: <Widget>[
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 10,),
            SvgPicture.asset(iconName, width: 24, height: 24,color: Palette.white,),
            SizedBox(width: 20,),
            text(name),
          ],
        ),
        SizedBox(height: 20)
      ],
    ),
  );
}