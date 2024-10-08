
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
      body:const Row(
        
      mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          Icon(
            Icons.ac_unit_sharp,
            size: 100,
            color: Colors.cyan,
          ),
          Icon(
            Icons.import_contacts,
            size: 100,
            color: Colors.orange,
          ),
          Icon(
            Icons.integration_instructions,
            size: 100,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
