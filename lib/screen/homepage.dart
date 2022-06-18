import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var icons = CupertinoIcons.heart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ron App'),
          backgroundColor: Color.fromARGB(253, 0, 202, 192),
          centerTitle: true,
        ),

        body: Center(
          child: IconButton(
            iconSize: 200,
            onPressed: () {
              setState(() {
                 icons = CupertinoIcons.heart_fill;
              });
               
                print('Hello Test');
            },
            icon: Icon(
              icons,
              color:  Color.fromARGB(253, 0, 202, 192),
            ),
          ),
        ),
    );
  }
}