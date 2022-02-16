import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class GuestAddPage extends StatefulWidget {
  @override
  _GuestAddState createState() => new _GuestAddState();
}

class _GuestAddState extends State<GuestAddPage> {
  double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return new SafeArea(
      child: Scaffold(
      appBar: AppBar(
          title: const Text('Tambah Tamu'),
          backgroundColor: Colors.blue,
      ),
      backgroundColor: ColorPalette.grey,
      body: SingleChildScrollView(
        child:Stack(
          children: <Widget>[
            formLayout(context),
          ]
        )
      )
    ));
  }
Widget formLayout(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(top:5.0),
              width: 220,
              height: 140,
              padding: EdgeInsets.all(10.0),
              decoration: new BoxDecoration(border: Border.all()),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    new Text("Foto KTP / Identitas Lainnya."),
                      new Container(
                        padding: EdgeInsets.only(left:20.0,top: 10.0),
                        child: new FloatingActionButton(                       
                          onPressed: (){},
                          tooltip: 'Ambil Foto',
                          child: Icon(Icons.add_a_photo),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            new Padding (
              padding: EdgeInsets.only(top:5.0, bottom:5.0),
              child: Row(
                children: <Widget> [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 15.0),
                      decoration: new InputDecoration(
                        hintText:"Nama Lengkap",                        
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Padding (
              padding: EdgeInsets.only(top:5.0, bottom:5.0),
              child: Row(
                children: <Widget> [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 15.0),
                      decoration: new InputDecoration(
                        hintText:"Tujuan Bertamu",

                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Padding (
              padding: EdgeInsets.only(top:5.0, bottom:5.0),
              child: Row(
                children: <Widget> [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 15.0),
                      decoration: new InputDecoration(
                        hintText:"Nama Pemilik Rumah / Yang akan di kunjungi",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Padding (
              padding: EdgeInsets.only(top:5.0, bottom:5.0),
              child: Row(
                children: <Widget> [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 15.0),
                      decoration: new InputDecoration(
                        hintText:"Blok",
                      ),
                    ),
                  ),
                  Container(width: 20.0,),
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 15.0),
                      decoration: new InputDecoration(
                        hintText:"Nomor Rumah",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Padding (
              padding: EdgeInsets.only(top:5.0, bottom:5.0),
              child: Row(
                children: <Widget> [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 15.0),
                      decoration: new InputDecoration(
                        hintText:"Jenis Kendaraan",
                      ),
                    ),
                  ),
                  Container(width: 20.0,),
                  Expanded(
                    child: TextField(
                      decoration: new InputDecoration(
                        hintText:"Nomor Polisi",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Padding (
              padding: EdgeInsets.only(top:5.0, bottom:5.0),
              child: Row(
                children: <Widget> [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 15.0),
                      decoration: new InputDecoration(
                        hintText:"Tujuan Bertamu",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Padding (
              padding: EdgeInsets.only(top:10.0, bottom:10.0),
              child: Row(
                children: <Widget> [
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Simpan Data',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}