import 'package:flutter/material.dart';
import 'package:one_farm/utils/font_util.dart';
import 'package:one_farm/utils/icon_util.dart';
import 'package:one_farm/utils/palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum IconPosition { left, right, top, bottom }

class TextView extends StatefulWidget {
  TextView(
      {@required this.text,
      this.textColor,
      this.iconStyle,
      this.textStyle,
      this.borderShape,
      this.onTapped});

  String text;
  Color textColor;
  IconStyle iconStyle;
  TextStyle textStyle;
  ShapeBorder borderShape;
  Function(TextView) onTapped;

  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

Widget text(
    String text, {
      var fontSize,
      Color textColor,
      var fontFamily,
      var isCentered = false,
      var maxLine = 1,
      var latterSpacing = 0.5,
      bool textAllCaps = false,
      var isLongText = false,
      bool lineThrough = false,
    }) {
  return Text(
    textAllCaps ? text.toUpperCase() : text,
    textAlign: isCentered ? TextAlign.center : TextAlign.start,
    maxLines: isLongText ? null : maxLine,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontFamily: fontFamily ?? null,
      fontSize: fontSize,
      color: textColor ?? Palette.white,
      height: 1.5,
      letterSpacing: latterSpacing,
      decoration: lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
    ),
  );
}

class _State extends State<TextView> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.textColor == null) {
      widget.textColor = Palette.blueSky;
    }
    if (widget.textStyle == null) {
      widget.textStyle = MyFont.normal5;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: ShapeDecoration(
          shape: widget.borderShape != null
              ? widget.borderShape
              : StadiumBorder(
                  side: BorderSide(width: 0, color: Colors.transparent))),
      child: _renderStack(),
    );
  }

  Widget _renderStack() {
    return Stack(
      children: [
        widget.iconStyle != null ? _renderIcon() : Container(),
        _renderText()
      ],
    );
  }

  Widget _renderIcon() {
    return SvgPicture.asset(
      widget.iconStyle.icon,
      fit: widget.iconStyle.fit,
    );
  }

  Widget _renderText() {
    return Text(widget.text,
        style: TextStyle(
            color: widget.textColor,
            fontFamily: widget.textStyle.fontFamily,
            fontWeight: widget.textStyle.fontWeight,
            fontSize: widget.textStyle.fontSize));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
