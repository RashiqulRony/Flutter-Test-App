import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade300,
        title: Text("Button Widget"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 90),
                primary: Colors.green,
                onPrimary: Colors.black,
              ),
              onPressed: () {
                print("Elevated Button Pressed");
              }, 
              child: Text("Elevated Button"),
            ),
            SizedBox(height: 25),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(150, 90),
                primary: Colors.green,
                side: BorderSide(width: 3, color: Colors.green)
              ),
              
              onPressed: () {
                print("Outlined Button Pressed");
              }, 
              child: Text("Outlined Button"),
            
            ),
            SizedBox(height: 25),

            IconButton(
              iconSize: 50,
              onPressed: () {
                print("Icon Button Pressed");
              }, 
              icon: Icon(Icons.settings), 
              color: Colors.blue,
            )
            
          ]
        ),
      ),
    );
  }
}