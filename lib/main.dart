import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Grid Example",
    home: Scaffold(
      appBar: AppBar(title: Text("Grid Builder"),),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<int> list= [];
  @override
  void initState() {
    for(int i=0;i<=50;i++){
      list.add(i);
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list.length,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder:(BuildContext cst, int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              color: Colors.green,
              child: Text('${list[index]}'),
    ),
          );

    },
    );

  }
}