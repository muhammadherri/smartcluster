import 'package:flutter/material.dart';
import 'package:smartcluster/beranda/beranda_appbar.dart';
import 'package:smartcluster/constant.dart';
import 'package:smartcluster/beranda/beranda_model.dart';
import 'package:smartcluster/smart_village_guest/menu_guest_book.dart';


class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Scaffold(
        appBar: new MenuAppBar(),
        backgroundColor: ColorPalette.grey,
        body: new Container(
          child: new ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              new Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom:10.00),
                  color: Colors.blue[100],
                  child: new Column(
                    children: <Widget>[
                      GuestMenu(),
                    ],
                  )),
              new Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      buildSubHeaderMenu()
                    ],
                  )),
            ],
          ),          
        ),
    ));    
  }

Widget buildSubHeaderMenu() {
  return new SizedBox(
    width: double.infinity,
    height: 220.0,
    child: new Container(
        margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: GridView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: 8,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, position) {
              return _rowSubmenuService(menuServiceList[position]);
            }
        )
      )
  );
}
Widget _rowSubmenuService(MenuService submenu) {
  return new Container(
    child: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            border: Border.all(color: ColorPalette.grey200, width: 1.5),
            borderRadius: new BorderRadius.all(new Radius.elliptical(20.0,25.0)),
          ),
          padding: EdgeInsets.all(10.0),
          child: new Icon(
            submenu.image,
            color: submenu.color,
            size: 45.0,
          ),
        ),
        new Padding(
          padding: EdgeInsets.only(top:10.0),            
        ),
        new Text(
          submenu.title, 
          style: new TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "NeoSansBold")),
      ],
    ),
  );
}
List<MenuService> menuServiceList = [];
  @override
  void initState() {
    super.initState();

    menuServiceList.add(new MenuService(
        image: Icons.group,
        color: ColorPalette.menuRide,
        title: "PENGURUS RT/RW"));
    menuServiceList.add(new MenuService(
        image: Icons.attach_money,
        color: ColorPalette.menuCar,
        title: "IURAN"));
    menuServiceList.add(new MenuService(
        image: Icons.library_books,
        color: ColorPalette.menuBluebird,
        title: "PEMUTAKHIRAN"));
    menuServiceList.add(new MenuService(
        image: Icons.email,
        color: ColorPalette.menuFood,
        title: "E-SURAT"));
    menuServiceList.add(new MenuService(
        image: Icons.security,
        color: ColorPalette.menuRide,
        title: "SECURITY"));
    menuServiceList.add(new MenuService(
        image: Icons.local_activity,
        color: ColorPalette.menuCar,
        title: "MUSREMBANG"));
    menuServiceList.add(new MenuService(
        image: Icons.calendar_today,
        color: ColorPalette.menuBluebird,
        title: "KEGIATAN"));
    menuServiceList.add(new MenuService(
        image: Icons.menu ,
        color: ColorPalette.menuFood,
        title: "LAIN-NYA"));
  }
}