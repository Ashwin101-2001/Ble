import 'dart:convert';

import 'package:csv/csv.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<List<dynamic>> x= [["NAME","id"],["Ash",1]];

  Future<bool> onWill()
  {
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWill,
      child: Scaffold(
        body: Row(
          children: [
            Center(child: ElevatedButton(
                onPressed: ()
                { DeviceApps.openApp('com.mi.android.globallauncher');



                },
                child: Text('abc',style: TextStyle(color: Colors.red,fontSize:40),))),
          ],


        ),

      ),
    );
  }
}
