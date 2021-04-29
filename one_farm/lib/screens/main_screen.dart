import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
import 'package:one_farm/utils/icon_util.dart';
import 'package:one_farm/utils/palette.dart';
import 'package:one_farm/widgets/menu_widget.dart';
import 'package:one_farm/widgets/text_widget.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class MainScreen extends StatefulWidget {
  final String title = 'Main Screen';

  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

  @override
  Widget build(BuildContext context) {
    return SideMenu(
        key: _sideMenuKey,
        menu: buildMenu(),
        type: SideMenuType.shrinkNSlide,
        background: Palette.sideMenuBackground,
        inverse: false,
        maxMenuWidth: 350,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Palette.greenLand,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                final _state = _sideMenuKey.currentState;
                if (_state.isOpened)
                  _state.closeSideMenu();
                else
                  _state.openSideMenu();
              },
            ),
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            ),
          ),
        ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.0),
                PersonInfoMenuSide(),
                SizedBox(height: 50.0),
                menuItem(context, 'Trang chủ', 'assets/ic_home.svg' , onTap: (){

                }),
                menuItem(context, 'Chọn khu vực', 'assets/ic_area.svg', onTap: () {

                }),
                menuItem(context, 'Quản lý đợt', 'assets/ic_profit_report.svg', onTap: () {

                }),
                menuItem(context, 'Điều khiển tự động', 'assets/ic_auto_control.svg', onTap: () {

                }),
                SizedBox(height: 100,),
                menuItem(context, 'Đăng xuất', 'assets/ic_logout.svg', onTap: () {

                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}