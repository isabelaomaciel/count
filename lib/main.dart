import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Contador'),
          ),
          body: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Contador()],
          ))),
    );
  }
}

class Contador extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Contador();
}

class _Contador extends State<StatefulWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                child: Icon(Icons.remove)),
            Text(" " + count.toString() + " " ,
                style: TextStyle(
                  fontSize: 35,

                  overflow: TextOverflow.ellipsis,
                )),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Icon(Icons.add)),
          ]),
        ]);
  }
}
