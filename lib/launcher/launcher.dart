import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smartcluster/landing/landingpage_view.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();    
}

class _LauncherPageState extends State<LauncherPage>{
  void initState(){
    super.initState();
    _startLounching();
  }

  _startLounching() async{
    var duration = const Duration(seconds:4);
    return new Timer(duration, (){
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_){
        return new LandingPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Center(
        child: new Image.asset(
          "assets/logos/Smart-cluster.png",
          height: 100.0,
          width: 200.0,
        )
      ),
    );
  }
}
