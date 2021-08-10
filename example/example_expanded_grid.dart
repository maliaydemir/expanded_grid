import 'package:expanded_grid/expanded_grid.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpandedGridDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Expanded Grid Demo',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title),),
        body: ExpandedGrid(
          crossAxisCount: 2,
          children: [
            Container(
              key: GlobalKey(),
              color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.red,
                  child: Center(
                      child: Text(
                        'TEST TEST',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      )),
                ),
              ),
            ),
            Icon(
              Icons.edit,
              size: 150,
            ),
            Icon(Icons.refresh),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.blue,
            ),
            Icon(Icons.delete),
            Icon(Icons.refresh),
            Container(
              color: Colors.green,
            ),
          ],
        ));
  }

}

