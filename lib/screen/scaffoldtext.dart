import 'package:flutter/material.dart';

class ScaffoldAndTextWidget extends StatelessWidget {
  const ScaffoldAndTextWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Ron APP"),
        centerTitle: true,
      ),
      body: Center(child: Text("Hello APP", style: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.w900,
        backgroundColor: Colors.blue
      ))),

      drawer: Drawer(),
      
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting")
      ]),
      
    );
  }
}