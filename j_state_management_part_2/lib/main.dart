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

TextEditingController controllerText = new TextEditingController();
String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: controllerText,
            decoration:InputDecoration(
              hintText: "Enter a Text :",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                text = controllerText.text;
                // print(text);
              });
            },
            child: Text("Submit",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Text('$text',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
