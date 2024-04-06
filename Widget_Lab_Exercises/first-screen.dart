
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// void main() {
  runApp( MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Tracker"), centerTitle: true,backgroundColor: Colors.lightBlue,
        leading: Icon(Icons.question_mark),
        actions: [Icon(Icons.doorbell),Icon(Icons.settings)],
      ),
      body: Column(

        children: <Widget>[
          SizedBox(height: 40,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/supra.jpg"),
                    ),
                    Column(
                      children: [
                        Text("Robert Steven"  , style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                        Row(
                          children: [
                            Icon(Icons.car_rental , color: Colors.blue, size: 40,),
                            ElevatedButton(onPressed: (){}, child: Text(
                              "B 2445 UJD | 701887875", style: TextStyle(
                                color: Colors.blue
                            ),
                            )
                            )],
                        )
                      ],
                    ),

                  ],
                ),
                Text("Log out" , style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)]),
          SizedBox(height: 40,),
          Container(
            child: Text("Online | battery : 90%", textAlign: TextAlign.center,),
            width: double.infinity,
            color: Colors.blue,

          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(

                  children: [
                    Icon(Icons.location_city_outlined, color: Colors.blue, size: 40,),
                    SizedBox(height: 10,),
                    Text("Map all devices" , textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ],
          )




        ],
      ),
    ),
  ));

