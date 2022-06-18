import 'dart:ui';

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var img1 = "https://images.hdqwalls.com/wallpapers/biker-rider-79.jpg";
    var img2 = "https://wallpaperaccess.com/full/3063.jpg";
    var img3 = "https://wallpapercave.com/wp/wp9140990.jpg";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade400,
        title: Text("Image Widget"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
           Image.network(
            img1, 
            width: 250, 
            height: 250,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loaddingProgress) =>
              loaddingProgress != null ?
              Container(
              width: 250, 
              height: 250,
              child: Center(
                child: CircularProgressIndicator()
              ),
            ) : child,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(img3),
            radius: 150,
          ),
        
          CircleAvatar(
            //backgroundImage: NetworkImage(img3),
            child: ClipOval(
              child: Image.network(
                img3, 
                width: 300, 
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            radius: 150,
          ),
          Image.asset(
            'assets/img2.jpg', 
            width: 250, 
            height: 250,
            fit: BoxFit.cover,
          ),
          CircleAvatar(
            //backgroundImage: NetworkImage(img3),
            child: ClipOval(
              child: Image.asset(
                'assets/img1.jpg', 
                width: 300, 
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            radius: 150,
          ),
        ]
      )
    );
  }
}