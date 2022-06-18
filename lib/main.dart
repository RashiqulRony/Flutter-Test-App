import 'package:flutter/material.dart';
import 'package:untitled/screen/buttonwidget.dart';
import 'package:untitled/screen/continerwidget.dart';
import 'package:untitled/screen/homepage.dart';
import 'package:untitled/screen/imagewidget.dart';
import 'package:untitled/screen/listviewwidget.dart';
import 'package:untitled/screen/rowcolumn.dart';
import 'package:untitled/screen/scaffoldtext.dart';
import 'package:untitled/screen/textfieldwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
  
        primarySwatch: Colors.blue,
      ),
      // home: Homepage(title: 'This is home page'),
      // home: ScaffoldAndTextWidget(),
      // home: ContinerWidget(),
      // home: RowColumnWidget(),
      // home: ListViewWidget(),
      // home: ImageWidget(),
      // home: ButtonWidget(),
      home: TextFieldWidget(),
    );
  }
}
