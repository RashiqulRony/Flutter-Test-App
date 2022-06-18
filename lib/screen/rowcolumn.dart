import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ron App'),
          backgroundColor: Color.fromARGB(253, 0, 202, 192),
          centerTitle: true,
        ),

        body: Container(
          width: double.infinity,
          color: Color.fromARGB(255, 224, 224, 224),
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Text("First"),
              // Text("Second"),
              // Text("Three")

              Container(color: Colors.red, width: 75, height: 100,),
              Container(color: Colors.green, width: 75, height: 100,),
              Container(color: Colors.blue, width: 75, height: 100,),
            ],
          ),
        ),
    );
  }
}