import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: new Color(0xff6200ee),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Colored Chips
  Container myColoredChips(String chipName) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        child: Text(
          chipName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () {},
      ),
    ));
  }

  //Grey Chips
  Container myChips(String chipName) {
    return Container(
      child: ElevatedButton(
        child: Text(
          chipName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  //Divider
  Container categoryDivider() {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          FontAwesomeIcons.times,
          color: Colors.white,
        ),
        title: Text("Filter results"),
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.ellipsisV),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Column(
        children: <Widget>[
          //Offer heading
          Container(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Abjad',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),

          //Chips
          Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            runSpacing: 5.0,
            children: <Widget>[
              myChips("A"),
              myChips("B"),
              myChips("C"),
              myChips("D"),
              myChips("E"),
              myChips("F"),
              myChips("G"),
              myChips("H"),
              myChips("I"),
              myChips("J"),
              myChips("K"),
              myChips("L"),
              myChips("M"),
              myChips("N"),
              myChips("O"),
              myChips("P"),
              myChips("Q"),
              myChips("R"),
              myChips("S"),
              myChips("T"),
              myChips("U"),
              myChips("V"),
              myChips("w"),
              myChips("X"),
              myChips("Y"),
              myChips("Z"),
            ],
          ),

          categoryDivider(),
        ],
      ),
    );
  }
}
