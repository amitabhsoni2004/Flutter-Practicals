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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap:() {
            print("OnTap clicked");
          },
          onDoubleTap: () {
            print("OnDoubleTap clicked");
          },
          onLongPress: () {
            print("OnLongPress clicked");
          },
          child: Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(15),
              border: Border.all()
            ),
            child: Center(
              child: Text("Click me",style: TextStyle(color: Colors.black,fontSize: 20), ),
            ),
          ),
        ),
      ),
    );
  }
}
