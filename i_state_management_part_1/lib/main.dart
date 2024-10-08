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

TextEditingController inputController = new TextEditingController();
String text ="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: inputController,
            decoration: InputDecoration(
              hintText: "Enter Text : ",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                text = inputController.text;
                print(text);
              });
            },
            child: Text("Submit",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
