import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lst = List.generate(100, (index) => "$index");
    final cityList = [
      'Dhaka',
      'Rajshahi',
      'Rangpur',
      'Khulna',
      'Chattogram',
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Ron App List View'),
          backgroundColor: Color.fromARGB(253, 0, 202, 192),
          centerTitle: true,
        ),

        // body: ListView(
        //   children: [
        //     ListTile(
        //       title: Text("Rashiqul Rony"),
        //       subtitle: Text("Flutter Developer"),
        //       trailing: Icon(Icons.star, color: Colors.orange,),
        //       leading: CircleAvatar(
        //         backgroundColor: Colors.green.shade700,
        //         child: Text("RR"),
        //       ),
        //     ),
        //     ListTile(
        //       title: Text("Alex Smith"),
        //       subtitle: Text("Web Developer"),
        //        trailing: Icon(Icons.star, color: Colors.orange,),
        //        leading: CircleAvatar(
        //         backgroundColor: Colors.green.shade700,
        //         child: Text("AS"),
        //       ),
        //     ),
            
        //     ListTile(
        //       title: Text("Mr John"),
        //       subtitle: Text("Java Developer"),
        //        trailing: Icon(Icons.star, color: Colors.orange,),
        //        leading: CircleAvatar(
        //         backgroundColor: Colors.green.shade700,
        //         child: Text("MJ"),
        //       ),
        //     ),
        //   ],
        // ),

      body: ListView.separated( 
        separatorBuilder: (context, index) => Divider(color: Colors.grey,),
        itemCount: cityList.length, 
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => {
              print(cityList[index])
            },
              title: Text(cityList[index]),
              subtitle: Text("Area Name"),
               trailing: Icon(Icons.star, color: Colors.orange,),
               leading: CircleAvatar(
                backgroundColor: Colors.green.shade700,
                child: Text(cityList[index][0] + cityList[index][1]),
              ),
            );
      }),

    );
  }
}