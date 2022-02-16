import 'package:flutter/material.dart';
import 'package:smartcluster/smart_village_guest/guest_add.dart';
import 'package:smartcluster/smart_village_guest/guest_list.dart';

class GuestMenu extends StatelessWidget {
  Widget build(BuildContext context){
    return new Container(
    height: 123.0,
    decoration: new BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(10.0))),
    child: new Column(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(12.0),
          decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
              ),
              borderRadius: new BorderRadius.only(
                  topLeft: new Radius.circular(10.0),
                  topRight: new Radius.circular(10.0))),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                "BUKU TAMU",
                style: new TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontFamily: "NeoSansBold"),
              ),
            ],
          ),
        ),
        new Container(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => GuestAddPage()
                        ),
                      );                      
                    },
                    padding: EdgeInsets.all(10.0),
                    child: Column( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        new Image.asset(
                          "assets/icons/add-user-48.png",
                          width: 32.0,
                          height: 32.0,
                        ),
                        new Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        new Text(
                          "Tambah Tamu",
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              new Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => GuestListPage()
                        ),
                      );                      
                    },
                    padding: EdgeInsets.all(10.0),
                    child: Column( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        new Image.asset(
                          "assets/icons/book-16-48.png",
                          width: 32.0,
                          height: 32.0,
                        ),
                        new Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        new Text(
                          "Daftar Tamu",
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              new Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {},
                    padding: EdgeInsets.all(10.0),
                    child: Column( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        new Image.asset(
                          "assets/icons/report-3-48.png",
                          width: 32.0,
                          height: 32.0,
                        ),
                        new Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        new Text(
                          "History",
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              new Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {},
                    padding: EdgeInsets.all(10.0),
                    child: Column( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        new Image.asset(
                          "assets/icons/assistant-48.png",
                          width: 32.0,
                          height: 32.0,
                        ),
                        new Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        new Text(
                          "Bantuan",
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}

