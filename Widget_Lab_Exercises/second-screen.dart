import 'package:flutter/material.dart';

void main() {
  runApp(SecondApp());
}

class SecondApp extends StatelessWidget {
  const SecondApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(leading: Icon(Icons.arrow_back), actions: [
              Container(
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                      children: [Icon(Icons.search), Text("search product")])),
              Icon(Icons.add),
              Icon(Icons.add)
            ]),
            body: Column(children: [
              Image.asset(""),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("\$8.6"), Icon(Icons.favorite)]),
              Text(
                  "BARDI Smart Light Bulb Lamp Bohlem LED WIFI RGBWW 12W 12 watt Home IoT"),
              Row(children: [
                Text("* 5.0 (354)  |"),
                Text("540 Sale   |"),
                Text("Brooklyn")
              ]),
              SizedBox(height: 10),
              Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text("Variant"),
                    SizedBox(height: 10),
                    Text("Size: XS"),
                    Row(children: [
                      Container(
                          color: Colors.blue,
                          padding: EdgeInsets.all(6),
                          child: Text("XS",
                              style: TextStyle(color: Colors.white))),
                      Container(padding: EdgeInsets.all(6), child: Text("S")),
                      Container(padding: EdgeInsets.all(6), child: Text("M")),
                      Container(padding: EdgeInsets.all(6), child: Text("L")),
                      Container(padding: EdgeInsets.all(6), child: Text("XL")),
                      Container(padding: EdgeInsets.all(6), child: Text("XXL")),
                    ]),
                    Text("Color: Red"),
                    Row(children: [
                      Container(
                          color: Colors.blue,
                          padding: EdgeInsets.all(6),
                          child: Text("Red",
                              style: TextStyle(color: Colors.white))),
                      Container(
                          padding: EdgeInsets.all(6), child: Text("Black")),
                      Container(
                          padding: EdgeInsets.all(6), child: Text("Green")),
                      Container(
                          padding: EdgeInsets.all(6), child: Text("White")),
                      Container(
                          padding: EdgeInsets.all(6), child: Text("Blue")),
                    ]),
                  ])),
              Container(
                  child: Row(children: [
                Icon(Icons.add),
                Expanded(
                    flex: 8,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Add to Shopping Cart")))
              ]))
            ])));
  }
}
