import 'package:flutter/material.dart';
import 'package:login_signup/auth_controller.dart';

class HomePage extends StatefulWidget {
String email;
 HomePage({required this.email});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Color(0xffff6633),
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("${this.widget.email}"),
            TextButton(onPressed: (){
              AuthController.instance.logout();
            }, child: Text("LogOut"))
          ],
        ),
      ),
    );
  }
}
