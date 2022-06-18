import 'package:flutter/material.dart';

class ContinerWidget extends StatelessWidget {
  const ContinerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ron APP"),
        centerTitle: true,
        backgroundColor: Colors.red,
        
      ),

      body: InkWell(
        onTap: () {
            print("Pressed");
        },
        child:  Center(
          child: Container(
            // color: Colors.green,
          
            // margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
            padding: EdgeInsets.all(20),
            child: Text("Hello this is test"),
            alignment: Alignment.center,
            //width: 200,
            //height: 100,

            constraints: BoxConstraints(
              minWidth: 10, maxWidth: 100, maxHeight: 100, minHeight: 10
            ),

            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.red, width: 5)
            ),
      ),
        ),
      ),
    );
  }
}