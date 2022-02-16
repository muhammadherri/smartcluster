import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartcluster/smart_village_guest/guest_model.dart';
import '../constant.dart';

class GuestListPage extends StatefulWidget {
  @override
  _GuestListState createState() => new _GuestListState();
}

class _GuestListState extends State<GuestListPage> {
  double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return new SafeArea(
      child: Scaffold(
      appBar: AppBar(
          title: const Text('Daftar Tamu Masuk'),
          backgroundColor: Colors.blue,
      ),
      backgroundColor: ColorPalette.grey,
      body: new ListView.builder(
            itemCount: listGuestService.length,
            itemBuilder: (BuildContext context, potition) {
            return _rowListService(listGuestService[potition]);
            }
          )
      )
    );
  }
  Widget _rowListService(ListGuestService list) {
    return Card(
      color: Colors.white,
      child: Row(
          children: <Widget>[
            new Container( 
              padding: const EdgeInsets.only(top:10.0),
              alignment: Alignment.topLeft,
              child: new Image.asset(
                list.image,
                color: Colors.blue,
                width: 50.0,
                height: 50.0,
              ),
            ),
            new Expanded( 
              child: new Container( 
              padding: const EdgeInsets.only(top:10.0),
              alignment: Alignment.topLeft,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(list.title, maxLines: 1,),           
                  new Text(list.desc, maxLines: 10,)
                ]
              ),
              )
            ),
            new Padding( 
              padding: EdgeInsets.only(top:6.0, bottom:5.0,right: 10.0),
              child: new SizedBox(
                  child: new RaisedButton(
                    child: Text("Keluar",textScaleFactor: 1.2),
                    onPressed: (){},
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    splashColor: Colors.grey,                
                  )
                )
            ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      )
    );
  }
  List<ListGuestService> listGuestService = [];
    @override
    void initState() {
      super.initState();

      listGuestService.add(new ListGuestService(
          image: "assets/icons/guest.png",
          title: "Nama : yogi ari winanda",
          desc: "Tujuan : Kerumah bapak rt"));
      listGuestService.add(new ListGuestService(
          image: "assets/icons/guest.png",
          title: "Nama : yogi ari winanda",
          desc: "Tujuan : Kerumah bapak rt"));
      listGuestService.add(new ListGuestService(
          image: "assets/icons/guest.png",
          title: "Nama : yogi ari winanda",
          desc: "Tujuan : Kerumah bapak rt"));
      listGuestService.add(new ListGuestService(
          image: "assets/icons/guest.png",
          title: "Nama : yogi ari winanda",
          desc: "Tujuan : Kerumah bapak rt"));
      listGuestService.add(new ListGuestService(
          image: "assets/icons/guest.png",
          title: "Nama : yogi ari winanda",
          desc: "Tujuan : Kerumah bapak rt"));
      listGuestService.add(new ListGuestService(
          image: "assets/icons/guest.png",
          title: "Nama : yogi ari winanda",
          desc: "Tujuan : Kerumah bapak rt"));
      listGuestService.add(new ListGuestService(
          image: "assets/icons/guest.png",
          title: "Nama : yogi ari winanda",
          desc: "Tujuan : Kerumah bapak rt"));
      listGuestService.add(new ListGuestService(
          image: "assets/icons/guest.png",
          title: "Nama : yogi ari winanda",
          desc: "Tujuan : Kerumah bapak rt"));
      listGuestService.add(new ListGuestService(
          image: "assets/icons/guest.png",
          title: "Nama : yogi ari winanda",
          desc: "Tujuan : Kerumah bapak rt"));
      listGuestService.add(new ListGuestService(
          image: "assets/icons/guest.png",
          title: "Nama : yogi ari winanda",
          desc: "Tujuan : Kerumah bapak rt"));
      listGuestService.add(new ListGuestService(
          image: "assets/icons/guest.png",
          title: "Nama : yogi ari winanda",
          desc: "Tujuan : Kerumah bapak rt"));
    }   
}