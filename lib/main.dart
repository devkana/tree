import 'package:flutter/material.dart';
import './home.dart';
import './location.dart';
import './man.dart';
import './settings.dart';
import './favorite.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int index = 0;
  final screen = [HomePage(), Location(), Favorite(), Settings(), Man()];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 40),
      Icon(Icons.search, size: 40),
      Icon(Icons.favorite, size: 40),
      Icon(Icons.settings, size: 40),
      Icon(Icons.person, size: 40),
    ];

    return Scaffold(
      extendBody: true,
      //backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text('Nav bar'),
      //   elevation: 0,
      //   centerTitle: true,
      // ),
      body: screen[index],

      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.white),
          ),
          child: CurvedNavigationBar(
            color: Colors.black, // ЦВЕТ NAV BAR
            buttonBackgroundColor: Colors.green, // БЕЛЛЫЕ КНОПКА ПРИ НАЖАТИИ

            backgroundColor: Colors.transparent, // ДЕЛЕАЕТ ПОХОЖЕ С BODY
            height: 50, // heigh nav app bar
            index: index,
            items: items,
            onTap: (index) => setState(() => this.index = index),
          )),
    );
  }
}


// <span class="mTLOB Szr5J coreSpriteVerifiedBadge " title="Подтвержденный">Подтвержденный</span>
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// void main() => runApp(MaterialApp(home: BottomNavBar()));

// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _page = 0;
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: const Text('Just do it !!!',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 30.0,
//                   fontStyle: FontStyle.italic)),
//           centerTitle: true,
//         ),
//         bottomNavigationBar: CurvedNavigationBar(
//           key: _bottomNavigationKey,
//           index: 1,
//           height: 55.0,
//           items: <Widget>[
//            Icon(
//             Icons.home,size: 30,  ),
            
//             Icon(Icons.book, size: 30, title:),

//             Icon(Icons.location_on, size: 30),
//             Icon(Icons.headset, size: 30),
//             Icon(Icons.perm_identity, size: 30),
//           ],
//           color: Colors.white,
//           buttonBackgroundColor: Colors.white,
//           backgroundColor: Colors.blueAccent,
//           animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 500),
//           onTap: (index) {
//             setState(() {
//               _page = index;
//             });
//           },
//           letIndexChange: (index) => true,
//         ),
//         body: Container(
//           color: Colors.blueAccent,
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(_page.toString(), textScaleFactor: 10.0),
//                 ElevatedButton(
//                   child: Text('Go To Page of index 1'),
//                   onPressed: () {
//                     final CurvedNavigationBarState? navBarState =
//                         _bottomNavigationKey.currentState;
//                     navBarState?.setPage(2);
//                   },
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
