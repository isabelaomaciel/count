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
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Contador'),
          ),
          body: Container(

              child: Row(
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
        children: [
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Icon(Icons.add)),
            Text(count.toString(),
                style: TextStyle(
                  fontSize: 35,
                )),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                child: Icon(Icons.remove)),
          ]),
    ]);
  }
}
