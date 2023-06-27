import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints:const  BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // ngang
          crossAxisAlignment: CrossAxisAlignment.start, // doc
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Container(
                width: 70,
                height: 70,
                padding:const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const FlutterLogo(),
              ),
            ),
        const    Padding(
              padding:  EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Text("Hello\nWelcom Back", 
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 30),
              ),
            ),
          const  Padding(
              padding:  EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "USERNAME",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15)
                ),
              ),
            ),
          const   Padding(
               padding:  EdgeInsets.fromLTRB(0, 0, 0, 30),
               child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                 children: <Widget>[
                  TextField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "PASSWORD",
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 15)
                    ),
                    ),
                  Text("SHOW",
                  style: TextStyle(color: Colors.blue, fontSize: 13, fontWeight: FontWeight.bold),)
                 ],
               ),
             ),
             Center(child: ElevatedButton(onPressed: (){}, child: Text("Login"),))
          ],
        ),
      ),
    );
  }
}