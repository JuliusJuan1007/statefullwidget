import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _clickCounter =0;
  void _klikSaya(){
    setState(() {
      _clickCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Click Click"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        child: new Column(
          children: [
            Center(
              child: new Text(
                "Klik Terus",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.w400),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new Text(
                  "$_clickCounter klik",
                  style: TextStyle(
                      color: _clickCounter >10 ? Colors.black54: _clickCounter >5 ? Colors.blueAccent: Colors.redAccent,
                      fontSize: 45,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            new Expanded(
                child: new Center(
                  child: new TextButton(
                      style: TextButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                    ),
              onPressed: _klikSaya,
              child: new Text(
                "Klik Saya",
                style: TextStyle(fontSize: 20),
              ),
            ),
                ))
          ],
        ),
      ),
    );
  }
}
