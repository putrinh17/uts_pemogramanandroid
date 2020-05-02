import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => new _AddDataState();
}

class _AddDataState extends State<AddData> {



TextEditingController controllerName = new TextEditingController();
TextEditingController controllerPrice = new TextEditingController();


void addData(){
  var url="https://munir.galih.pw/xphone_rianti/add_phone.php";

  http.post(url, body: {
    "phone_name": controllerName.text,
    "price": controllerPrice.text,
  });
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green[200/],
        title: new Text("Tambah Daftar Handphone"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerName,
                  decoration: new InputDecoration(
                      hintText: "Merek Handphone", labelText: "Merek Handphone"),
                ),
                new TextField(
                  controller: controllerPrice,
                  decoration: new InputDecoration(
                      hintText: "Harga", labelText: "Harga"),
                      keyboardType: TextInputType.number,
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new RaisedButton(
                  child: new Text("ADD DATA"),
                  color: Colors.green[300],
                  onPressed: () {
                    addData();
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
