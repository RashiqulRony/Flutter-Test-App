import 'package:flutter/material.dart';
import 'package:untitled/screen/imagewidget.dart';

class NavigatorPageWidget extends StatefulWidget {
  NavigatorPageWidget({Key? key}) : super(key: key);

  @override
  State<NavigatorPageWidget> createState() => _NavigatorPageWidgetState();
}

class _NavigatorPageWidgetState extends State<NavigatorPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        centerTitle: true,
      ),

      body: Center(
        child: ElevatedButton(
          child: Text("Page 1"),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(280, 80),
            textStyle: TextStyle(fontSize: 25),
            primary: Colors.green,
            onPrimary: Colors.white,
          ), 
          onPressed: () { 
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  Page2Widget(
              data: "This data get from page 1"
            )));
          },
        ),
      ),
    );
  }
}

class Page2Widget extends StatefulWidget {
  var data;
  Page2Widget({this.data, Key? key}) : super(key: key);

  @override
  State<Page2Widget> createState() => _Page2WidgetState();
}

class _Page2WidgetState extends State<Page2Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        centerTitle: true,
      ),

      body: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          ElevatedButton(
          child: Text("Go to Image"),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(280, 80),
            textStyle: TextStyle(fontSize: 25),
            primary: Colors.red,
            onPrimary: Colors.white,
          ), 
          onPressed: () { 
             Navigator.push(context, MaterialPageRoute(builder: (context) =>  NavigatorPageWidget()));
          },
        
        ),

        SizedBox(height: 10),
        Text(widget.data)
      ]),
    );
  }
}