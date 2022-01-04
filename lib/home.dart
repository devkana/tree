import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Galaxy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Text(
                  'Млечный путь',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          // Icon(
          //   Icons.star,
          //   color: Colors.red[500],
          // ),
          // const Text('41'),
        ],
      ),
    );

    //Color color = Theme.of(context).primaryColor;

    // Widget buttonSection = Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     _buildButtonColumn(color, Icons.call, 'CALL'),
    //     _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    //     _buildButtonColumn(color, Icons.share, 'SHARE'),
    //   ],
    // );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(12),
      child: Text(
        'МЛЕЧНЫЙ ПУТЬ, туманное свечение на ночном небе от миллиардов звезд нашей'
        'В Северном полушарии его удобно наблюдать около полуночи в июле,'
        'в 10 часов вечера в августе или в 8 часов вечера в сентябре, когда '
        'Северный Крест созвездия Лебедь находится вблизи зенита. Следуя взглядом за мерцающей'
        'полосой Млечного Пути на север или северо-восток, мы минуем созвездие'
        'Кассиопеи (в форме буквы W) и движемся в сторону яркой звезды Капелла. За Капеллой можно увидеть,'
        'как менее широкая и яркая часть Млечного Пути проходит чуть восточнее Пояса '
        'Ориона и склоняется к горизонту невдалеке от Сириуса – ярчайшей звезды на небе.',
        style: TextStyle(fontSize: 20, color: Colors.white),
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        extendBody: true,
        // appBar: AppBar(
        //   title: const Text('Flutter layout demo'),
        // ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: const [Colors.blue, Colors.red])),
          child: ListView(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(13.0),
                child: Image.asset(
                  'assets/galaxy.jpg',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),

              titleSection,
              // buttonSection,

              // Center(
              //   child: ElevatedButton(
              //     child: const Text('Open route'),
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const SecondRoute()),
              //       );
              //     },
              //   ),
              // ),
              textSection,

              Center(
                child: ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()),
                    );
                  },
                ),
              ),
              textSection2
            ],
          ),
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.green),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Route"),
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: const [Colors.blue, Colors.red])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/jo.jpg'),
                Text(
                  'Озеро Иссык-Куль - живописнейшее место, в окрестностях которого можно увидеть'
                  'великолепные природные пейзажи. Одним из них является ущелье Джеты-Огуз'
                  '  («Скалы Семи Быков»), расположенное в 30 км к западу от города Каракола'
                  'на северных склонах хребта Терскей Ала-Тоо. Это одна из красивейших '
                  ' достопримечательностей Киргизии, горная долина, образованная рекой Джеты-Огуз,',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  softWrap: true,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Go back!'),
                  ),
                ),
              ],
            )));
  }
}

Widget textSection2 = const Padding(
  padding: EdgeInsets.all(12),
  child: Text(
    '                                                        '
    '                                                        '
    '                                                        '
    '                                                        ',
    style: TextStyle(fontSize: 20, color: Colors.white),
    softWrap: true,
  ),
);
