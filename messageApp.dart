import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Messaging App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Messaging App Interface"),
        ),
        body: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController t1 = TextEditingController();

  List messagesList = [];

  void addMessage(String message) {
    setState(() {
      messagesList.insert(0, message);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
              reverse: true,
              itemCount: messagesList.length,
              itemBuilder: (context, index) => Text(messagesList[index]),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: TextField(
                  onSubmitted: addMessage,
                  controller: t1,
                ),
              ),
              ElevatedButton(
                onPressed: () => addMessage(t1.text),
                child: const Text("Send"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
