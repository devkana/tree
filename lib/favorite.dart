import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: buildRow());
  }

  Widget buildRow() =>
      // #docregion Row
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset('assets/pic1.jpg'),
          ),
          SizedBox(
            //flex: 3,
            width: 500,
            height: 200,
            child: Image.asset('assets/pic2.jpg'),
          ),
          Expanded(
            child: Image.asset('assets/pic3.jpg'),
          ),
        ],
      );
  // #enddocregion Row

  Widget buildColumn() =>
      // #docregion Column
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/pic1.jpg'),
          Image.asset('assets/pic2.jpg'),
          Image.asset('assets/pic3.jpg'),
        ],
      );
}
