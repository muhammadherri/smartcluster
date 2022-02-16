// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:smartcluster/launcher/launcher.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:smartcluster/landing/landingpage_view.dart';
import 'package:smartcluster/constant.dart';
// import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Cluster',
      theme: ThemeData(
        fontFamily: "NeoSans",
        primaryColor: ColorPalette.menuBluebird,
        accentColor: ColorPalette.menuBluebird,
      ),
      home: new LauncherPage(),
      // home: MyHomePage(title: 'Home Page'),
    );
  }
}