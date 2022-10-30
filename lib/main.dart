import 'package:flutter/material.dart';
import 'components/GridView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    if(_counter < 12){
      setState(() {
        _counter++;
      });
    }
  }

  void _decrementCounter() {
    if(_counter != 0 ){
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
            children: [
              Center(child: Container(
                height: 100.0,
                width: 150,
                margin: const EdgeInsets.only(top: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(child: Image(image: AssetImage('assets/logo-fiplus.png',))),
              )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child:   GridViewWidget(counter: _counter),
                ),
              ),
            ]
        ),
      ),

      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => {this._incrementCounter()},
              child: Icon(Icons.add),
              heroTag: "fab1",
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () => {this._decrementCounter()},
              child: Icon(Icons.remove),
              heroTag: "fab2",
            ),
          ]
      )
    );
  }
}

