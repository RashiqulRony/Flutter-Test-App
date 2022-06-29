import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({ Key? key }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  final TextEditingController controller = TextEditingController();
  String password = '';
  bool obscure = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Text Field Widget"),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          TextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
              hintText: "test@test.com",
              prefixIcon: Icon(Icons.people),
              suffixIcon: controller.text.isEmpty ? Container(width: 0) : IconButton(
                onPressed: (){
                  controller.clear();
                }, 
                icon: Icon(Icons.clear)
              )
            ),
        ),

        SizedBox(height: 25),

        TextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            //controller: controller,
            onChanged: (value) {
              setState(() {
                 password = value;
              });
             
              print(password);
            },
            obscureText: obscure,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
              errorText: "Password is weak",
              prefixIcon: Icon(Icons.people),
              suffixIcon: IconButton(onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              }, icon: obscure ? Icon(Icons.visibility) : Icon(Icons.visibility_off),)
            ),
        ),
        SizedBox(height: 10),
        Text(password),
        // SizedBox(height: 25),
        // TextField(
        //   controller: controller,
        //     decoration: InputDecoration(
        //       border: OutlineInputBorder(),
        //       labelText: "Email",
        //       hintText: "test@test.com",
        //       prefixIcon: Icon(Icons.mail),
        //       suffixIcon: controller.text.isEmpty ? Container(width: 0) : IconButton(onPressed: (){
        //         controller.clear();
        //       }, icon: Icon(Icons.clear))
        //     ),
        // ),

        // SizedBox(height: 25),
        // TextField(
        //   controller: controller,
        //     decoration: InputDecoration(
        //       border: OutlineInputBorder(),
        //       labelText: "Phone",
        //       hintText: "0100000000",
        //       prefixIcon: Icon(Icons.phone),
        //       suffixIcon: controller.text.isEmpty ? Container(width: 0) : IconButton(onPressed: (){
        //         controller.clear();
        //       }, icon: Icon(Icons.clear))
        //     ),
        // ),

        // SizedBox(height: 25),
        // TextField(
        //   controller: controller,
        //     decoration: InputDecoration(
        //       border: OutlineInputBorder(),
        //       labelText: "Password",
        //       prefixIcon: Icon(Icons.password),
        //       suffixIcon: controller.text.isEmpty ? Container(width: 0) : IconButton(onPressed: (){
        //         controller.clear();
        //       }, icon: Icon(Icons.remove_red_eye))
        //     ),
        // ),

        // SizedBox(height: 25),
        // TextField(
        //   controller: controller,
        //     decoration: InputDecoration(
        //       border: OutlineInputBorder(),
        //       labelText: "Confirm Password",
        //       prefixIcon: Icon(Icons.password),
        //       suffixIcon: controller.text.isEmpty ? Container(width: 0) : IconButton(onPressed: (){
        //         controller.clear();
        //       }, icon: Icon(Icons.remove_red_eye))
        //     ),
        // ),

        //  SizedBox(height: 25),

        //     OutlinedButton(
        //       style: OutlinedButton.styleFrom(
        //         minimumSize: Size(100, 50),
        //         primary: Colors.green,
        //         side: BorderSide(width: 2, color: Colors.green)
        //       ),
            
        //       onPressed: () {
        //         print("Outlined Button Pressed");
        //       }, 
        //       child: Text("Submit"),
            
        //     ),
      ]),
    );
  }
}