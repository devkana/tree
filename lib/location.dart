import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: const [Colors.blue, Colors.red])),
        child: Center(
          child:
              new Image.asset('assets/til.jpeg', width: 600.0, height: 400.0),
        ));
  }
}
